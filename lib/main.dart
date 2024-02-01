import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Snack Bar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Snack Bar'),
        backgroundColor: Colors.indigoAccent,),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Center(

                child: TextButton(onPressed: () {
                  Get.snackbar("Snackbar", "This is a msg",
                  snackPosition: SnackPosition.BOTTOM,
                  icon: Icon(
                    Icons.send,
                    color: Colors.lightBlueAccent,
                  ),
                  shouldIconPulse: true,
                  mainButton:  TextButton(
                  style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.indigoAccent,
                  padding: const EdgeInsets.all(16.0),
                  textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                  child: const Text('Gradient'),
                  ),
                  onTap: (val){
                    print('hi');
                  });

                },

                  child: Text('Show snackbar'),

                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

