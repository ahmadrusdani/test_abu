part of 'home_page.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<HomeCubit>();
    return Container(
      padding: const EdgeInsets.fromLTRB(24, 42, 24, 24),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(42)),
        color: Colors.blue,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Ahmad Rusdani',
              style: TextStyles.bold20.copyWith(color: Colors.white)),
          Text('Mobile Developer',
              style: TextStyles.regular14.copyWith(color: Colors.white)),
          const SizedBox(height: 14),
          Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white),
            child: BlocBuilder<HomeCubit, HomeState>(
              builder: (context, state) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      state.attendanceTitle,
                      style: TextStyles.bold16,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      '08:30 - 17:30',
                      style: TextStyles.bold32,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    PrimaryButton(
                      onPressed: state.isMustCheckIn || state.isMustCheckOut
                          ? () async {
                              final result = await context.push('/attendance');
                              if (result is AttendanceItemModel) {
                                if (state.isMustCheckIn) {
                                  cubit.updateAttendanceIn(result);
                                  return;
                                }

                                if (state.isMustCheckOut) {
                                  cubit.updateAttendanceOut(result);
                                  return;
                                }
                              }
                            }
                          : null,
                      child: Text(state.buttonLabel),
                    ),
                    // Row(
                    //   mainAxisSize: MainAxisSize.max,
                    //   children: [
                    //     Expanded(
                    //         child: PrimaryButton(
                    //       onPressed: state.currentAttendance?.checkIn != null
                    //           ? null
                    //           : () async {
                    //               final result =
                    //                   await context.push('/attendance');
                    //               if (result is AttendanceItemModel) {
                    //                 cubit.updateAttendanceIn(result);
                    //               }
                    //             },
                    //       child: const Text('Check-In'),
                    //     )),
                    //     const SizedBox(width: 14),
                    //     Expanded(
                    //         child: PrimaryButton(
                    //       onPressed: state.currentAttendance?.checkIn == null ||
                    //               state.currentAttendance?.checkOut != null
                    //           ? null
                    //           : () async {
                    //               final result =
                    //                   await context.push('/attendance');
                    //               if (result is AttendanceItemModel) {
                    //                 cubit.updateAttendanceOut(result);
                    //               }
                    //             },
                    //       child: const Text(
                    //         'Check-Out',
                    //       ),
                    //     )),
                    //   ],
                    // )
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
