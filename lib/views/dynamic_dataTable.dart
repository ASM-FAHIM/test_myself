import 'package:flutter/material.dart';

class DynamicDataTable extends StatefulWidget {
  const DynamicDataTable({Key? key}) : super(key: key);

  @override
  State<DynamicDataTable> createState() => _DynamicDataTableState();
}

class _DynamicDataTableState extends State<DynamicDataTable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_outlined,
            size: 30,
            color: Color(0xff074974),
          ),
        ),
      ),
      body: Container(),
    );
  }
}
