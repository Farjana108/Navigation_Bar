import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorSchemeSeed: Colors.pink
      ),
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatefulWidget {

  @override
  State<HomeScreen> createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  List<Widget> screens = [
    const Text ('Home'),
    const Text ('Setting'),
    const Text ('Profile'),
    const Text ('Serch'),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text ('Home'),
      ),
      body: Center(child: screens[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5,
        currentIndex: _selectedIndex = 0,
        backgroundColor: Colors.blueGrey,
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.black,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedFontSize: 14,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold

        ),
        onTap: (index){
          print(index);
          _selectedIndex = index;
          setState(() {});
        },
        items: [
          const BottomNavigationBarItem(icon:  Icon(Icons.home), label: 'Home'),
          const BottomNavigationBarItem(icon:  Icon(Icons.settings), label: 'Setting'),
          const BottomNavigationBarItem(icon:  Icon(Icons.person), label: 'Profile'),
          const BottomNavigationBarItem(icon:  Icon(Icons.search), label: 'Search'),
        ],
      ),
    );
  }
}
class _SecondScreen extends StatefulWidget {
  const _SecondScreen({super.key});

  @override
  State<_SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<_SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
