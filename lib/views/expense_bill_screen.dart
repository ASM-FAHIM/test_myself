import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ExpenseBillScreen extends StatefulWidget {
  const ExpenseBillScreen({Key? key}) : super(key: key);

  @override
  State<ExpenseBillScreen> createState() => _ExpenseBillScreenState();
}

class _ExpenseBillScreenState extends State<ExpenseBillScreen> {
  TextEditingController convController = TextEditingController();
  TextEditingController convDateController = TextEditingController();
  TextEditingController justController = TextEditingController();
  TextEditingController fromDesController = TextEditingController();
  TextEditingController toDesController = TextEditingController();
  TextEditingController fromDateController = TextEditingController();
  TextEditingController toDateController = TextEditingController();
  TextEditingController purposeController = TextEditingController();
  TextEditingController amtController = TextEditingController();
  TextEditingController otherController = TextEditingController();

  //for date pick
  DateTime now = DateTime.now();
  String _conDate = '';
  void _showConvDatePicker() async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(2021),
      lastDate: new DateTime(2023),
      builder: (context, child) => Theme(
        data: ThemeData(
            backgroundColor: Colors.blueAccent,
            colorScheme: const ColorScheme.dark(
              primary: Colors.blueAccent,
              surface: Color(0xff064A76),
            )),
        child: child as Widget,
      ),
    );

    if (picked != null) {
      setState(() => _conDate =
          DateFormat("yyyy-MM-dd").format(DateTime.parse(picked.toString())));
    }
  }

  String _fromDate = '';
  void _showFromDatePicker() async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(2021),
      lastDate: new DateTime(2023),
      builder: (context, child) => Theme(
        data: ThemeData(
            backgroundColor: Colors.blueAccent,
            colorScheme: const ColorScheme.dark(
              primary: Colors.blueAccent,
              surface: Color(0xff064A76),
            )),
        child: child as Widget,
      ),
    );

    if (picked != null) {
      setState(() => _fromDate =
          DateFormat("yyyy-MM-dd").format(DateTime.parse(picked.toString())));
    }
  }

  String _toDate = '';
  void _showToDatePicker() async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(2021),
      lastDate: new DateTime(2023),
      builder: (context, child) => Theme(
        data: ThemeData(
            backgroundColor: Colors.blueAccent,
            colorScheme: const ColorScheme.dark(
              primary: Colors.blueAccent,
              surface: Color(0xff064A76),
            )),
        child: child as Widget,
      ),
    );

    if (picked != null) {
      setState(() => _toDate =
          DateFormat("yyyy-MM-dd").format(DateTime.parse(picked.toString())));
    }
  }

  int length = 1;
  void increaseLength() {
    setState(() {
      length++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            size: 25,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        title: const Text('Expense Bill Apply'),
      ),
      body: Container(
        child: Column(
          children: [
            Card(
              elevation: 5,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              child: Container(
                height: 250,
                width: 380,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 250,
                      padding:
                          const EdgeInsets.only(left: 10, top: 10, right: 10),
                      //margin: const EdgeInsets.only(left: 10, right: 10),
                      child: TextFormField(
                        controller: convController,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 1.5,
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 1.5,
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          // prefixIcon: icon,
                          filled: true,
                          hintText: 'Enter Convey No',
                          hintStyle: const TextStyle(
                              color: Colors.black54,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                          fillColor: Colors.blue.withOpacity(0.2),
                          labelText: 'Conv No',
                          labelStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            _showFromDatePicker();
                          },
                          child: Container(
                            width: 250,
                            padding: const EdgeInsets.only(
                                left: 10, top: 10, right: 10),
                            //margin: const EdgeInsets.only(left: 10, right: 10),
                            child: TextFormField(
                              controller: convDateController,
                              onTap: () {
                                _showConvDatePicker();
                                convDateController.text = _conDate;
                              },
                              onSaved: (value) {
                                convDateController.text = value.toString();
                              },
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    width: 1.5,
                                    color: Colors.black,
                                  ),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    width: 1.5,
                                    color: Colors.white,
                                  ),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    _showFromDatePicker();
                                    convDateController.text = _fromDate;
                                  },
                                  child: const Icon(
                                    Icons.calendar_today,
                                    color: Colors.black,
                                  ),
                                ),
                                filled: true,
                                hintText: _conDate,
                                hintStyle: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600),
                                fillColor: Colors.blue.withOpacity(0.2),
                                labelText: 'Conv Date',
                                labelStyle: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w800),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                            style:
                                ElevatedButton.styleFrom(primary: Colors.green),
                            onPressed: () {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                duration: Duration(seconds: 1),
                                content: Text(
                                  "Bill added successfully",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    //fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                              ));
                            },
                            child: const Text(
                              'Confirm',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ))
                      ],
                    ),
                    Container(
                      width: 250,
                      padding:
                          const EdgeInsets.only(left: 10, top: 10, right: 10),
                      //margin: const EdgeInsets.only(left: 10, right: 10),
                      child: TextFormField(
                        controller: justController,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 1.5,
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 1.5,
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          // prefixIcon: icon,
                          filled: true,
                          hintText: 'Enter your Justification',
                          hintStyle: const TextStyle(
                              color: Colors.black54,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                          fillColor: Colors.blue.withOpacity(0.2),
                          labelText: 'Justification',
                          labelStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height / 2,
                width: 400,
                child: ListView.builder(
                    itemCount: length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          child: Container(
                            width: 380,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.grey.withOpacity(0.7)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 20, top: 10, bottom: 10),
                                  child: Text(
                                    'Details for Expense Bill',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ),
                                Container(
                                  width: 400,
                                  padding: const EdgeInsets.only(
                                      left: 10, top: 10, right: 10),
                                  //margin: const EdgeInsets.only(left: 10, right: 10),
                                  child: TextFormField(
                                    controller: fromDesController,
                                    decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          width: 1.5,
                                          color: Colors.black,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          width: 1.5,
                                          color: Colors.white,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      // prefixIcon: icon,
                                      filled: true,
                                      hintText: 'Enter Starting Point',
                                      hintStyle: const TextStyle(
                                          color: Colors.black54,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600),
                                      fillColor: Colors.white10,
                                      labelText: 'From Destination',
                                      labelStyle: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 400,
                                  padding: const EdgeInsets.only(
                                      left: 10, top: 10, right: 10),
                                  //margin: const EdgeInsets.only(left: 10, right: 10),
                                  child: TextFormField(
                                    controller: toDesController,
                                    decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          width: 1.5,
                                          color: Colors.black,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          width: 1.5,
                                          color: Colors.white,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      // prefixIcon: icon,
                                      filled: true,
                                      hintText: 'Enter Ending Point',
                                      hintStyle: const TextStyle(
                                          color: Colors.black54,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600),
                                      fillColor: Colors.white10,
                                      labelText: 'To Destination',
                                      labelStyle: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    _showFromDatePicker();
                                  },
                                  child: Container(
                                    width: 400,
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 10, right: 10),
                                    //margin: const EdgeInsets.only(left: 10, right: 10),
                                    child: TextFormField(
                                      controller: fromDateController,
                                      onTap: () {
                                        _showFromDatePicker();
                                        fromDateController.text = _fromDate;
                                      },
                                      decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            width: 1.5,
                                            color: Colors.black,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            width: 1.5,
                                            color: Colors.white,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                        prefixIcon: GestureDetector(
                                            onTap: () {
                                              _showFromDatePicker();
                                              fromDateController.text =
                                                  _fromDate;
                                            },
                                            child: Icon(
                                              Icons.calendar_today,
                                              color: Colors.black,
                                            )),
                                        filled: true,
                                        hintText: _fromDate,
                                        hintStyle: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600),
                                        fillColor: Colors.white10,
                                        labelText: 'From Date',
                                        labelStyle: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w800),
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    _showToDatePicker();
                                  },
                                  child: Container(
                                    width: 400,
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 10, right: 10),
                                    //margin: const EdgeInsets.only(left: 10, right: 10),
                                    child: TextFormField(
                                      controller: toDateController,
                                      onTap: () {
                                        _showToDatePicker();
                                        toDateController.text = _toDate;
                                      },
                                      decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            width: 1.5,
                                            color: Colors.black,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            width: 1.5,
                                            color: Colors.white,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                        prefixIcon: GestureDetector(
                                            onTap: () {
                                              _showToDatePicker();
                                              toDateController.text = _fromDate;
                                            },
                                            child: Icon(
                                              Icons.calendar_today,
                                              color: Colors.black,
                                            )),
                                        filled: true,
                                        hintText: _toDate,
                                        hintStyle: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600),
                                        fillColor: Colors.white10,
                                        labelText: 'To Date',
                                        labelStyle: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w800),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 400,
                                  padding: const EdgeInsets.only(
                                      left: 10, top: 10, right: 10),
                                  //margin: const EdgeInsets.only(left: 10, right: 10),
                                  child: TextFormField(
                                    controller: purposeController,
                                    decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          width: 1.5,
                                          color: Colors.black,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          width: 1.5,
                                          color: Colors.white,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      // prefixIcon: icon,
                                      filled: true,
                                      /*hintText: 'Enter purpose',
                              hintStyle: const TextStyle(
                                  color: Colors.black54,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),*/
                                      fillColor: Colors.white10,
                                      labelText: 'Justification',
                                      labelStyle: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 400,
                                  padding: const EdgeInsets.only(
                                      left: 10, top: 10, right: 10),
                                  //margin: const EdgeInsets.only(left: 10, right: 10),
                                  child: TextFormField(
                                    controller: amtController,
                                    decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          width: 1.5,
                                          color: Colors.black,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          width: 1.5,
                                          color: Colors.white,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      // prefixIcon: icon,
                                      filled: true,
                                      hintText: '0.00',
                                      hintStyle: const TextStyle(
                                          color: Colors.black54,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600),
                                      fillColor: Colors.white10,
                                      labelText: 'Amount(TK)',
                                      labelStyle: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w800),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 400,
                                  padding: const EdgeInsets.only(
                                      left: 10, top: 10, right: 10),
                                  //margin: const EdgeInsets.only(left: 10, right: 10),
                                  child: TextFormField(
                                    controller: amtController,
                                    decoration: InputDecoration(
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          width: 1.5,
                                          color: Colors.black,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          width: 1.5,
                                          color: Colors.white,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      // prefixIcon: icon,
                                      filled: true,
                                      hintText:
                                          'Enter other expense description',
                                      hintStyle: const TextStyle(
                                          color: Colors.black54,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600),
                                      fillColor: Colors.white10,
                                      labelText: 'Other Expense',
                                      labelStyle: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w800),
                                    ),
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
                    }),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          increaseLength();
        },
        child: const Icon(
          Icons.add,
          size: 30,
        ),
      ),
    );
  }
}
