import 'package:flutter/material.dart';

class SessionFour extends StatefulWidget {
  const SessionFour({super.key});

  @override
  State<SessionFour> createState() => _SessionFourState();
}

class _SessionFourState extends State<SessionFour> {
  List<Map<String, dynamic>> gridListData = [
    {
      "title": "A",
      "name": "Aisha Falak",
    },
    {
      "title": "M",
      "name": "Muhammad Hadi",
    },
    {
      "title": "M",
      "name": "Mysterious Girl",
    },
    {
      "title": "K",
      "name": "Kashif Ali",
    },
    {
      "title": "Z",
      "name": "Zain Jut",
    },
    {
      "title": "A",
      "name": "Afshan Faraz",
    },
    {
      "title": "M",
      "name": "Muhammad Hassam",
    },
    {
      "title": "M",
      "name": "Muhammad Shakir",
    },
  ];

  bool oldValue = false;
  bool switchValue = false;
  String groupValue = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Floating Action Button");
        },
        child: const Icon(Icons.add),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 400,
              child: GridView.builder(
                itemCount: gridListData.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1,
                  crossAxisSpacing: 10,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              color: Colors.blueGrey, shape: BoxShape.circle),
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Text(
                              gridListData[index]["title"],
                              style: const TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 16.0),
                              child: Text(
                                gridListData[index]["name"],
                                style: const TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 20,
                                    color: Colors.white),
                              ),
                            ))
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          Checkbox(
              activeColor: Colors.white,
              checkColor: Colors.black,
              value: oldValue,
              onChanged: (newValue) {
                setState(() {
                  oldValue = newValue!;
                });
              }),
          Switch(
              activeColor: Colors.white,
              thumbColor: WidgetStateProperty.resolveWith<Color>(
                  (Set<WidgetState> states) {
                if (states.contains(WidgetState.disabled)) {
                  return Colors.orange.withOpacity(.48);
                }
                return Colors.orange;
              }),
              inactiveTrackColor: Colors.white,
              activeTrackColor: Colors.blue,
              value: switchValue,
              onChanged: (newValue) {
                setState(() {
                  switchValue = newValue;
                });
              }),
          Row(
            children: [
              Radio(
                  value: "option 1",
                  groupValue: groupValue,
                  onChanged: (newValue) {
                    setState(() {
                      groupValue = newValue!;
                    });
                  }),
              Text(
                "Male",
                style: TextStyle(
                  fontSize: 24,
                ),
              )
            ],
          ),
          Row(
            children: [
              Radio(
                  value: "option 2",
                  groupValue: groupValue,
                  onChanged: (newValue) {
                    setState(() {
                      groupValue = newValue!;
                    });
                  }),
              Text(
                "Male",
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Radio(
                value: "option 3",
                groupValue: groupValue,
                onChanged: (newValue) {
                  setState(() {
                    groupValue = newValue!;
                  });

                },
              ),
              Text(
                "Other",
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
