part of 'widgets.dart';

class VoteCard extends StatelessWidget {
  final VotingModel votingModel;
  VoteCard({required this.votingModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<VotingProvider>(builder: (context, data, _) {
        return ListView.builder(itemBuilder: ((context, index) {
          return Container(
            child: Card(
              child: ListTile(
                title: Text(''),
              ),
            ),
          );
        }));
      }),
    );
  }
}
