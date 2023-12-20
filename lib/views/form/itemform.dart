import 'package:flutter/material.dart';
import 'package:sipres/views/form/itemcomplate.dart';
import 'package:sipres/models/dbhelper.dart';

class itemform extends StatefulWidget {
  final Color warna;
  final String title;
  final String imageAsset;

  itemform({
    required this.warna,
    required this.title,
    required this.imageAsset,
  });

  @override
  _itemformState createState() => _itemformState();
}

class _itemformState extends State<itemform> {
  late Color myColor1;
  late String title;
  late String imageAsset;



  Color myColor2 = Color(0xB8B8D2);
  Color myColor3 = Colors.grey;
  final DatabaseHelper dbHelper = DatabaseHelper.instance;

  @override
  void initState() {
    super.initState();
    myColor1 = widget.warna;
    title = widget.title;
    imageAsset = widget.imageAsset;
  Future<void> _insertData() async {
  try {
    Map<String, dynamic> item = {
      'name': _nameController.text,
      'nim': _nimController.text,
      'activityName': _activityNameController.text,
      'type': selectedType,
      'day': selectedDay,
      'month': selectedMonth,
      'year': selectedYear,
      'champ': _champController.text,
      'phoneNumber': _phoneNumberController.text,
    };

    int result = await dbHelper.insertItem1(item);

    if (result != 0) {
      print('Data berhasil dimasukkan!');
    } else {
      print('Gagal memasukkan data.');
    }
  } catch (e) {
    print('Error inserting data: $e');
    // Handle the error as needed (e.g., show an error message to the user).
  }
}



  }

  List<String> days = List.generate(31, (index) => (index + 1).toString());
  List<String> months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];

  List<String> listType = [
    'Academic',
    'Non Academic',
  ];

  List<String> listScale = [
    'National',
    'University',
    'Other'
  ];

  List<String> years = List.generate(30, (index) => (2023 - index).toString());
  Future<void> _insertData() async {
    try {
      Map<String, dynamic> item = {
        'name': _nameController.text,
        'nim': _nimController.text,
        'activityName': _activityNameController.text,
        'type': selectedType,
        'day': selectedDay,
        'month': selectedMonth,
        'year': selectedYear,
        'champ': _champController.text,
        'phoneNumber': _phoneNumberController.text,
      };

      int result = await dbHelper.insertItem1(item);

      if (result != 0) {
        print('Data berhasil dimasukkan!');
      } else {
        print('Gagal memasukkan data.');
      }
    } catch (e) {
      print('Error inserting data: $e');
      // Handle the error as needed (e.g., show an error message to the user).
    }
  }

  TextEditingController _nameController = TextEditingController();
  TextEditingController _nimController = TextEditingController();
  TextEditingController _activityNameController = TextEditingController();
  TextEditingController _champController = TextEditingController();
  TextEditingController _phoneNumberController = TextEditingController();

  String selectedDay = '1';
  String selectedMonth = 'January';
  String selectedYear = '2023';
  String selectedType = 'Academic';
  String selectedScale = 'National';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: myColor1,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 24,
            fontFamily: 'Arial',
            color: myColor1,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(top: 0, right: 30, left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    imageAsset,
                    width: 306,
                    height: 306,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Name",
                  style: TextStyle(
                    fontSize: 18,
                    color: myColor1,
                  ),
                ),
                SizedBox(height: 8),
                TextField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    // Warna latar belakang abu-abu
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      // Border radius 10
                      borderSide: BorderSide(color: myColor3, width: 2),
                      // Border solid kuning
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: myColor3, width: 2),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "Your NIM",
                  style: TextStyle(
                    fontSize: 18,
                    color: myColor1,
                  ),
                ),
                SizedBox(height: 8),
                TextField(
                  controller: _nimController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    // Warna latar belakang abu-abu
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      // Border radius 10
                      borderSide: BorderSide(color: myColor3, width: 2),
                      // Border solid kuning
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: myColor3, width: 2),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "Name of Activity Competition",
                  style: TextStyle(
                    fontSize: 18,
                    color: myColor1,
                  ),
                ),
                SizedBox(height: 8),
                TextField(
                  controller: _activityNameController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    // Warna latar belakang abu-abu
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      // Border radius 10
                      borderSide: BorderSide(color: myColor3, width: 2),
                      // Border solid kuning
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: myColor3, width: 2),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "Type of Achivement",
                  style: TextStyle(
                    fontSize: 18,
                    color: myColor1,
                  ),
                ),
                SizedBox(height: 8),
                // Container(
                //   padding: EdgeInsets.symmetric(horizontal: 12.0),
                //   decoration: BoxDecoration(
                //     color: Colors.grey[200],
                //     borderRadius: BorderRadius.circular(10),
                //     border: Border.all(color: myColor3, width: 2),
                //   ),
                //   child: DropdownButton(
                //     value: selectedType,
                //     onChanged: (Value) {
                //       setState(() {
                //         selectedType = Value as String;
                //       });
                //     },
                //     items: types
                //       .map<DropdownMenuItem<String>>((String value) {
                //       return DropdownMenuItem<String>(
                //         value: value,
                //         child: Text(value),
                //       );
                //     }).toList(),
                //     style: TextStyle(color: myColor1),
                //   ),
                // ),
                Container(
                  height: 55,
                  child: InputDecorator(
                    decoration: InputDecoration(
                      fillColor: Colors.grey[200],
                      labelStyle:
                          TextStyle(color: myColor1), // Warna label biru
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: myColor3, width: 2),
                      ),
                    ),
                    child: DropdownButton(
                      value: selectedType,
                      onChanged: (value) {
                        setState(() {
                          selectedType = value as String;
                        });
                      },
                      items: listType
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      style: TextStyle(
                          fontSize: 14,
                          color:
                              myColor1), // Sesuaikan dengan ukuran dan warna yang diinginkan
                    ),
                  ),
                ),

                SizedBox(height: 15),

                Text(
                  "Scale of Achievement",
                  style: TextStyle(
                    fontSize: 18,
                    color: myColor1,
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  height: 55,
                  child: InputDecorator(
                    decoration: InputDecoration(
                      fillColor: Colors.grey[200],
                      labelStyle:
                          TextStyle(color: myColor1), // Warna label biru
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: myColor3, width: 2),
                      ),
                    ),
                    child: DropdownButton(
                      value: selectedScale,
                      onChanged: (value) {
                        setState(() {
                          selectedScale = value as String;
                        });
                      },
                      items: listScale
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      style: TextStyle(
                          fontSize: 14,
                          color:
                              myColor1), // Sesuaikan dengan ukuran dan warna yang diinginkan
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "Date",
                  style: TextStyle(
                    fontSize: 18,
                    color: myColor1,
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    // Dropdown for Days
                    Expanded(
                      child: Container(
                        height: 55,
                        child: InputDecorator(
                          decoration: InputDecoration(
                            fillColor: Colors.grey[200],
                            labelStyle:
                                TextStyle(color: myColor1), // Warna label biru
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: myColor3, width: 2),
                            ),
                          ),
                          child: DropdownButton(
                            value: selectedDay,
                            onChanged: (value) {
                              setState(() {
                                selectedDay = value as String;
                              });
                            },
                            items: days
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            style: TextStyle(
                                fontSize: 14,
                                color:
                                    myColor1), // Sesuaikan dengan ukuran dan warna yang diinginkan
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    // Dropdown for Months
                    Expanded(
                      child: Container(
                        height: 55,
                        child: InputDecorator(
                          decoration: InputDecoration(
                            fillColor: Colors.grey[200],
                            labelStyle:
                                TextStyle(color: myColor1), // Warna label biru
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: myColor3, width: 2),
                            ),
                          ),
                          child: DropdownButton(
                            value: selectedMonth,
                            onChanged: (value) {
                              setState(() {
                                selectedMonth = value as String;
                              });
                            },
                            items: months
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            style: TextStyle(
                                fontSize: 14,
                                color:
                                    myColor1), // Sesuaikan dengan ukuran dan warna yang diinginkan
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    // Dropdown for Years
                    Expanded(
                      child: Container(
                        height: 55,
                        child: InputDecorator(
                          decoration: InputDecoration(
                            fillColor: Colors.grey[200],
                            labelStyle:
                                TextStyle(color: myColor1), // Warna label biru
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: myColor3, width: 2),
                            ),
                          ),
                          child: DropdownButton(
                            value: selectedYear,
                            onChanged: (value) {
                              setState(() {
                                selectedYear = value as String;
                              });
                            },
                            items: years
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            style: TextStyle(
                                fontSize: 14,
                                color:
                                    myColor1), // Sesuaikan dengan ukuran dan warna yang diinginkan
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Text(
                  "Champ",
                  style: TextStyle(
                    fontSize: 18,
                    color: myColor1,
                  ),
                ),
                SizedBox(height: 8),
                TextField(
                  controller: _champController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    // Warna latar belakang abu-abu
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      // Border radius 10
                      borderSide: BorderSide(color: myColor3, width: 2),
                      // Border solid kuning
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: myColor3, width: 2),
                    ),
                  ),
                ),
                SizedBox(height: 15),

                Text(
                  "Number Phone",
                  style: TextStyle(
                    fontSize: 18,
                    color: myColor1,
                  ),
                ),
                SizedBox(height: 8),
                TextField(
                  controller: _phoneNumberController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    // Warna latar belakang abu-abu
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      // Border radius 10
                      borderSide: BorderSide(color: myColor3, width: 2),
                      // Border solid kuning
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: myColor3, width: 2),
                    ),
                  ),
                ),
                SizedBox(height: 50),

                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      _insertData(); // Insert data to SQLite database
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => complete()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 247, 178,
                          28), // Warna latar belakang tombol sesuai myColor1
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(20), // Border radius 10
                      ),
                      minimumSize:
                          Size(double.infinity, 10), // Menentukan lebar tombol
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'Submit',
                        style: TextStyle(
                          fontSize: 18,
                          color: myColor1, // Warna teks putih
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
