import 'package:flutter/material.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Attendance History'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [_createDataTable()],
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
        'S NO.',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      )),
      const DataColumn(
          label: Text(
        'Date',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      )),
      const DataColumn(
          label: Text(
        'Status',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ))
    ];
  }

  List<DataRow> _createRows() {
    return [
      const DataRow(cells: [
        DataCell(Text(
          '1',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
        )),
        DataCell(Text(
          '2078-12-01',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
        )),
        DataCell(Text(
          'present',
          style: TextStyle(
              color: Colors.green, fontSize: 17, fontWeight: FontWeight.normal),
        ))
      ]),
      const DataRow(cells: [
        DataCell(Text(
          '2',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
        )),
        DataCell(Text(
          '2078-12-02',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
        )),
        DataCell(Text(
          'present',
          style: TextStyle(
              color: Colors.green, fontSize: 17, fontWeight: FontWeight.normal),
        ))
      ]),
      const DataRow(cells: [
        DataCell(Text(
          '3',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
        )),
        DataCell(Text(
          '2078-12-03',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
        )),
        DataCell(Text(
          'present',
          style: TextStyle(
              color: Colors.green, fontSize: 17, fontWeight: FontWeight.normal),
        ))
      ]),
      const DataRow(cells: [
        DataCell(Text(
          '4',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
        )),
        DataCell(Text(
          '2078-12-04',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
        )),
        DataCell(Text(
          'present',
          style: TextStyle(
              color: Colors.green, fontSize: 17, fontWeight: FontWeight.normal),
        ))
      ]),
      const DataRow(cells: [
        DataCell(Text(
          '5',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
        )),
        DataCell(Text(
          '2078-12-05',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
        )),
        DataCell(Text(
          'absent',
          style: TextStyle(
              color: Colors.red, fontSize: 17, fontWeight: FontWeight.normal),
        ))
      ]),
      const DataRow(cells: [
        DataCell(Text(
          '6',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
        )),
        DataCell(Text(
          '2078-12-06',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
        )),
        DataCell(Text(
          'absent',
          style: TextStyle(
              color: Colors.red, fontSize: 17, fontWeight: FontWeight.normal),
        ))
      ]),
    ];
  }
}
