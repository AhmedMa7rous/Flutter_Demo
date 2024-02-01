import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(
          Icons.arrow_back,
          size: 30,
          color: Colors.white,
        ), onPressed: onPressBack,),
        title: Text(
          'Home',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white
          ),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        actions: [
           IconButton(icon: Icon(
              Icons.search,
              size: 30,
              color: Colors.white,
            ), onPressed: onPressSearch,),
            IconButton(icon: Icon(
              Icons.notifications,
              size: 30,
              color: Colors.white,
            ), onPressed: onPressNotifications,),

        ],
        backgroundColor: Colors.black54,
      ),
      body: Container(
        color: Colors.grey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Text(
                'Hello World!'
              ),
            ),
            Container(
              child: Text(
                  'Ahmed'
              ),
            ),
            Container(
              child: Text(
                  'Mahrous'
              ),
            ),
            Container(
              child: Text(
                  'Metwally'
              ),
            ),
            Container(
              child: Text(
                  'Thanks'
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onPressSearch() {
    print('Search Pressed!');
  }

  void onPressNotifications() {
    print('Notifications Pressed!');
  }

  void onPressBack() {
    print('Back Pressed!');
  }
}