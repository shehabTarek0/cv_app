import 'package:cv_app/cubit/cubit.dart';
import 'package:cv_app/cubit/states.dart';
import 'package:cv_app/model/data_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'fourthroute_screen.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      builder: (context, state) {
        if (AppCubit.get(context).dataFromJson != null) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.purple,
              title: const Text('سيرة الذاتية'),
              actions: [
                // Navigate to the Search Screen
                IconButton(
                    onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => const SearchPage())),
                    icon: const Icon(Icons.search))
              ],
            ),
            body: buildItem(AppCubit.get(context).dataFromJson!.data),
          );
        } else {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.purple,
              title: const Text('سيرة الذاتية'),
              actions: [
                // Navigate to the Search Screen
                IconButton(
                    onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => const SearchPage())),
                    icon: const Icon(Icons.search))
              ],
            ),
            body: const Center(child: CircularProgressIndicator()),
          );
        }
      },
      listener: (context, state) {},
    );
  }

  Widget buildItem(List<Data>? data) => Padding(
        padding: const EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: data!.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                _navigateToFourthRoute(context, index);
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 35.0,
                      backgroundImage: NetworkImage('${data[index].image}'),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text('${data[index].name}'),
                  ],
                ),
              ),
            );
          },
        ),
      );

  void _navigateToFourthRoute(BuildContext context, int index) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => FourthRoute(index)));
  }
//1.build item
//2.build list
//3.add item to list
}

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        // The search area here
        title: const SizedBox(
          width: double.infinity,
          height: 40,
        ),
      ),
      body: Container(
        margin: const EdgeInsets.fromLTRB(16, 16, 16, 16),
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.search),
            hintText: 'JOb',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(
                color: Colors.purple,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
