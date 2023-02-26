/* import 'package:flutter/material.dart';

class Home2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'السيره الذاتيه'
        ),
        backgroundColor: Colors.purple,
      ),

      body:Row(
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.greenAccent,
              ),
              child: Center(child: Text('GestureDetector Button')),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blueGrey,
        child: Container(
          height: 80.0,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

    );
  }
}
Center(
child: SafeArea(
child: SingleChildScrollView(
child:
Column(
crossAxisAlignment: CrossAxisAlignment.center,
children: [
SizedBox(
height: 130.0,
width: 150.0,
),
Image(image:AssetImage( 'images/cvvv.jpeg'),
height: 250.0,
width: 250.0,
fit: BoxFit.cover,
),
SizedBox(
height: 70.0,
),

],
),
),
),
),


 */