import 'package:flutter/material.dart';
import 'package:ui_design/views/expense_bill_screen.dart';

class ExpenseBillReportScreen extends StatefulWidget {
  const ExpenseBillReportScreen({Key? key}) : super(key: key);

  @override
  State<ExpenseBillReportScreen> createState() =>
      _ExpenseBillReportScreenState();
}

class _ExpenseBillReportScreenState extends State<ExpenseBillReportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back,
          size: 25,
          color: Colors.white,
        ),
        centerTitle: true,
        title: const Text('Expense Bill Report'),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ExpenseBillScreen(),
                ),
              );
            },
            child: const Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.add,
                size: 25,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (_, index) => Column(
            children: [
              Card(
                elevation: 5,
                shadowColor: Colors.blue,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                clipBehavior: Clip.antiAlias,
                child: ExpansionTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            '24 Nov 2022',
                            style: TextStyle(
                              fontSize: 18,
                              //color: Color(0xff074974),
                            ),
                          ),
                          Text(
                            'Conv No: 002145',
                            style: TextStyle(
                              fontSize: 18,
                              //color: Color(0xff074974),
                            ),
                          ),
                          //Text(" ${snapshot.data![index].status}")
                        ],
                      ),
                      const Text(
                        'Status ',
                        style:
                            TextStyle(fontSize: 18, fontWeight: FontWeight.bold
                                //color: Color(0xff074974),
                                ),
                      )
                    ],
                  ),
                  expandedCrossAxisAlignment: CrossAxisAlignment.start,
                  expandedAlignment: Alignment.centerLeft,
                  childrenPadding: const EdgeInsets.only(left: 10, top: 10),
                  children: const <Widget>[
                    Text(
                      'Dhaka to Gazipur',
                      style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold,
                        //color: Color(0xff074974),
                      ),
                    ),
                    Text(
                      '20 Nov 2022 TO 23 Nov 2022',
                      style: TextStyle(
                        fontSize: 15,
                        //color: Color(0xff074974),
                      ),
                    ),
                    Text(
                      'Sales Force App presentation',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold
                          //color: Color(0xff074974),
                          ),
                    ),
                    Text(
                      '1200 TK',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Uber Bill and CNG Bill',
                      style: TextStyle(
                        fontSize: 18,
                        //color: Color(0xff074974),
                      ),
                    ),
                    Text(
                      'Status: Confirmed',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        //color: Color(0xff074974),
                      ),
                    ),
                    Text(
                      'Approved/Recommended By: ABCD',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold
                          //color: Color(0xff074974),
                          ),
                    ),
                    Text(
                      'Approved By: ',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold
                          //color: Color(0xff074974),
                          ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
