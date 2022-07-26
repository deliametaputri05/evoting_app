part of 'widgets.dart';

class LogoCard extends StatelessWidget {
  final PemiraModel pemiraModel;

  LogoCard({required this.pemiraModel});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      child: Card(
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
    );
  }
}
