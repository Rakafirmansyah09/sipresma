import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:sipres/models/dbhelper.dart';

class hasil extends StatefulWidget {
  const hasil({Key? key}) : super(key: key);

  @override
  _hasilState createState() => _hasilState();
}

class _hasilState extends State<hasil> {
  Color myColor1 = Color(0xFF1726B5);

  late List<Map<String, dynamic>> _dataList;

@override
void initState() {
  super.initState();
  _dataList = [];
  _initializeData();
}

Future<void> _initializeData() async {
  await _getDataFromDatabase();
  // Additional initialization code if needed
}

Future<void> _getDataFromDatabase() async {
  try {
    final List<Map<String, dynamic>> dataList = await DatabaseHelper.instance.getAllItems();

    // Tampilkan data ke log console
    dataList.forEach((data) {
      print('Data: $data');
    });
    print('cneskcesknkscskn');

    setState(() {
      _dataList = dataList;
    });
  } catch (e) {
    print('Error fetching data from database: $e');
    // Handle the error as needed
  }
}


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          // Bagian atas dengan latar belakang biru
          Container(
            decoration: BoxDecoration(
              color: myColor1,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
            ),
            height: MediaQuery.of(context).size.height * 0.2,
            child: Stack(
              children: [
                const Positioned(
                  top: 120,
                  left: 60,
                  child: Text(
                    'History',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                top: 20,  // Sesuaikan nilai top sesuai kebutuhan
                left: (MediaQuery.of(context).size.width - 62) / 2,  // Untuk menempatkan di tengah, kurangkan lebar teks dari lebar layar dan bagi dua
                child: Text(
                  'History',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),


              ],
            ),
          ),
          // Bagian bawah dengan latar belakang putih
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                color: Colors.white,
                child: DataTable(
                  columns: [
                    DataColumn(label: Text('Name')),
                    DataColumn(label: Text('NIM')),
                    DataColumn(label: Text('Activity Name')),
                    DataColumn(label: Text('Date')),
                    DataColumn(label: Text('Champ')),
                    DataColumn(label: Text('Phone Number')),
                  ],
                  rows: _dataList.map((data) {
                    return DataRow(
                      cells: [
                        DataCell(Text(data['name'] ?? 'No Data')),
                        DataCell(Text(data['nim'] ?? 'No Data')),
                        DataCell(Text(data['activityName'] ?? 'No Data')),
                        DataCell(Text(
                            '${data['day']}-${data['month']}-${data['year']}' ??
                                'No Data')),
                        DataCell(Text(data['champ'] ?? 'No Data')),
                        DataCell(Text(data['phoneNumber'] ?? 'No Data')),
                      ],
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
