part of 'home_page.dart';

class HomeAttendanceItem extends StatelessWidget {
  const HomeAttendanceItem({super.key, required this.attendanceModel});

  final AttendanceModel attendanceModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              offset: Offset.zero,
              color: Colors.black12,
              blurRadius: 16,
            ),
          ]),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            kDateTimeFormat.format(attendanceModel.date),
            style: TextStyles.bold16,
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 10,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.black12,
                width: 2,
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                    child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('Absen Masuk', style: TextStyles.regular14),
                    const SizedBox(height: 10),
                    Text(
                      attendanceModel.checkIn == null
                          ? 'Belum Absen'
                          : kDateTimeTimeFormat
                              .format(attendanceModel.checkIn!.dateTime),
                      style: TextStyles.bold16.copyWith(
                        color: attendanceModel.checkIn == null
                            ? Colors.red
                            : Colors.black,
                      ),
                    ),
                  ],
                )),
                Container(
                  color: Colors.grey,
                  width: 2,
                  height: 42,
                ),
                Expanded(
                    child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Absen Keluar',
                      style: TextStyles.regular14,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      attendanceModel.checkOut == null
                          ? 'Belum Absen'
                          : kDateTimeTimeFormat
                              .format(attendanceModel.checkOut!.dateTime),
                      style: TextStyles.bold16.copyWith(
                        color: attendanceModel.checkOut == null
                            ? Colors.red
                            : Colors.black,
                      ),
                    ),
                  ],
                )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
