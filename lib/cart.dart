import 'package:flutter/material.dart';
import 'main.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          flexibleSpace: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // button back start
              Container(
                margin: EdgeInsets.only(left: 30, top: 10),
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

              // text cart start
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 60, left: 60),
                child: Text(
                  'Cart',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              // text cart end

              // button person start
              Container(
                margin: EdgeInsets.only(right: 30, top: 10),
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
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // pesenan 1 start
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    width: 280,
                    height: 140,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        // Gambar start
                        Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: SizedBox(
                              width: 80,
                              height: 80,
                              child: Image.asset(
                                'assets/burger.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        // gambar end
                        // tulisan start
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 9, top: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Burger King Medium',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'Rp.50.000,00',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                ),
                                // tulisan end
                                // logo start
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.remove_circle_outline),
                                      iconSize: 20,
                                      color: Colors.red,
                                    ),
                                    Text(
                                      '1',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.add_circle_outline),
                                      iconSize: 20,
                                      color: Colors.green,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(right: 8.0),
                          child: IconButton(
                            icon: Icon(Icons.delete_outline),
                            onPressed: () {},
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                    // logo end
                  ),
                  // pesenan 1 end

                  // pesenan 2 start
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    width: 280,
                    height: 140,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        // Gambar start
                        Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: SizedBox(
                              width: 80,
                              height: 80,
                              child: Image.asset(
                                'assets/teh.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        // gambar end
                        // tulisan start
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 9, top: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Burger King Medium',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'Rp.4.000,00',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                ),
                                // tulisan end
                                // logo start
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.remove_circle_outline),
                                      iconSize: 20,
                                      color: Colors.red,
                                    ),
                                    Text(
                                      '1',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.add_circle_outline),
                                      iconSize: 20,
                                      color: Colors.green,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(right: 8.0),
                          child: IconButton(
                            icon: Icon(Icons.delete_outline),
                            onPressed: () {},
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                    // logo end
                  ),
                  // pesenan 2 end
                  // pesenan 3 start
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    width: 280,
                    height: 140,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        // Gambar start
                        Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: SizedBox(
                              width: 80,
                              height: 80,
                              child: Image.asset(
                                'assets/burger.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        // gambar end
                        // tulisan start
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 9, top: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Burger King Medium',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'Rp.50.000,00',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                ),
                                // tulisan end
                                // logo start
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.remove_circle_outline),
                                      iconSize: 20,
                                      color: Colors.red,
                                    ),
                                    Text(
                                      '1',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.add_circle_outline),
                                      iconSize: 20,
                                      color: Colors.green,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(right: 8.0),
                          child: IconButton(
                            icon: Icon(Icons.delete_outline),
                            onPressed: () {},
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                    // logo end
                  ),
                  // pesenan 3 end

                  // bottom text start
                  Column(
                    children: [
                      Container(
                        height: 23,
                        width: 280,
                        margin: EdgeInsets.only(top: 40),
                        child: Text(
                          "Ringkasan Belanja",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 250,
                        width: 280,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "PPN 11%",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromRGBO(85, 85, 85, 1),
                                  ),
                                ),
                                Text(
                                  "Rp 10.000,00",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromRGBO(85, 85, 85, 1),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Total belanja",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromRGBO(85, 85, 85, 1),
                                  ),
                                ),
                                Text(
                                  "Rp 94.000,00",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromRGBO(85, 85, 85, 1),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              width: 335,
                              height: 1,
                              color: Color.fromRGBO(153, 153, 153, 1),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Total Pembayaran",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "Rp 104.000,00",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => MainPage(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(top: 50),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Color.fromRGBO(55, 72, 228, 1),
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.5),
                                              spreadRadius: 2,
                                              blurRadius: 3,
                                              offset: Offset(0, 3))
                                        ]),
                                    width: 250,
                                    height: 50,
                                    child: Center(
                                      child: Text(
                                        "Checkout",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  // bottom text end
                ],
              ),
            )
          ],
        ));
  }
}
