import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:go_router/go_router.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:test_abu/src/core/themes.dart';
import 'package:test_abu/src/data/model/attendance/attendance_model.dart';
import 'package:test_abu/src/presenter/attendance/controller/attendance_cubit.dart';
import 'package:test_abu/src/presenter/widget/buttons.dart';

class AttendancePage extends StatefulWidget {
  const AttendancePage({super.key});

  @override
  State<AttendancePage> createState() => _AttendancePageState();
}

class _AttendancePageState extends State<AttendancePage> with OSMMixinObserver {
  late MapController mapController;

  @override
  void initState() {
    super.initState();
    mapController = MapController.withUserPosition(
      areaLimit: _getBoundingBox(),
      trackUserLocation: const UserTrackingOption(
        enableTracking: true,
        unFollowUser: false,
      ),
    );
    mapController.addObserver(this);
  }

  @override
  void dispose() {
    mapController.removeObserver(this);
    super.dispose();
  }

  @override
  void onLocationChanged(GeoPoint userLocation) {
    super.onLocationChanged(userLocation);
    mapController.goToLocation(userLocation);
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AttendanceCubit>();
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white, // ✅ Change back button color here
        ),
        title: Text(
          'Absen',
          style: TextStyles.bold20.copyWith(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: MultiBlocListener(
        listeners: [
          BlocListener<AttendanceCubit, AttendanceState>(
            listenWhen: (previous, current) =>
                previous.initLocation != current.initLocation,
            listener: (context, state) async {
              if (state.initLocation != null) {
                await mapController.addMarker(
                  state.initLocation!,
                  markerIcon: const MarkerIcon(
                    icon: Icon(
                      Icons.location_city,
                      color: Colors.red,
                      size: 42,
                    ),
                  ),
                );

                await mapController.drawCircle(
                  CircleOSM(
                    key: "radius_circle",
                    centerPoint: state.initLocation!,
                    radius: 100,
                    color: Colors.greenAccent.withOpacity(0.3),
                    strokeWidth: 2.0,
                  ),
                );
              }
            },
          ),
          BlocListener<AttendanceCubit, AttendanceState>(
            listenWhen: (previous, current) =>
                previous.currentLocation != current.currentLocation,
            listener: (context, state) async {
              final zoomArea = cubit.zoomToRegion();
              final zoomDistance = await cubit.calculateZoomLevel();
              if (state.currentLocation != null && zoomArea != null) {
                final zoomLevel = await mapController.getZoom();
                if (zoomLevel < 10) {
                  await mapController.zoomToBoundingBox(_getBoundingBox());
                }
                await mapController.goToLocation(zoomArea);

                await Future.delayed(
                  const Duration(seconds: 1),
                  () async {
                    await mapController.setZoom(
                        zoomLevel: zoomDistance.toDouble());
                  },
                );

                await mapController.addMarker(
                  state.currentLocation!,
                  markerIcon: const MarkerIcon(
                    icon: Icon(
                      Icons.location_history,
                      color: Colors.orange,
                      size: 42,
                    ),
                  ),
                );
              }
            },
          ),
          BlocListener<AttendanceCubit, AttendanceState>(
            listenWhen: (previous, current) =>
                previous.previousLocation != current.previousLocation,
            listener: (context, state) async {
              if (state.previousLocation != null) {
                await mapController.removeMarker(
                  state.previousLocation!,
                );
              }
            },
          )
        ],
        child: Stack(
          children: [
            OSMFlutter(
                controller: mapController,
                onMapIsReady: (isReady) async {
                  cubit.initLocation();
                  await _getCurrentLocation();
                },
                osmOption: OSMOption(
                  userTrackingOption: const UserTrackingOption(
                    enableTracking: true,
                    unFollowUser: false,
                  ),
                  zoomOption: const ZoomOption(
                    initZoom: 3,
                    minZoomLevel: 5,
                    maxZoomLevel: 19,
                    stepZoom: 1.0,
                  ),
                  userLocationMarker: UserLocationMaker(
                    personMarker: const MarkerIcon(
                      icon: Icon(
                        Icons.location_history_rounded,
                        color: Colors.red,
                        size: 48,
                      ),
                    ),
                    directionArrowMarker: const MarkerIcon(
                      icon: Icon(
                        Icons.double_arrow,
                        color: Colors.transparent,
                        size: 48,
                      ),
                    ),
                  ),
                  roadConfiguration: const RoadOption(
                    roadColor: Colors.yellowAccent,
                  ),
                  markerOption: MarkerOption(
                      defaultMarker: const MarkerIcon(
                    icon: Icon(
                      Icons.person_pin_circle,
                      color: Colors.blue,
                      size: 56,
                    ),
                  )),
                )),
            BlocBuilder<AttendanceCubit, AttendanceState>(
              buildWhen: (previous, current) =>
                  previous.initLocation != current.initLocation,
              builder: (context, state) {
                if (state.initLocation == null) {
                  return const SizedBox.shrink();
                }
                return Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: const EdgeInsets.only(left: 20),
                        child: FloatingActionButton(
                          child: const Icon(Icons.my_location),
                          onPressed: () async => _getCurrentLocation(),
                        ),
                      ),
                      const SizedBox(height: 20),
                      BlocBuilder<AttendanceCubit, AttendanceState>(
                          buildWhen: (previous, current) =>
                              previous.currentLocation !=
                              current.currentLocation,
                          builder: (context, state) {
                            return Container(
                              width: double.infinity,
                              padding: const EdgeInsets.all(14),
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(20)),
                                color: Colors.white,
                              ),
                              child: PrimaryButton(
                                onPressed: state.currentLocation == null
                                    ? null
                                    : () async {
                                        cubit
                                            .isNearOfficeLocation()
                                            .then((isNear) {
                                          if (!isNear) {
                                            showSnackBar();
                                            return;
                                          }
                                          context.pop(AttendanceItemModel(
                                            dateTime: DateTime.now(),
                                            latitude:
                                                state.currentLocation!.latitude,
                                            longitude: state
                                                .currentLocation!.longitude,
                                          ));
                                        });
                                      },
                                child: const Text('Absen Sekarang'),
                              ),
                            );
                          }),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _getCurrentLocation() async {
    final cubit = context.read<AttendanceCubit>();
    var status = await Permission.location.request();
    if (status.isGranted) {
      await mapController.enableTracking(enableStopFollow: false);
      final myLocation = await mapController.myLocation();
      debugPrint('myLocation: $myLocation');
      cubit.updateCurrentLocation(myLocation);
    } else {
      debugPrint("Location permission denied");
    }
  }

  BoundingBox _getBoundingBox() {
    return BoundingBox(
      north: 6.0763,
      south: -11.0087,
      west: 95.0110,
      east: 141.0333,
    );
  }

  void showSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Lokasi Anda terlalu jauh dari kantor!'),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.blue,
      ),
    );
  }

  @override
  Future<void> mapIsReady(bool isReady) async {
    debugPrint('isReady: $isReady');
  }
}
