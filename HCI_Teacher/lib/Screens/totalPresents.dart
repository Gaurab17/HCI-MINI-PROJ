import 'package:flutter/material.dart';
import 'package:hciteacher/Support/const.dart';

class TotalPresents extends StatelessWidget {
  const TotalPresents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('COMP 341 - Present Data'),
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
          padding: const EdgeInsets.all(18.0),
          child: ListView(
            children: [
              _createDataTable(),
              const SizedBox(
                height: 15,
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
        'Name',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      )),
      const DataColumn(
          label: Text(
        'Roll No',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ))
    ];
  }

  List<DataRow> _createRows() {
    return [
      const DataRow(cells: [
        DataCell(Text(
          'Nripesh Karmacharya',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
        )),
        DataCell(Text(
          '2',
          style: TextStyle(
              color: Colors.green, fontSize: 17, fontWeight: FontWeight.normal),
        ))
      ]),
      const DataRow(cells: [
        DataCell(Text(
          'Sabin Thapa',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
        )),
        DataCell(Text(
          '3',
          style: TextStyle(
              color: Colors.green, fontSize: 17, fontWeight: FontWeight.normal),
        ))
      ]),
      const DataRow(cells: [
        DataCell(Text(
          'Prakash Karmacharya',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
        )),
        DataCell(Text(
          '6',
          style: TextStyle(
              color: Colors.green, fontSize: 17, fontWeight: FontWeight.normal),
        ))
      ]),
      const DataRow(cells: [
        DataCell(Text(
          'Hari Thapa',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
        )),
        DataCell(Text(
          '7',
          style: TextStyle(
              color: Colors.green, fontSize: 17, fontWeight: FontWeight.normal),
        ))
      ]),
      const DataRow(cells: [
        DataCell(Text(
          'Hritik Shrestha',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
        )),
        DataCell(Text(
          '8',
          style: TextStyle(
              color: Colors.green, fontSize: 17, fontWeight: FontWeight.normal),
        ))
      ]),
      const DataRow(cells: [
        DataCell(Text(
          'Santosh Enrique',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
        )),
        DataCell(Text(
          '11',
          style: TextStyle(
              color: Colors.green, fontSize: 17, fontWeight: FontWeight.normal),
        ))
      ]),
      const DataRow(cells: [
        DataCell(Text(
          'Nripesh Bajracharya',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
        )),
        DataCell(Text(
          '12',
          style: TextStyle(
              color: Colors.green, fontSize: 17, fontWeight: FontWeight.normal),
        ))
      ]),
      const DataRow(cells: [
        DataCell(Text(
          'Sabin k. Mahat',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
        )),
        DataCell(Text(
          '13',
          style: TextStyle(
              color: Colors.green, fontSize: 17, fontWeight: FontWeight.normal),
        ))
      ]),
      const DataRow(cells: [
        DataCell(Text(
          'Ramesh Karmacharya',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
        )),
        DataCell(Text(
          '14',
          style: TextStyle(
              color: Colors.green, fontSize: 17, fontWeight: FontWeight.normal),
        ))
      ]),
      const DataRow(cells: [
        DataCell(Text(
          'Garuda KGF',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
        )),
        DataCell(Text(
          '15',
          style: TextStyle(
              color: Colors.green, fontSize: 17, fontWeight: FontWeight.normal),
        ))
      ]),
    ];
  }
}
