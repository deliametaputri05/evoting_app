part of 'widgets.dart';

class LabelCard extends StatelessWidget {
  final PemiraModel pemiraModel;

  LabelCard({required this.pemiraModel});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        // color: pemiraModel.voting == null ? null : Colors.green,
        child: Padding(
          padding: const EdgeInsets.all(2),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: Text(
                  pemiraModel.ormawa?.label ?? '',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Icon(
                pemiraModel.voting == null
                    ? Icons.check_box_outline_blank
                    : Icons.check_box,
                color: mainColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
