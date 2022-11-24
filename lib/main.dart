import 'package:flutter/material.dart';
import 'package:ui_design/views/expense_bill_report.dart';
import 'package:ui_design/views/expense_bill_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(backgroundColor: Color(0xff383737)),
        scaffoldBackgroundColor: Color(0xff383737),
      ),
      home: const ExpenseBillReportScreen(),
    );
  }
}
