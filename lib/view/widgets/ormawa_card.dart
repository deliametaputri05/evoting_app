part of 'widgets.dart';

class OrmawaCard extends StatelessWidget {
  final OrmawaModel ormawaModel;

  OrmawaCard({required this.ormawaModel});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.to(() => OrmawaPage(
            ormawa: ormawaModel,
          )),
      child: Container(
        height: 70,
        width: 70,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: CachedNetworkImage(
                imageUrl: ormawaModel.logo ?? '',
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
    );
  }
}
