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
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (_, index) => Column(
            children: [
              Card(
                elevation: 5,
                shadowColor: Colors.blue,
                color: Colors.white,
                margin: const EdgeInsets.symmetric(vertical: 10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                clipBehavior: Clip.hardEdge,
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
                                fontSize: 15, fontWeight: FontWeight.bold
                                //color: Color(0xff074974),
                                ),
                          ),
                          Text(
                            'Conv No: 002145',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold
                                //color: Color(0xff074974),
                                ),
                          ),
                          Text(
                            '1200 TK',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold
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
                  tilePadding: const EdgeInsets.only(
                      left: 20, top: 10, bottom: 10, right: 10),
                  expandedCrossAxisAlignment: CrossAxisAlignment.start,
                  expandedAlignment: Alignment.centerLeft,
                  childrenPadding: const EdgeInsets.only(left: 10, top: 20),
                  textColor: Colors.red.withOpacity(0.7),
                  iconColor: Colors.red.withOpacity(0.7),
                  collapsedTextColor: Colors.black,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Dhaka to Gazipur',
                          style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold,
                            //color: Color(0xff074974),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Text(
                            '20 Nov - 23 Nov',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold
                                //color: Color(0xff074974),
                                ),
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      'Sales Force App presentation',
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold
                          //color: Color(0xff074974),
                          ),
                    ),
                    const Text(
                      'Uber Bill and CNG Bill',
                      style: TextStyle(
                        fontSize: 15,
                        //color: Color(0xff074974),
                      ),
                    ),
                    const Text(
                      '1200 TK',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                    const Text(
                      'Status: Confirmed',
                      style: TextStyle(
                        fontSize: 15,
                        //color: Color(0xff074974),
                      ),
                    ),
                    Container(
                      width: 400,
                      child: Text(
                        'Approved/Recommended By: Mahmudul Hasan Soikot',
                        style:
                            TextStyle(fontSize: 15, fontWeight: FontWeight.bold
                                //color: Color(0xff074974),
                                ),
                      ),
                    ),
                    Container(
                      width: 400,
                      child: Text(
                        'Approved By: Abul Kalam Azad',
                        style:
                            TextStyle(fontSize: 15, fontWeight: FontWeight.bold
                                //color: Color(0xff074974),
                                ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
          padding: const EdgeInsets.symmetric(horizontal: 10),
        ),
      ),
    );
  }
}
