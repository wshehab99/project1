import 'package:flutter/material.dart';
import '../../models/user/user.dart';

class UsersScreen extends StatelessWidget {
  List<UserModel> users = [
    UserModel(
      id: '1',
      name: 'Mina Yasser',
      phone: '+201159091340',
    ),
    UserModel(
      id: '2',
      name: 'Mariem Yasser',
      phone: '+201159651340',
    ),
    UserModel(
      id: '3',
      name: 'Nermin Yasser',
      phone: '+201249091340',
    ),
    UserModel(
      id: '4',
      name: 'Martina Yasser',
      phone: '+201247091340',
    ),
    UserModel(
      id: '1',
      name: 'Mina Yasser',
      phone: '+201159091340',
    ),
    UserModel(
      id: '2',
      name: 'Mariem Yasser',
      phone: '+201159651340',
    ),
    UserModel(
      id: '3',
      name: 'Nermin Yasser',
      phone: '+201249091340',
    ),
    UserModel(
      id: '4',
      name: 'Martina Yasser',
      phone: '+201247091340',
    ),
    UserModel(
      id: '1',
      name: 'Mina Yasser',
      phone: '+201159091340',
    ),
    UserModel(
      id: '2',
      name: 'Mariem Yasser',
      phone: '+201159651340',
    ),
    UserModel(
      id: '3',
      name: 'Nermin Yasser',
      phone: '+201249091340',
    ),
    UserModel(
      id: '4',
      name: 'Martina Yasser',
      phone: '+201247091340',
    ),
    UserModel(
      id: '1',
      name: 'Mina Yasser',
      phone: '+201159091340',
    ),
    UserModel(
      id: '2',
      name: 'Mariem Yasser',
      phone: '+201159651340',
    ),
    UserModel(
      id: '3',
      name: 'Nermin Yasser',
      phone: '+201249091340',
    ),
    UserModel(
      id: '4',
      name: 'Martina Yasser',
      phone: '+201247091340',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Users'),
        centerTitle: true,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => buildUserItems(users[index]),
        separatorBuilder: (context, index) => Padding(
          padding: const EdgeInsetsDirectional.only(
            start: 20.0,
          ),
          child: Container(
            width: double.infinity,
            height: 1.0,
            color: Colors.grey[300],
          ),
        ),
        itemCount: users.length,
      ),
    );
  }

  Widget buildUserItems(UserModel user) => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              child: Text(
                '${user.id}',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              width: 13.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '${user.name}',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '${user.phone}',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            )
          ],
        ),
      );
}
