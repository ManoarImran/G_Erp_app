import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class Page5 extends StatefulWidget {
  @override
  _Page5State createState() => _Page5State();
}

class _Page5State extends State<Page5> {
  String _employeeName = '';
  bool _isPresent = false;

  final DateFormat _dateFormat = DateFormat("yyyy-MM-dd HH:mm:ss");
  late Database _db;

  @override
  void initState() {
    super.initState();
    _openDatabase();
  }

  Future<void> _openDatabase() async {
    _db = await openDatabase(
      join(await getDatabasesPath(), 'attendance.db'),
      onCreate: (db, version) {
        return db.execute(
          "CREATE TABLE attendance(id INTEGER PRIMARY KEY, employee_name TEXT, attendance_status INTEGER, attendance_time TEXT)",
        );
      },
      version: 1,
    );
  }

  @override
  void dispose() {
    _db.close();
    super.dispose();
  }

  Future<void> _saveAttendance() async {
    await _db.insert(
      'attendance',
      {
        'employee_name': _employeeName,
        'attendance_status': _isPresent ? 1 : 0,
        'attendance_time': _dateFormat.format(DateTime.now()),
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Attendance'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Employee Name'),
              onChanged: (value) {
                _employeeName = value;
              },
            ),
            SizedBox(height: 16.0),
            Row(
              children: [
                Text('Present'),
                Checkbox(
                  value: _isPresent,
                  onChanged: (value) {
                    setState(() {
                      _isPresent = value!;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () async {
                await _saveAttendance();
                Navigator.pop(context);
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}