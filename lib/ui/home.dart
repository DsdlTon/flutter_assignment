import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    Text("Home", style: TextStyle(fontSize: 36.0)),
    Text("Nofity", style: TextStyle(fontSize: 36.0)),
    Text("Map", style: TextStyle(fontSize: 36.0)),
    Text("Profile", style: TextStyle(fontSize: 36.0)),
    Text("Setup", style: TextStyle(fontSize: 36.0)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: _pages[_currentIndex],
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Theme.of(context).primaryColor,
        ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              title: Text("Home"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              title: Text("Notify"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.navigation),
              title: Text("Navigation"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text("Profile"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text("Setup"),
            ),
          ],
          onTap: (int i) {
            setState(() {
              _currentIndex = i;
            });
          },
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';

// class HomePage extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return HomePageState();
//   }
// }

// class HomePageState extends State<HomePage> {
//   int _selectedPage = 0;
//   final _pageOptions = [
//     Text('Home', style: TextStyle(fontSize: 36.0),),
//     Text('Notify', style: TextStyle(fontSize: 36.0),),
//     Text('Map', style: TextStyle(fontSize: 36.0),),
//     Text('Profile'),
//     Text('Setup'),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Home"),
//       ),
//       body: _pageOptions[_selectedPage],
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex:_selectedPage,
//         onTap: (int index) {
//           setState(() {
//             _selectedPage = index;
//           });
//         },
//         items: [
//           BottomNavigationBarItem(
//             icon:Icon(Icons.view_quilt),
//             title: Text("Home")
//           ),
//           BottomNavigationBarItem(
//             icon:Icon(Icons.notifications),
//             title: Text("Notify")
//           ),
//           BottomNavigationBarItem(
//             icon:Icon(Icons.explore),
//             title: Text("Map")
//           ),
//           BottomNavigationBarItem(
//             icon:Icon(Icons.person),
//             title: Text("Profile")
//          ),
//           BottomNavigationBarItem(
//             icon:Icon(Icons.settings),
//             title: Text("Setup")
//           ),
//         ],
//       ),
//     );
//   }
// }
