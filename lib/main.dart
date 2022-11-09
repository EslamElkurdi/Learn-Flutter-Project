import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newtest/modules/cubit/cubit.dart';
import 'package:newtest/modules/cubit/states.dart';
import 'package:newtest/modules/profile_page.dart';
import 'modules/home_page.dart';

void main() {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  List<Widget> pages = const [
    MyHomePage(),
    ProfilePage()
  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (BuildContext context) => AppCubit()
        )
      ],
      child: BlocConsumer<AppCubit, LearnAppStates>(
        listener: (context, state){},
        builder: (context, state)
        {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home:const MyHomePage(),
          );
        },
      )
    );
  }
}


