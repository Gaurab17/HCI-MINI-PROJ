import 'package:flutter/material.dart';
import 'package:hciteacher/Support/const.dart';

class AttendanceData extends StatefulWidget {
  const AttendanceData({Key? key}) : super(key: key);

  @override
  _AttendanceDataState createState() => _AttendanceDataState();
}

class _AttendanceDataState extends State<AttendanceData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('COMP 341-2078/12/03'),
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
              _createDataTable(),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  height: 3,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Center(
                  child: Text(
                "Total: 2 present 4 absent",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87),
              ))
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
        'R.No.',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      )),
      const DataColumn(
          label: Text(
        'Name',
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
          'Sajan Mahat',
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
          '2',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
        )),
        DataCell(Text(
          'Nripesh Karmacharya',
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
          'Sabin Thapa',
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
          'Bisheshwor Neupane',
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
          '5',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
        )),
        DataCell(Text(
          'Umesh Shrestha',
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
          'Gaurab Shrestha',
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
