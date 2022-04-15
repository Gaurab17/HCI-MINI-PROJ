import 'package:flutter/material.dart';
import 'package:hciteacher/Screens/attendanceError.dart';

class TotalIssues extends StatelessWidget {
  const TotalIssues({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('COMP 341-Chaitra'),
        backgroundColor: const Color.fromARGB(255, 6, 200, 142),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            GestureDetector(child: _createDataTable(),  onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ErrorAttendance
                    ()));
              },),
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
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(18.0),
              child: Text(
                  "Click the date to do attendance for error recognition of that date.", style: TextStyle(
                    fontSize: 16,
                  ),),
            )
           
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
        'Dates',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      )),
      const DataColumn(
          label: Text(
        'Total Issuse',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      )),
      
    ];
  }

  List<DataRow> _createRows() {
    return [
      const DataRow(cells: [
        DataCell(Text(
          '2078/12/03',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
        )),
        DataCell(Padding(
          padding: EdgeInsets.only(left:30.0),
          child: Text(
            '1',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
          ),
        )),
      ]),
      const DataRow(cells: [
        DataCell(Text(
          '2078/12/04',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
        )),
        DataCell(Padding(
          padding: EdgeInsets.only(left:30.0),
          child: Text(
            '2',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
          ),
        )),
      ]),
      const DataRow(cells: [
        DataCell(Text(
          '2078/12/05',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
        )),
        DataCell(Padding(
          padding: EdgeInsets.only(left:30.0),
          child: Text(
            '0',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
          ),
        )),
      ]),
      const DataRow(cells: [
        DataCell(Text(
          '2078/12/06',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
        )),
        DataCell(Padding(
          padding: EdgeInsets.only(left:30.0),
          child: Text(
            '0',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
          ),
        )),
      ]),
      const DataRow(cells: [
        DataCell(Text(
          '2078/12/08',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
        )),
        DataCell(Padding(
          padding: EdgeInsets.only(left:30.0),
          child: Text(
            '0',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
          ),
        )),
      ]),
      const DataRow(cells: [
        DataCell(Text(
          '2078/12/09',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
        )),
        DataCell(Padding(
          padding: EdgeInsets.only(left:30.0),
          child: Text(
            '2',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
          ),
        )),
      ]),
      const DataRow(cells: [
        DataCell(Text(
          '2078/12/10',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
        )),
        DataCell(Padding(
          padding: EdgeInsets.only(left:30.0),
          child: Text(
            '0',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
          ),
        )),
      ]),

    ];
  }
}