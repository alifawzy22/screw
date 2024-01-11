import 'package:flutter/material.dart';
import 'package:screw/constance.dart';
import 'package:screw/models/player_model.dart';

class ScoreBoard extends StatefulWidget {
  final int numOfPlayers;
  final List<String> playersNames;
  const ScoreBoard(
      {super.key, required this.numOfPlayers, required this.playersNames});

  @override
  State<ScoreBoard> createState() => _ScoreBoardState();
}

class _ScoreBoardState extends State<ScoreBoard> {
  List<DataRow> dataRowList = [];
  // int player1 = 0,
  //     player2 = 0,
  //     player3 = 0,
  //     player4 = 0,
  //     player5 = 0,
  //     player6 = 0,
  //     player7 = 0,
  //     player8 = 0;
  List<PlayerModel> playerModelList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'فلسطين حرة',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () async {
              await showModalBottomSheet(
                  backgroundColor: AppColor.kPrimaryColor,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                  ),
                  context: context,
                  builder: (context) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 8),
                      child: ListView(
                        children: [
                          GridView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 5,
                              mainAxisSpacing: 0,
                              childAspectRatio: 5 / 2,
                            ),
                            itemCount: widget.playersNames.length,
                            itemBuilder: (BuildContext context, int index) {
                              return TextFormField(
                                cursorColor: Colors.white,
                                autocorrect: true,
                                decoration: InputDecoration(
                                  label: Text(widget.playersNames[index]),
                                  labelStyle:
                                      const TextStyle(color: Colors.white),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: const BorderSide(
                                      color: AppColor.kBorderColor,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: const BorderSide(
                                      color: AppColor.kBorderColor,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: const BorderSide(
                                      color: AppColor.kBorderColor,
                                    ),
                                  ),
                                ),
                                keyboardType: TextInputType.number,
                                maxLines: 1,
                                minLines: 1,
                                onSaved: (newValue) {
                                  playerModelList.add(
                                    PlayerModel(
                                      playerName: widget.playersNames[index],
                                      score: int.parse(newValue ?? '0'),
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  AppColor.kAppBarColor),
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Add',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  AppColor.kAppBarColor),
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Double x2',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  AppColor.kAppBarColor),
                            ),
                            onPressed: () {},
                            child: const Text(
                              'إحذف أخر جوله',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  });
            },
            icon: const Icon(
              Icons.add,
              color: Colors.white,
              size: 20,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.refresh,
              color: Colors.white,
              size: 20,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 18,
          ),
          const Center(
            child: Text(
              'Swipe to See Other Results',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: DataTable(
                  columns: widget.playersNames
                      .map((e) => DataColumn(label: Text(e)))
                      .toList(),
                  rows: dataRowList,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
