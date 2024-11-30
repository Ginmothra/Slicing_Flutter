import 'package:flutter/material.dart';
import 'package:tugas_slicing/admin.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  File? _imageFile;
  // ambil gambar
  Future pickImage() async {
    final ImagePicker picker = ImagePicker();
    // ambil dari galeri
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      setState(() {
        _imageFile = File(image.path);
      });
    }
  }

  // upload gambar
  Future uploadImage() async {
    if (_imageFile == null) return;

    // buat file path unik
    final fileName = DateTime.now().millisecondsSinceEpoch.toString();
    final path = 'uploads/$fileName';

    // up ke supabase
    await Supabase.instance.client.storage
        .from('gambar')
        .upload(path, _imageFile!)
        .then((value) => ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text('berhasil upload'))));

    final urlResponse = Supabase.instance.client.storage.from('gambar').getPublicUrl(path);
    return urlResponse;
  }
  // end

  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _hargaController = TextEditingController();
  final supabase = Supabase.instance.client;
  String? selectedCategory;

  Future<List<dynamic>> fetchdata() async {
    final response = await supabase.from('Menu').select('*');
    return response as List<dynamic>;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // Button back start
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
            // Button person start
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
            // Button person end
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Input Nama Produk
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
                    controller: _namaController,
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
            // Input Harga
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
                    controller: _hargaController,
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
            // Dropdown Kategori
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
                        color: Colors.black,
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
                          selectedCategory = newValue;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            // Input Gambar
            Row(
              children: [
                Container(
                  width: 100,
                  margin: EdgeInsets.only(left: 50, top: 60),
                  child: Text(
                    "Gambar",
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
                  onTap: pickImage,
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
                      child: _imageFile != null
                          ? Image.file(_imageFile!)
                          : const Text(
                              'Input gmbr',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                    ),
                  ),
                ),
              ],
            ),
            // Submit Button
            GestureDetector(
              onTap: () async {
                final imageUrl = await uploadImage();
                final nama = _namaController.text;
                final harga = double.tryParse(_hargaController.text) ?? 0.0;

                await supabase.from('Menu').insert({
                  'nama': nama,
                  'harga': harga,
                  'kategori': selectedCategory,
                  'gambar' : imageUrl,
                });

                setState(() {});
                _namaController.clear();
                _hargaController.clear();

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
            ),
          ],
        ),
      ),
    );
  }
}








// Author Ginmothra