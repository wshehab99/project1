import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
        ),
        title: Text('The Frist App'),
        actions: [
          IconButton(
            onPressed: noNotification,
            icon: Icon(
              Icons.notification_important,
            ),
          ),
          IconButton(
            onPressed: () {
              print('waiting please ...');
            },
            icon: Icon(
              Icons.search,
            ),
          ),
        ],
        backgroundColor: Colors.teal,
        centerTitle: true,
        elevation: 20.0,
      ),
      body: Column(
        children: [
          Padding(
              padding: const EdgeInsets.all(70.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.only(
                    topStart: Radius.circular(20.0),
                  ),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image(
                      image: NetworkImage(
                          'https://cnn-arabic-images.cnn.io/cloudinary/image/upload/w_1920,h_1080,c_fill,q_auto/cnnarabic/2022/01/31/images/203734.jpg'),
                      width: 200.0,
                      height: 150.0,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      color: Colors.black.withOpacity(0.4),
                      width: 200.0,
                      padding: EdgeInsets.symmetric(
                        vertical: 10.0,
                      ),
                      child: Text(
                        'barck way',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

Future<void> noNotification() async => print('you clicked there');
