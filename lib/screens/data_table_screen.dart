import 'package:flutter/material.dart';

class DataTableScreen extends StatelessWidget {
  const DataTableScreen({Key? key}) : super(key: key);

  List<DataRow> getData() {
    List<DataRow> data = [];
    for (var i = 0; i < 10; i++) {
      data.add(DataRow(cells:[
        const DataCell(Text('Eduardo')),
        const DataCell(Text("----")),
        DataCell(Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Container(width: 30, decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(10)),),
        )),
        const DataCell(Text("Español")),
        const DataCell(Text("Admin")),
        const DataCell(Text("25")),
        const DataCell(Text("20-Ago")),
      ]));
    }
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Table"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 20),
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
            border: TableBorder.all(),
            columns: const [
              DataColumn(label: Text("Name")),
              DataColumn(label: Text("Last Name")),
              DataColumn(label: Text("Color")),
              DataColumn(label: Text("Lang")),
              DataColumn(label: Text("Role")),
              DataColumn(label: Text("Age")),
              DataColumn(label: Text("Date")),
            ],
            rows: getData()
          ),
        ),
      ),
    );
  }
}
