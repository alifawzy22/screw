import 'package:flutter/material.dart';
import 'package:screw/constance.dart';
import 'package:screw/score_board.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController player1Controller = TextEditingController();
  TextEditingController player2Controller = TextEditingController();
  TextEditingController player3Controller = TextEditingController();
  TextEditingController player4Controller = TextEditingController();
  TextEditingController player5Controller = TextEditingController();
  TextEditingController player6Controller = TextEditingController();
  TextEditingController player7Controller = TextEditingController();
  TextEditingController player8Controller = TextEditingController();

  int numOfPlayersIsAtive = 2;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  List<String> playerNames = [];

  @override
  void dispose() {
    player1Controller.dispose();
    player2Controller.dispose();
    player3Controller.dispose();
    player4Controller.dispose();
    player5Controller.dispose();
    player6Controller.dispose();
    player7Controller.dispose();
    player8Controller.dispose();
    super.dispose();
  }

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
            onPressed: () {},
            icon: const Icon(
              Icons.pan_tool_outlined,
              color: Colors.white,
              size: 20,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 12),
        child: Form(
          key: formKey,
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              const Text(
                'Swipe to Choose Number of Players',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AppColor.kNumOfPlayers,
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                  //borderRadius: BorderRadius.circular(16),
                ),
                margin: const EdgeInsets.symmetric(vertical: 16),
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          numOfPlayersIsAtive = 2;
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                          color: numOfPlayersIsAtive == 2
                              ? AppColor.kActiveNumOfPlayers
                              : AppColor.kNumOfPlayers,
                        ),
                        child: const Text(
                          '2 Player',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          numOfPlayersIsAtive = 3;
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                          color: numOfPlayersIsAtive == 3
                              ? AppColor.kActiveNumOfPlayers
                              : AppColor.kNumOfPlayers,
                        ),
                        child: const Text(
                          '3 Player',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          numOfPlayersIsAtive = 4;
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                          color: numOfPlayersIsAtive == 4
                              ? AppColor.kActiveNumOfPlayers
                              : AppColor.kNumOfPlayers,
                        ),
                        child: const Text(
                          '4 Player',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          numOfPlayersIsAtive = 5;
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                          color: numOfPlayersIsAtive == 5
                              ? AppColor.kActiveNumOfPlayers
                              : AppColor.kNumOfPlayers,
                        ),
                        child: const Text(
                          '5 Player',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          numOfPlayersIsAtive = 6;
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                          color: numOfPlayersIsAtive == 6
                              ? AppColor.kActiveNumOfPlayers
                              : AppColor.kNumOfPlayers,
                        ),
                        child: const Text(
                          '6 Player',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          numOfPlayersIsAtive = 7;
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                          color: numOfPlayersIsAtive == 7
                              ? AppColor.kActiveNumOfPlayers
                              : AppColor.kNumOfPlayers,
                        ),
                        child: const Text(
                          '7 Player',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          numOfPlayersIsAtive = 8;
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                          color: numOfPlayersIsAtive == 8
                              ? AppColor.kActiveNumOfPlayers
                              : AppColor.kNumOfPlayers,
                        ),
                        child: const Text(
                          '8 Player',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Center(
                child: Text(
                  'Please Enter Names',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                autovalidateMode: autovalidateMode,
                cursorColor: Colors.white,
                autocorrect: true,
                controller: player1Controller,
                decoration: InputDecoration(
                  label: const Text('Player One'),
                  labelStyle: const TextStyle(color: Colors.white),
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
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: Colors.red,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: AppColor.kBorderColor,
                    ),
                  ),
                ),
                keyboardType: TextInputType.text,
                maxLines: 2,
                minLines: 1,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please Enter Your Name';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                autovalidateMode: autovalidateMode,
                cursorColor: Colors.white,
                autocorrect: true,
                controller: player2Controller,
                decoration: InputDecoration(
                  label: const Text('Player Two'),
                  labelStyle: const TextStyle(color: Colors.white),
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
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: Colors.red,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: AppColor.kBorderColor,
                    ),
                  ),
                ),
                keyboardType: TextInputType.text,
                maxLines: 2,
                minLines: 1,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please Enter Your Name';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 8,
              ),
              numOfPlayersIsAtive < 3
                  ? Container()
                  : TextFormField(
                      autovalidateMode: autovalidateMode,
                      cursorColor: Colors.white,
                      autocorrect: true,
                      controller: player3Controller,
                      decoration: InputDecoration(
                        label: const Text('Player Three'),
                        labelStyle: const TextStyle(color: Colors.white),
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
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Colors.red,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: AppColor.kBorderColor,
                          ),
                        ),
                      ),
                      keyboardType: TextInputType.text,
                      maxLines: 2,
                      minLines: 1,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter Your Name';
                        }
                        return null;
                      },
                    ),
              numOfPlayersIsAtive < 3
                  ? Container()
                  : const SizedBox(
                      height: 8,
                    ),
              numOfPlayersIsAtive < 4
                  ? Container()
                  : TextFormField(
                      autovalidateMode: autovalidateMode,
                      cursorColor: Colors.white,
                      autocorrect: true,
                      controller: player4Controller,
                      decoration: InputDecoration(
                        label: const Text('Player Four'),
                        labelStyle: const TextStyle(color: Colors.white),
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
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Colors.red,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: AppColor.kBorderColor,
                          ),
                        ),
                      ),
                      keyboardType: TextInputType.text,
                      maxLines: 2,
                      minLines: 1,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter Your Name';
                        }
                        return null;
                      },
                    ),
              numOfPlayersIsAtive < 4
                  ? Container()
                  : const SizedBox(
                      height: 8,
                    ),
              numOfPlayersIsAtive < 5
                  ? Container()
                  : TextFormField(
                      autovalidateMode: autovalidateMode,
                      cursorColor: Colors.white,
                      autocorrect: true,
                      controller: player5Controller,
                      decoration: InputDecoration(
                        label: const Text('Player Five'),
                        labelStyle: const TextStyle(color: Colors.white),
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
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Colors.red,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: AppColor.kBorderColor,
                          ),
                        ),
                      ),
                      keyboardType: TextInputType.text,
                      maxLines: 2,
                      minLines: 1,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter Your Name';
                        }
                        return null;
                      },
                    ),
              numOfPlayersIsAtive < 5
                  ? Container()
                  : const SizedBox(
                      height: 8,
                    ),
              numOfPlayersIsAtive < 6
                  ? Container()
                  : TextFormField(
                      autovalidateMode: autovalidateMode,
                      cursorColor: Colors.white,
                      autocorrect: true,
                      controller: player6Controller,
                      decoration: InputDecoration(
                        label: const Text('Player Six'),
                        labelStyle: const TextStyle(color: Colors.white),
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
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Colors.red,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: AppColor.kBorderColor,
                          ),
                        ),
                      ),
                      keyboardType: TextInputType.text,
                      maxLines: 2,
                      minLines: 1,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter Your Name';
                        }
                        return null;
                      },
                    ),
              numOfPlayersIsAtive < 6
                  ? Container()
                  : const SizedBox(
                      height: 8,
                    ),
              numOfPlayersIsAtive < 7
                  ? Container()
                  : TextFormField(
                      autovalidateMode: autovalidateMode,
                      cursorColor: Colors.white,
                      autocorrect: true,
                      controller: player7Controller,
                      decoration: InputDecoration(
                        label: const Text('Player Seven'),
                        labelStyle: const TextStyle(color: Colors.white),
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
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Colors.red,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: AppColor.kBorderColor,
                          ),
                        ),
                      ),
                      keyboardType: TextInputType.text,
                      maxLines: 2,
                      minLines: 1,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter Your Name';
                        }
                        return null;
                      },
                    ),
              numOfPlayersIsAtive < 7
                  ? Container()
                  : const SizedBox(
                      height: 8,
                    ),
              numOfPlayersIsAtive < 8
                  ? Container()
                  : TextFormField(
                      autovalidateMode: autovalidateMode,
                      cursorColor: Colors.white,
                      autocorrect: true,
                      controller: player8Controller,
                      decoration: InputDecoration(
                        label: const Text('Player Eight'),
                        labelStyle: const TextStyle(color: Colors.white),
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
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Colors.red,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: AppColor.kBorderColor,
                          ),
                        ),
                      ),
                      keyboardType: TextInputType.text,
                      maxLines: 2,
                      minLines: 1,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter Your Name';
                        }
                        return null;
                      },
                    ),
              const SizedBox(
                height: 8,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(AppColor.kAppBarColor),
                ),
                onPressed: () {
                  bool validate = formKey.currentState!.validate();
                  if (validate) {
                    numOfPlayersIsAtive == 2
                        ? playerNames = [
                            player1Controller.text,
                            player2Controller.text
                          ]
                        : numOfPlayersIsAtive == 3
                            ? playerNames = [
                                player1Controller.text,
                                player2Controller.text,
                                player3Controller.text
                              ]
                            : numOfPlayersIsAtive == 4
                                ? playerNames = [
                                    player1Controller.text,
                                    player2Controller.text,
                                    player3Controller.text,
                                    player4Controller.text
                                  ]
                                : numOfPlayersIsAtive == 5
                                    ? playerNames = [
                                        player1Controller.text,
                                        player2Controller.text,
                                        player3Controller.text,
                                        player4Controller.text,
                                        player5Controller.text
                                      ]
                                    : numOfPlayersIsAtive == 6
                                        ? playerNames = [
                                            player1Controller.text,
                                            player2Controller.text,
                                            player3Controller.text,
                                            player4Controller.text,
                                            player5Controller.text,
                                            player6Controller.text
                                          ]
                                        : numOfPlayersIsAtive == 7
                                            ? playerNames = [
                                                player1Controller.text,
                                                player2Controller.text,
                                                player3Controller.text,
                                                player4Controller.text,
                                                player5Controller.text,
                                                player6Controller.text,
                                                player7Controller.text
                                              ]
                                            : playerNames = [
                                                player1Controller.text,
                                                player2Controller.text,
                                                player3Controller.text,
                                                player4Controller.text,
                                                player5Controller.text,
                                                player6Controller.text,
                                                player7Controller.text,
                                                player8Controller.text
                                              ];

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ScoreBoard(
                          numOfPlayers: numOfPlayersIsAtive,
                          playersNames: playerNames,
                        ),
                      ),
                    );
                  } else {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
                child: const Text(
                  'Go to the Scoreboard Screen',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
