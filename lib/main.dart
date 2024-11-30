import 'package:flutter/material.dart';
import 'cart.dart';
import 'admin.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  await Supabase.initialize(
    url: 'https://qvjoszippuhcrvvnatdh.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InF2am9zemlwcHVoY3J2dm5hdGRoIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzI4MDE5OTAsImV4cCI6MjA0ODM3Nzk5MH0.YUmoLBq-x2Y6Mqe-BHj5-LUPy85es0kkDy-16GYRBFw',
  );

  runApp(MyApp());
}

final supabase = Supabase.instance.client;
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas Slicing',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  List<Map<String, dynamic>> menus = [];

  @override
  void initState() {
    super.initState();
    fetchMenus();
  }

  Future<void> fetchMenus() async {
    final response = await supabase.from('Menu').select('*');
    setState(() {
      menus = List<Map<String, dynamic>>.from(response);
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    if (index == 1) {
      // Navigate to Cart
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => CartPage()),
      );
    } else if (index == 2) {
      // Navigate to Admin
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => AdminPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // button menu start
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
                    icon: Icon(Icons.menu),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            // button menu end

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
                      offset: Offset(0, 2))
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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // container all start
              Container(
                margin: EdgeInsets.only(top: 30),
                height: 85,
                width: 80,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 5,
                        spreadRadius: 2,
                        offset: Offset(0, 1.5))
                  ],
                ),
                child: Container(
                  margin: const EdgeInsets.all(9),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/burger.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

              //container all end

              // container makanan start
              Container(
                margin: EdgeInsets.only(top: 30),
                height: 85,
                width: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 5,
                        spreadRadius: 2,
                        offset: Offset(0, 1.5))
                  ],
                ),
                child: Container(
                  margin: const EdgeInsets.all(9),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/burger.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

              //container makanan end

              // container minuman start
              Container(
                margin: EdgeInsets.only(top: 30),
                height: 85,
                width: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 5,
                        spreadRadius: 2,
                        offset: Offset(0, 1.5))
                  ],
                ),
                child: Container(
                  margin: const EdgeInsets.all(9),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: Image.asset(
                      'assets/teh.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              // container minuman end
            ],
          ),
          // teks 3 container start
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 60,
                child: Center(
                  child: Text(
                    "All",
                  ),
                ),
              ),
              SizedBox(
                width: 64,
                child: Center(
                  child: Text(
                    "Makanan",
                  ),
                ),
              ),
              SizedBox(
                width: 65,
                child: Center(
                  child: Text(
                    "Minuman",
                  ),
                ),
              ),
            ],
          ),
          // teks 3 container end
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 40, top: 50),
                child: Text(
                  "All Food",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
          // daftar produk start
          Expanded(
  child: GridView.builder(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2, 
      crossAxisSpacing: 10,
      mainAxisSpacing: 10, 
      childAspectRatio: 0.8, 
    ),
    itemCount: menus.length,
    itemBuilder: (context, index) {
      final menu = menus[index];
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 164,
              height: 210,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  )
                ],
              ),
              child: SizedBox(
                width: 150,
                height: 147,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.network(
                          menu['gambar'],
                          width: 150,
                          height: 147,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    SizedBox(
                      width: 140,
                      child: Text(
                        menu['nama'],
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: 88,
                          child: Text(
                            '${menu['harga'].toStringAsFixed(2)}',
                            style: TextStyle(
                              fontSize: 11,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.add_circle,
                          color: Colors.green,
                          size: 20,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    },
  ),
)

          // daftar produk end
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 10,
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list_alt),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}










// Author: Ginmothra