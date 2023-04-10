import 'package:flutter/material.dart';

class LeavePopUp extends StatelessWidget {
  const LeavePopUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Leave Application'),
      ),
      body: NewLeaveBody(),
    );
  }
}

class NewLeaveBody extends StatefulWidget {
  NewLeaveBody({Key? key}) : super(key: key);

  @override
  State<NewLeaveBody> createState() => _NewLeaveBodyState();
}

class _NewLeaveBodyState extends State<NewLeaveBody> {
  late DateTime _selectedDate;

  var _value = "-1";

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 35,
                  width: 120,
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ElevatedButton(
                    onPressed: () => _selectDate,
                    child: Text("From Date"),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 35,
                  width: 120,
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ElevatedButton(
                    onPressed: () => _selectDate,
                    child: Text("To Date"),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: DropdownButtonFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4)),
                    labelText: 'Leave Type',
                  ),
                  value: _value,
                  items: [
                    DropdownMenuItem(
                      child: Text("-Selct Type"),
                      value: "-1",
                    ),
                    DropdownMenuItem(
                      child: Text("Earn Leave"),
                      value: "1",
                    ),
                    DropdownMenuItem(
                      child: Text("Casual Leave"),
                      value: "2",
                    ),
                    DropdownMenuItem(
                      child: Text("Maternal Leave"),
                      value: "3",
                    ),
                    DropdownMenuItem(
                      child: Text("Medical Leave"),
                      value: "4",
                    ),
                    DropdownMenuItem(
                      child: Text("Bereavement Leave"),
                      value: "5",
                    ),
                    DropdownMenuItem(
                      child: Text("LWP"),
                      value: "6",
                    ),
                    DropdownMenuItem(
                      child: Text("PL"),
                      value: "7",
                    ),
                  ],
                  onChanged: (v) {},
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Reason',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Address',
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
                height: 40,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Submit Form'),
                  onPressed: () {
                    print('From text Submit');
                    // print(passwordController.text);
                    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>HomePage()));
                  },
                )),
          ],
        ));
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2022, 8),
        lastDate: DateTime(2050));
    if (picked != null && picked != _selectedDate)
      setState(() {
        _selectedDate = picked;
      });
  }
}
