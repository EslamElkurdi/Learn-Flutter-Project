import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newtest/modules/cubit/cubit.dart';
import 'package:newtest/modules/cubit/states.dart';
import 'package:newtest/modules/home_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});


  @override
  Widget build(BuildContext context) {
    int count = 19;
    return BlocConsumer<AppCubit, LearnAppStates>(
      listener: (context, state) {},
      builder: (context, state)
      {
       return Scaffold(
         //appBar: AppBar(),
         appBar: AppBar(
           leading: IconButton(
             onPressed: () {
               AppCubit.get(context).arrow(context);
             },
             icon:const Icon(
                 Icons.arrow_back_ios
             ),
           ),

           title:const Text('Profile'),
         ),
         body: ListView.builder(
           itemBuilder: (context, index){
             return ListTile(
               title: Text('item ${index+1}'),
               leading: const Icon(Icons.person),
               trailing: const Icon(Icons.favorite_border),
             );
           },
           itemCount: count,
         ),
       );
      },
    );
  }
}
