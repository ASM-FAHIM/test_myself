import 'package:flutter/material.dart';
import 'package:ui_design/controller/test_controller.dart';
import 'package:get/get.dart';

class TestScreen extends StatelessWidget {
  bool isVisible;
  int value;

  TestScreen({Key? key, required this.isVisible, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    TestController test = Get.put(TestController());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_outlined,
            size: 30,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        title: Text('TestScreen'),
        actions: [
          Icon(
            Icons.logout_outlined,
            size: 30,
            color: Colors.black,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Obx(() => Visibility(
                    visible: test.increment.value == 0 ? false : true,
                    child: Container(
                      height: 100,
                      width: 400,
                      color: Colors.blue,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              test.decrementFunc();
                            },
                            child: Icon(
                              Icons.remove,
                              size: 40,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            '${test.increment}(Sina)',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 40),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          GestureDetector(
                            onTap: () {
                              test.incrementFunc();
                            },
                            child: Icon(
                              Icons.add,
                              size: 40,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
              Visibility(
                visible: value == 0 ? false : true,
                child: Container(
                  height: 100,
                  width: 400,
                  color: Colors.blue,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          test.decrementFunc();
                        },
                        child: Icon(
                          Icons.remove,
                          size: 40,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        '${test.increment}(Fahim)',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 40),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          test.incrementFunc();
                        },
                        child: Icon(
                          Icons.add,
                          size: 40,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Visibility(
                visible: test.increment.value == 0 ? false : true,
                child: Container(
                  height: 100,
                  width: 400,
                  color: Colors.blue,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          test.decrementFunc();
                        },
                        child: Icon(
                          Icons.remove,
                          size: 40,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        '${test.increment}(Monyeem)',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 40),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          test.incrementFunc();
                        },
                        child: Icon(
                          Icons.add,
                          size: 40,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Visibility(
                visible: test.increment.value == 0 ? false : true,
                child: Container(
                  height: 100,
                  width: 400,
                  color: Colors.blue,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          test.decrementFunc();
                        },
                        child: Icon(
                          Icons.remove,
                          size: 40,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        '${test.increment}(Raad)',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 40),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          test.incrementFunc();
                        },
                        child: Icon(
                          Icons.add,
                          size: 40,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
