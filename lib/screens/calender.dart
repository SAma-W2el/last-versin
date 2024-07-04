import 'package:flutter/material.dart';

class Calender extends StatefulWidget {
  const Calender({super.key});

  @override
  State<Calender> createState() => _CalenderState();
}

TextEditingController date1 = TextEditingController();

class _CalenderState extends State<Calender> {
  int index = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // leading: const BackButton(color: Color(0xFF295c82)),
        title: const Text(
          "Calender",
        ),
      ),
      body: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Center(
                child: Image(
                  image: AssetImage("images/date.png"),
                  height: 250,
                  width: 250,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "you can check the products you entered on a specific date.",
                  style: TextStyle(color: Color(0xFF295c82), fontSize: 19),
                ),
              ),
              SizedBox(
                height: 80,
                width: 400,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: date1,
                    decoration: const InputDecoration(
                        icon: Icon(Icons.calendar_today),
                        labelText: "The Date "),
                    onTap: () async {
                      DateTime? pickeddate1 = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2100));
                      if (pickeddate1 != null) {
                        setState(() {
                          date1.text = pickeddate1.toString().split(" ")[0];
                        });
                      }
                    },
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
