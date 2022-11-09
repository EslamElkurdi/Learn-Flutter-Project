import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newtest/modules/cubit/cubit.dart';
import 'package:newtest/modules/cubit/states.dart';
import 'package:newtest/modules/learn_flutter.dart';





class MyHomePage extends StatelessWidget {

  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, LearnAppStates>(
      listener: (context, state) {},
      builder: (context, state)
      {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              'Flutter',
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: ()
                  {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context)
                        {
                          return LearnFlutter();
                        }
                    ));
                  },
                  color: Colors.blue,
                  child: const Text(
                    'Learn Flutter',
                    style: TextStyle(color: Colors.white, fontSize: 17.0),
                  ),
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home, size: 35.0), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person, size: 35.0), label: "Profile"),
            ],
            onTap: (int index) {
              AppCubit.get(context).changeCurrent(context,index);
            },
            currentIndex: AppCubit.get(context).currentPage,
            elevation: 20.0,
            backgroundColor: Colors.grey[300],
            unselectedItemColor: Colors.black,
          ),
        );
      },
    );
  }


}


