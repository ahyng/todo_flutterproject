import 'package:flutter/material.dart';
import 'package:todo_flutterproject/addPage.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "To do",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        elevation: 5,
        backgroundColor: const Color.fromARGB(255, 202, 176, 229),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            TodoList("todos"),
            TodoList("todos"),
            TodoList("todos"),
            TodoList("todos"),
            TodoList("todos"),
            TodoList("todos"),
            TodoList("todos"),
            TodoList("todos"),
            TodoList("todos"),
            TodoList("todos"),
            TodoList("todos"),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 15.0, 8.0, 15.0),
        child: Container(
          decoration: const BoxDecoration(
              //shape: BoxShape.circle,

              ),
          child: IconButton(
            icon: const Icon(
              Icons.add,
              color: Colors.white,
            ),
            style: IconButton.styleFrom(
              minimumSize: const Size.fromHeight(50),
              backgroundColor: const Color.fromARGB(255, 202, 176, 229),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (BuildContext context) {
                  return const addList();
                }),
              );
            },
            iconSize: 30,
          ),
        ),
      ),
    );
  }
}

class TodoList extends StatelessWidget {
  late final String todo;
  TodoList(String todo, {super.key}) {
    this.todo = todo;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        padding: const EdgeInsets.all(10),
        //color: const Color.fromARGB(255, 244, 244, 244),
        decoration: BoxDecoration(
            border: Border.all(
          width: 1.2,
          color: const Color.fromARGB(255, 170, 129, 214),
        )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Checkbox(value: false, onChanged: null),
            Text(
              todo,
              style: const TextStyle(
                fontSize: 25,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.delete,
                color: Color.fromARGB(255, 108, 108, 108),
              ),
              style: IconButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 235, 235, 235),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
