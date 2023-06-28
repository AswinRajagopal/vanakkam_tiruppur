import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TaskApp extends StatefulWidget {
  @override
  _TaskAppState createState() => _TaskAppState();
}

class _TaskAppState extends State<TaskApp> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right:8.0),
                        child: Text('       YOU\'RE \nIN OFFLINE',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 50.0,color: Colors.black),),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Column(
                  children: [
                    Image.asset(
                      'assets/images/offline.png',
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal:40.0,
                          vertical: 18.0,
                        ),
                        child: Text(
                          'Try Again',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
