part of 'widgets.dart';

class LogoCard extends StatelessWidget {
  final PemiraModel pemiraModel;

  LogoCard({required this.pemiraModel});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.to(() => Count(
            id: pemiraModel.ormawa!.id ?? 1,
            pemira: pemiraModel,
          )),
      child: Column(
        children: [
          Icon(
            Icons.bar_chart_rounded,
            color: mainColor,
          ),
          Text(
            pemiraModel.ormawa!.label ?? '',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),

          Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
              height: 70,
              width: 70,
              child: Card(
                // color: pemiraModel.voting == null ? null : Colors.green,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: CachedNetworkImage(
                      imageUrl: pemiraModel.ormawa?.logo ?? '',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                elevation: 5,
              ),
            ),
          ),

          // SizedBox(
          //   height: 10,
          // ),
          // Text('567')
        ],
      ),
    );
  }
}
