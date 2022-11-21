import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:ui_design/widgets/custom_row_buttons.dart';
import 'package:ui_design/widgets/debit_credit_table_body.dart';
import 'package:ui_design/widgets/total_debit_credit_field.dart';

class UIScreen extends StatefulWidget {
  const UIScreen({Key? key}) : super(key: key);

  @override
  State<UIScreen> createState() => _UIScreenState();
}

class _UIScreenState extends State<UIScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu_outlined,
          color: Colors.white.withOpacity(0.5),
        ),
        /*backgroundColor: Color(0xff1E1E1E),*/
        centerTitle: true,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'JV: 00021425',
              style:
                  TextStyle(fontSize: 20, color: Colors.white.withOpacity(0.5)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 25,
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 5),
              padding: EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                  color: Colors.lightGreen.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(8)),
              child: Text(
                "Balanced",
                style: TextStyle(fontSize: 12, color: Color(0xffccff33)),
              ),
            )
          ],
        ),
        actions: [
          Stack(
            alignment: Alignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white.withOpacity(0.3),
                  ),
                  child: const Icon(
                    Icons.notifications,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
              ),
              Positioned(
                right: 8,
                top: 3,
                child: Text(
                  '5',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              )
            ],
          )
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Stack(
                      children: [
                        Container(
                          height: 50,
                          width: 180,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Center(
                            child: Text(
                              "Debit",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Stack(
                      children: [
                        Container(
                          height: 50,
                          width: 180,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Center(
                            child: Text(
                              "Credit",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 180,
                      padding: EdgeInsets.only(
                        top: 10,
                        left: 10,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(20.0)),
                      child: const Reusable_debit_credit_table_body(),
                    ),
                    Container(
                      width: 180,
                      padding: EdgeInsets.only(
                        top: 10,
                        left: 10,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Reusable_debit_credit_table_body(),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Total_DebitCreditField(),
              const SizedBox(
                height: 20,
              ),
              const Custom_RowButtons(),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
