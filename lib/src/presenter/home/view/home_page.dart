import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:test_abu/src/core/constants.dart';
import 'package:test_abu/src/core/themes.dart';
import 'package:test_abu/src/data/model/attendance/attendance_model.dart';
import 'package:test_abu/src/presenter/app/controller/app_cubit.dart';
import 'package:test_abu/src/presenter/home/controller/home_cubit.dart';
import 'package:test_abu/src/presenter/widget/buttons.dart';

part 'home_attendance_item.dart';
part 'home_header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final appCubit = context.read<AppCubit>();
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: MultiBlocListener(
        listeners: [
          BlocListener<HomeCubit, HomeState>(
            listenWhen: (previous, current) =>
                previous.currentAttendance != current.currentAttendance,
            listener: (context, state) {
              if (state.currentAttendance != null) {
                appCubit.updateAttendance(state.currentAttendance);
              }
            },
          ),
        ],
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            children: [
              const HomeHeader(),
              BlocBuilder<HomeCubit, HomeState>(
                builder: (context, state) {
                  if (state.attendances.isNotEmpty) {
                    return ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      padding:  const EdgeInsets.fromLTRB(14, 24, 14, 20),
                      shrinkWrap: true,
                      primary: false,
                      itemBuilder: (context, index) => HomeAttendanceItem(
                        attendanceModel: state.attendances[index],
                      ),
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: 14),
                      itemCount: state.attendances.length,
                    );
                  }

                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 52),
                    child: const Center(
                      child: Column(
                        children: [
                          Text(
                            'Tidak ada absensi',
                            style: TextStyles.bold20,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
