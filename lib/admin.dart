import 'package:flutter/material.dart';
import 'main.dart';
import 'add_data.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({super.key});

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
                          builder: (context) => MainPage(),
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
          Row(
            children: [
              // button add data
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddPage(),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(left: 50, top: 70),
                  width: 85,
                  height: 23,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(55, 72, 228, 1),
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          blurRadius: 1,
                          spreadRadius: 2,
                          offset: Offset(0, 0),
                        )
                      ]),
                  child: Center(
                    child: Text(
                      "Add Data +",
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              // button add data
            ],
          ),
          Row(
            children: [
              // tulisan
              Container(
                margin: EdgeInsets.only(left: 30, top: 30),
                width: 350,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Foto",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Nama Produk",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Harga",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Aksi",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              )
              // tulisan
            ],
          ),
          Row(
            children: [
              Container(
                width: 305,
                height: 2,
                color: Colors.black,
                margin: EdgeInsets.only(left: 50, top: 15),
              )
            ],
          ),
          //card 1 start
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 15, left: 50),
                width: 305,
                height: 75,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // gambar start
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: SizedBox(
                        width: 72,
                        height: 75,
                        child: Image.asset(
                          'assets/burger.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // gambar end
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Burger King Medium",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Rp.50.000,00",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    IconButton(
                      icon: Icon(Icons.delete_outline),
                      color: Colors.red,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: 305,
                height: 2,
                color: Colors.black,
                margin: EdgeInsets.only(left: 50, top: 15),
              )
            ],
          ),
          //card 1 end

          // card 2 start
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 15, left: 50),
                width: 305,
                height: 75,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // gambar start
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: SizedBox(
                        width: 72,
                        height: 75,
                        child: Image.asset(
                          'assets/teh.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // gambar end
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Teh Botol",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Rp.4.000,00",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    IconButton(
                      icon: Icon(Icons.delete_outline),
                      color: Colors.red,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: 305,
                height: 2,
                color: Colors.black,
                margin: EdgeInsets.only(left: 50, top: 15),
              )
            ],
          ),
          //card 2 end

          // card 3 start
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 15, left: 50),
                width: 305,
                height: 75,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // gambar start
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: SizedBox(
                        width: 72,
                        height: 75,
                        child: Image.asset(
                          'assets/burger.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // gambar end
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Burger King Small",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Rp.35.000,00",
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    IconButton(
                      icon: Icon(Icons.delete_outline),
                      color: Colors.red,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: 305,
                height: 2,
                color: Colors.black,
                margin: EdgeInsets.only(left: 50, top: 15),
              )
            ],
          ),
          // card 3 end
        ],
      ),
    );
  }
}
