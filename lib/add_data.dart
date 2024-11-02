import 'package:flutter/material.dart';
import 'package:tugas_slicing/admin.dart';
import 'package:file_picker/file_picker.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  String? selectedFileName;
  String selectedCategory = 'Makanan'; // Default value for the dropdown

  Future<void> _pickFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result != null && result.files.isNotEmpty) {
      setState(() {
        selectedFileName = result.files.single.name;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // button back start
            Container(
              margin: EdgeInsets.only(right: 60, top: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios_new_sharp),
                    color: Colors.red,
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AdminPage(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            // button back end

            // button person start
            Container(
              margin: EdgeInsets.only(left: 60, top: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    icon: Icon(Icons.person),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            // button person end
          ],
        ),
      ),
      body: Column(
        children: [
          // input 1 start
          Row(
            children: [
              Container(
                width: 100,
                margin: EdgeInsets.only(left: 50, top: 60),
                child: Text(
                  "Nama Produk",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                width: 325,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        blurRadius: 2.75,
                        offset: Offset(0, -0.1),
                      )
                    ]),
                child: TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      hintText: 'Masukkan Nama Produk',
                      hintStyle: TextStyle(
                        color: Color.fromRGBO(34, 34, 34, 0.47),
                        fontSize: 14,
                      ),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 16)),
                ),
              ),
            ],
          ),
          // input 1 end

          // input 2 start
          Row(
            children: [
              Container(
                width: 100,
                margin: EdgeInsets.only(left: 50, top: 60),
                child: Text(
                  "Harga",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                width: 325,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        blurRadius: 2.75,
                        offset: Offset(0, -0.1),
                      )
                    ]),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: 'Masukkan Harga',
                      hintStyle: TextStyle(
                        color: Color.fromRGBO(34, 34, 34, 0.47),
                        fontSize: 14,
                      ),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 16)),
                ),
              ),
            ],
          ),
          // input 2 end

          // Dropdown 3 start
          Row(
            children: [
              Container(
                width: 200,
                margin: EdgeInsets.only(left: 50, top: 60),
                child: Text(
                  "Kategori Produk",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                width: 325,
                height: 50,
                padding: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      blurRadius: 2.75,
                      offset: Offset(0, -0.1),
                    ),
                  ],
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: selectedCategory,
                    icon: Icon(Icons.arrow_drop_down, color: Colors.grey),
                    isExpanded: true,
                    style: TextStyle(
                      color: Color.fromRGBO(34, 34, 34, 0.47),
                      fontSize: 14,
                    ),
                    items: <String>['Makanan', 'Minuman']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedCategory = newValue!;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
          // Dropdown 3 end

          // Input 4 (File Picker) Start
          Row(
            children: [
              Container(
                width: 100,
                margin: EdgeInsets.only(left: 50, top: 60),
                child: Text(
                  "Image",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: _pickFile,
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  width: 325,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        blurRadius: 2.75,
                        offset: Offset(0, -0.1),
                      )
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 16, top: 15),
                    child: Text(
                      selectedFileName ?? 'Choose File',
                      style: TextStyle(
                        color: selectedFileName == null
                            ? Color.fromRGBO(34, 34, 34, 0.47)
                            : Colors.black,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          // Input 4 (File Picker) End

          // submit button start
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => AdminPage(),
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.only(top: 50),
              width: 326,
              height: 53,
              child: Center(
                child: Text(
                  "Submit",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(55, 72, 228, 1),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 3.62,
                    )
                  ]),
            ),
          )
          // submit button end
        ],
      ),
    );
  }
}
