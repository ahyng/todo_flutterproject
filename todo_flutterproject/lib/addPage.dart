import 'package:flutter/material.dart';

class addList extends StatelessWidget {
  const addList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "할 일 추가",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          elevation: 5,
          backgroundColor: const Color.fromARGB(255, 202, 176, 229),
          centerTitle: true,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 177, 139, 217),
                        width: 1.5,
                      ),
                    ),
                    labelText: '입력',
                    floatingLabelBehavior: FloatingLabelBehavior.never),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 2.0, 8.0, 2.0),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    backgroundColor: const Color.fromARGB(255, 233, 216, 250),
                  ),
                  child: const Text(
                    "추가",
                    style: TextStyle(
                      //color: Colors.white,
                      fontSize: 15,
                    ),
                  )),
            ),
          ],
        ));
  }
}
