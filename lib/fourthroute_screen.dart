// ignore_for_file: must_be_immutable

import 'package:cv_app/constants.dart';
import 'package:cv_app/cubit/cubit.dart';
import 'package:cv_app/cubit/states.dart';
import 'package:cv_app/model/data_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/* void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/fourth': (context) => FourthRoute(),
      '/fifth': (context) => const FifthRoute(),
      '/sixth': (context) => const SixthRoute(),
      '/seventh': (context) => const SeventhRoute(),
    },
  )); //MaterialApp
} */

class FourthRoute extends StatelessWidget {
  const FourthRoute(this.index, {Key? key}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
        builder: (context, state) => Scaffold(
              appBar: AppBar(
                leading: Builder(builder: (BuildContext context) {
                  return IconButton(
                    icon: const Icon(Icons.menu),
                    onPressed: () {},
                  );
                }),
                title: const Text("Flutter App"),
                actions: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {},
                  ),
                ],
              ),
              body: bulidItemInfo(
                  context, AppCubit.get(context).dataFromJson!.data![index]),
            ),
        listener: (context, state) {}); // Scaffold
  }
}

Widget bulidItemInfo(context, Data data) => Center(
      child: Container(
        constraints: const BoxConstraints.expand(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 70.0,
              backgroundImage: NetworkImage("${data.image}"),
            ),
            Text(
              '${data.name}',
              style: const TextStyle(
                fontFamily: 'Orpheus',
                fontSize: 35.0,
                color: Colors.blueGrey,
                fontWeight: FontWeight.normal,
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            const Text(
              'ABOUT ME',
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                color: Color.fromARGB(255, 0, 7, 10),
                fontSize: 17.0,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {
                navigatorTo(context, FifthRoute(data));
              },
              icon: const Icon(
                // <-- Icon
                Icons.account_box,
              ),
              label: const Text('PERSONAL INFORMATION'), // <-- Text
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black87,
                backgroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 8),
              ),
            ),
            const SizedBox(
              height: 10,
            ), // ElevatedButton
            ElevatedButton.icon(
              onPressed: () {
                navigatorTo(context, SeventhRoute(data));
              },
              icon: const Icon(
                // <-- Icon
                Icons.laptop,
              ),
              label: const Text('PERSONAL EXPERIENCE'), // <-- Text
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black87,
                backgroundColor: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 13, vertical: 8),
              ),
            ), // ElevatedButton
            const Padding(padding: EdgeInsets.only(top: 40)),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
              icon: const Icon(
                // <-- Icon
                Icons.logout,
              ),
              label: const Text('Logout'), // <-- Text
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.redAccent,
                padding:
                    const EdgeInsets.symmetric(horizontal: 21, vertical: 5),
              ),
            ), // ElevatedButton
          ],
        ),
      ),
    );

class FifthRoute extends StatelessWidget {
  FifthRoute(this.data, {Key? key}) : super(key: key);
  Data data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Information"),
        backgroundColor: Colors.blueGrey,
      ), // AppBar
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
              margin:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: const Icon(
                  Icons.account_box,
                  color: Colors.blueGrey,
                ),
                title: Text(
                  'Name: ${data.name}',
                  style: const TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontFamily: 'Source Sans Pro',
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
            Card(
              margin:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: const Icon(
                  Icons.account_box,
                  color: Colors.blueGrey,
                ),
                title: Text(
                  'Nationality: ${data.nationality}',
                  style: const TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontFamily: 'Source Sans Pro',
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
            Card(
              margin:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: const Icon(
                  Icons.account_box,
                  color: Colors.blueGrey,
                ),
                title: Text(
                  'Birth_day: ${data.birthDay}',
                  style: const TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontFamily: 'Source Sans Pro',
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
            Card(
              margin:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: const Icon(
                  Icons.account_box,
                  color: Colors.blueGrey,
                ),
                title: Text(
                  'Age: ${data.age}  \nWeight: ${data.weight}',
                  style: const TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontFamily: 'Source Sans Pro',
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
            Card(
              margin:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: const Icon(
                  Icons.account_box,
                  color: Colors.blueGrey,
                ),
                title: Text(
                  'Educational_level: ${data.educationalLevel}',
                  style: const TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontFamily: 'Source Sans Pro',
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
            Card(
              margin:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: const Icon(
                  Icons.account_box,
                  color: Colors.blueGrey,
                ),
                title: Text(
                  'Languages: ${data.languages}',
                  style: const TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontFamily: 'Source Sans Pro',
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
            Card(
              margin:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: const Icon(
                  Icons.account_box,
                  color: Colors.blueGrey,
                ),
                title: Text(
                  'Religion: ${data.religion}',
                  style: const TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontFamily: 'Source Sans Pro',
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
            Card(
              margin:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: const Icon(
                  Icons.account_box,
                  color: Colors.blueGrey,
                ),
                title: Text(
                  'Social_situation: ${data.socialSituation} \nNumber_of_children: ${data.numberOfChildren} ',
                  style: const TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontFamily: 'Source Sans Pro',
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
/*             Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.account_box,
                  color: Colors.blueGrey,
                ),
                title: Text(
                  'Address: Ambonao, Calasiao, Pangasinan' +
                      '\nContact No.: +639504663145' +
                      '\nEmail: calachanjovet@gmail.com',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontFamily: 'Source Sans Pro',
                    fontSize: 18.0,
                  ),
                ),
              ),
            ), */
          ],
        ),
      ), // Center
    ); // Scaffold
  }
}

class SeventhRoute extends StatelessWidget {
  SeventhRoute(this.data, {Key? key}) : super(key: key);
  Data data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Background"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
              margin:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
              child: ListTile(
                leading: const Icon(
                  Icons.laptop,
                  color: Colors.blueGrey,
                ),
                title: Text(
                  "Work: ${data.work}",
                  style: const TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            Card(
              margin:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
              child: ListTile(
                leading: const Icon(
                  Icons.laptop,
                  color: Colors.blueGrey,
                ),
                title: Text(
                  "Previous_experience: ${data.previousExperience} \nYear_experience:${data.yearExperience} ",
                  style: const TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            Card(
              margin:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
              child: ListTile(
                leading: const Icon(
                  Icons.laptop,
                  color: Colors.blueGrey,
                ),
                title: Text(
                  "Skills: ${data.skills}",
                  style: const TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

      /// AppBar
    ); // Scaffold
  }
}
