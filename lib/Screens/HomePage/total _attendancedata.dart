import 'package:flutter/material.dart';

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
        title: const Text('Total Attendance'),
        backgroundColor: const Color.fromARGB(255, 6, 200, 142),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            _createDataTable(),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                height: 5,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
          ],
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
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
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
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
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
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
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
          'COMP 304',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
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
