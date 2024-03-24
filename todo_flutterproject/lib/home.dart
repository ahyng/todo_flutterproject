import 'package:flutter/material.dart';
import 'package:todo_flutterproject/addPage.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  List<String> todoList = [];

  @override
  void initState() {
    super.initState();
  }

  void _addNavigation(BuildContext context) async {
    final result = await Navigator.of(context).pushNamed('/add');
    setState(() {
      todoList.add(result as String);
    });
  }

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
      body: ListView.builder(
        itemCount: todoList.length,
        itemBuilder: (context, index) {
          return SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 3,
                ),
                TodoList(todoList[index]),
              ],
            ),
          );
        },
      ),
      // bottomNavigationBar: Padding(
      //   padding: const EdgeInsets.fromLTRB(8.0, 15.0, 8.0, 15.0),
      //   child: Container(
      //     decoration: const BoxDecoration(
      //         //shape: BoxShape.circle,

      //         ),
      //     child: IconButton(
      //       icon: const Icon(
      //         Icons.add,
      //         color: Colors.white,
      //       ),
      //       style: IconButton.styleFrom(
      //         minimumSize: const Size.fromHeight(50),
      //         backgroundColor: const Color.fromARGB(255, 202, 176, 229),
      //         shape: const RoundedRectangleBorder(
      //           borderRadius: BorderRadius.all(Radius.circular(10)),
      //         ),
      //       ),
      //       onPressed: () {
      //         _addNavigation(context);
      //         /**Navigator.of(context).pushNamed('/add');**/
      //       },
      //       iconSize: 30,
      //     ),
      //   ),
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _addNavigation(context);
        },
        child: const Icon(Icons.add),
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
          width: 2,
          color: const Color.fromARGB(255, 206, 185, 229),
        )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Checkbox(value: false, onChanged: null),
            Text(
              todo,
              style: const TextStyle(
                fontSize: 22,
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
