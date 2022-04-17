import 'package:flutter/material.dart';
import 'package:hciminiproj/Screens/HomePage/attendancehistory.dart';
import 'package:hciminiproj/services/const.dart';

class TotalAttendance extends StatefulWidget {
  const TotalAttendance({Key? key}) : super(key: key);

  @override
  _TotalAttendanceState createState() => _TotalAttendanceState();
}

class _TotalAttendanceState extends State<TotalAttendance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Attendance Data'),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                Color.fromARGB(255, 23, 101, 65),
                Colors.blue
              ])),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: background,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListView(
            children: [
              GestureDetector(
                child: _createDataTable(),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const History()));
                },
              ),
              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  height: 3,
                  color: const Color.fromARGB(255, 54, 53, 53),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  '👀 Click on the course codes to see the attendance history.',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  DataTable _createDataTable() {
    return DataTable(columns: _createColumns(), rows: _createRows());
  }

  List<DataColumn> _createColumns() {
    return [
      const DataColumn(
          label: Text(
        'Course Codes',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      )),
      const DataColumn(
          label: Text(
        'Total Attendance',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ))
    ];
  }

  List<DataRow> _createRows() {
    return [
      const DataRow(cells: [
        DataCell(Text(
          'COMP 341',
          style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.normal,
              color: Color.fromARGB(255, 23, 101, 65)),
        )),
        DataCell(Text(
          '4/6',
          style: TextStyle(
              color: Colors.black87,
              fontSize: 17,
              fontWeight: FontWeight.normal),
        ))
      ]),
      const DataRow(cells: [
        DataCell(Text(
          'COMP 314',
          style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.normal,
              color: Color.fromARGB(255, 23, 101, 65)),
        )),
        DataCell(Text(
          '1/6',
          style: TextStyle(
              color: Colors.black87,
              fontSize: 17,
              fontWeight: FontWeight.normal),
        ))
      ]),
      const DataRow(cells: [
        DataCell(Text(
          'COMP 342',
          style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.normal,
              color: Color.fromARGB(255, 23, 101, 65)),
        )),
        DataCell(Text(
          '3/6',
          style: TextStyle(
              color: Colors.black87,
              fontSize: 17,
              fontWeight: FontWeight.normal),
        ))
      ]),
      const DataRow(cells: [
        DataCell(Text(
          'COMP 314',
          style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.normal,
              color: Color.fromARGB(255, 23, 101, 65)),
        )),
        DataCell(Text(
          '1/6',
          style: TextStyle(
              color: Colors.black87,
              fontSize: 17,
              fontWeight: FontWeight.normal),
        ))
      ]),
      const DataRow(cells: [
        DataCell(Text(
          'COMP 314',
          style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.normal,
              color: Color.fromARGB(255, 23, 101, 65)),
        )),
        DataCell(Text(
          '1/6',
          style: TextStyle(
              color: Colors.black87,
              fontSize: 17,
              fontWeight: FontWeight.normal),
        ))
      ]),
      const DataRow(cells: [
        DataCell(Text(
          'COMP 304',
          style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.normal,
              color: Color.fromARGB(255, 23, 101, 65)),
        )),
        DataCell(Text(
          '5/6',
          style: TextStyle(
              color: Colors.black87,
              fontSize: 17,
              fontWeight: FontWeight.normal),
        ))
      ]),
    ];
  }
}
