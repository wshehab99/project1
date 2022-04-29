import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

import '../modules/artchite_tasks/done_tasts.dart';
import '../modules/done_tasks/done_tasts.dart';
import '../modules/new_tasks/new_tasts.dart';

class HomeLayout extends StatefulWidget {
  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex = 0;
  List<Widget> screens = [
    NewTasksScreen(),
    doneTasksScreen(),
    architeTasksScreen(),
  ];
  List<String> title = [
    'New Tasks',
    'Done Tasks',
    'Archite Tasks',
  ];
  @override
  void initState() {
    super.initState();
    CreateDatabase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title[currentIndex]),
      ),
      body: screens[currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // try {
          //   var name = await getname();
          //   print(name);
          //   throw ('some error !!!!');
          // } catch (error) {
          //   print('error ${error.toString()}');
          // }
          getname().then((value) {
            print(value);
            print('Sameh');
          }).catchError((error) {
            print('error is ${error.toString()}');
          });
        },
        child: const Icon(
          Icons.add,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.menu_book,
              ),
              label: 'Task',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.check_circle_outline,
              ),
              label: 'Done',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.architecture,
              ),
              label: 'Archite',
            ),
          ]),
    );
  }

  Future<String?> getname() async {
    return "Ahmed Ali";
  }

  Future<void> CreateDatabase() async {
    WidgetsFlutterBinding.ensureInitialized();

    var database = await openDatabase('todo.db', version: 1,
        onCreate: (database, version) async {
      print('create database');
      //id integer
      //title String
      //data String
      //time String
      //status String
      await database
          .execute(
              'CREATE TABLE task (id INTEGER PRIMARY KEY , title TEXT , data TEXT , time TEXT , status TEXT)')
          .then((value) {
        print('create table ');
      }).catchError((error) {
        print('Error When Creating Table ${error.toString()}');
      });
    }, onOpen: (database) {
      print('create database');
    });
  }
}
