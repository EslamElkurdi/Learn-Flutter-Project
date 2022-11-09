import 'package:flutter/material.dart';
import 'package:newtest/modules/cubit/cubit.dart';

class LearnFlutter extends StatelessWidget {



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn Flutter'),
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios)),
        actions:
        [
          IconButton(
              onPressed: (){
                debugPrint('Search Icon');
              },
              icon: const Icon(Icons.search)
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/OIP.jpg'),
            const SizedBox(
              height: 15.0,
            ),
            const Divider(
              height: 8.0,
              color: Colors.black,
            ),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              color: Colors.blue,
              width: double.infinity,
              child: const Center(
                child: Text(
                  'Click Here',
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: AppCubit.get(context).isSwitch ? Colors.blue : Colors.green
              ),

              onPressed: () {
                print('Elevated Button');
              },
              child: const Text(
                  'Elevated Button'
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            OutlinedButton(
                onPressed: (){
                  debugPrint('OutlinedButton!');
                },
                child: const Text('Click Here')
            ),
            const SizedBox(
              height: 15.0,
            ),
            TextButton(onPressed: (){
              debugPrint('Text Button');
            }, child:const Text(
                'Text Button'
            )),
            GestureDetector(
              onTap: ()
              {
                debugPrint('On Tap Gesture Detector');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const
                [
                  Icon(Icons.pedal_bike),
                  SizedBox(
                    width: 10.0,
                  ),
                  Icon(Icons.fire_extinguisher)
                ],
              ),
            ),
            Switch(
                value: AppCubit.get(context).isSwitch,
                onChanged: (bool newValue)
                {
                  AppCubit.get(context).changeIsSwitch(newValue);
                }
            ),
            Checkbox(
                value: AppCubit.get(context).isCheck,
                onChanged: (bool? newValue)
                {
                  AppCubit.get(context).changeIsCheck(newValue);

                }
            ),

          ],
        ),
      ),
    );
  }
}

