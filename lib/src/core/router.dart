import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:test_abu/src/presenter/app/controller/app_cubit.dart';
import 'package:test_abu/src/presenter/attendance/controller/attendance_cubit.dart';
import 'package:test_abu/src/presenter/attendance/view/attendance_page.dart';
import 'package:test_abu/src/presenter/home/controller/home_cubit.dart';
import 'package:test_abu/src/presenter/home/view/home_page.dart';

final routerConfig = GoRouter(
  routes: [
    GoRoute(
        path: '/',
        builder: (context, state) {
          final appCubit = context.read<AppCubit>();
          final attendances = appCubit.state.attendances;
          return BlocProvider(
            create: (context) => HomeCubit(attendances: attendances),
            child: const HomePage(),
          );
        }),
    GoRoute(
        path: '/attendance',
        builder: (context, state) {
          return BlocProvider(
            create: (context) => AttendanceCubit(),
            child: const AttendancePage(),
          );
        }),
  ],
);
