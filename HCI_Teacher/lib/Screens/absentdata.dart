import 'package:flutter/material.dart';
import 'package:hciteacher/Screens/leavemsg.dart';
import 'package:hciteacher/Support/const.dart';

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
        title: const Text('COMP 341 - Absent Data'),
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
              const Center(
                  child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "2078/12/03",
                  style: TextStyle(fontSize: 20),
                ),
              )),
              GestureDetector(
                child: _createDataTable(),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Leave()));
                },
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.all(18.0),
                child: Text(
                  "👀Click the name of the absent student to see if they have left the leave message or not.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 17),
                ),
              )
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
          'Bisheshwor Neupane',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
        )),
        DataCell(Text(
          '4',
          style: TextStyle(
              color: Colors.red, fontSize: 17, fontWeight: FontWeight.normal),
        ))
      ]),
      const DataRow(cells: [
        DataCell(Text(
          'Umesh Shrestha',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
        )),
        DataCell(Text(
          '5',
          style: TextStyle(
              color: Colors.red, fontSize: 17, fontWeight: FontWeight.normal),
        ))
      ]),
      const DataRow(cells: [
        DataCell(Text(
          'Gaurab Shrestha',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
        )),
        DataCell(Text(
          '6',
          style: TextStyle(
              color: Colors.red, fontSize: 17, fontWeight: FontWeight.normal),
        ))
      ]),
    ];
  }
}
