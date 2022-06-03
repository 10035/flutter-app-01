import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // *********  APP BAR ************
      appBar: AppBar(
        title: const Text('Travel App'),
        backgroundColor: Color.fromARGB(255, 73, 84, 180),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Go to the next page',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('Next page'),
                    ),
                    body: const Center(
                      child: Text(
                        'This is the next page',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                    // bottomNavigationBar: BottomNavigationBar(
                    //     showUnselectedLabels: true,
                    //     items: const <BottomNavigationBarItem>[
                    //       BottomNavigationBarItem(
                    //         icon: Icon(Icons.home),
                    //         backgroundColor: Color.fromARGB(255, 73, 84, 180),
                    //         label: 'Home',
                            
                    //       ),
                    //       BottomNavigationBarItem(
                    //         icon: Icon(Icons.map),
                    //         label: 'Trips',
                    //         // onPressed: () {}

                    //       ),
                    //       BottomNavigationBarItem(
                    //         icon: Icon(Icons.attach_money),
                    //         label: 'Budgets',
                    //       ),
                    //       BottomNavigationBarItem(
                    //         icon: Icon(Icons.book),
                    //         label: 'Journal',
                    //       ),
                    //       BottomNavigationBarItem(
                    //         icon: Icon(Icons.person),
                    //         // label: 'Friends',
                    //         label: 'Friends',
                    //       ),
                    //     ]),
                  );
                },
              ));
            },
          ),
        ],
      ),

// *********  BODY ************

      body: Center(
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Theme.of(context).colorScheme.outline,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(12)),
          ),
          child: const SizedBox(
            width: 300,
            height: 150,
            // child: Center(child: Text('Outlined Card')),
          ),
        ),
      ),


// *********  BOTTOM NAVBAR ************
      bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              backgroundColor: Color.fromARGB(255, 73, 84, 180),
              label: 'Home',
              // currentIndex: _selectedIndex,
              // onTap: _onItemTapped,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.map),
              label: 'Trips',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.attach_money),
              label: 'Budgets',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: 'Journal',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              // label: 'Friends',
              label: 'Friends',
            ),
          ]),
      // floatingActionButton: const FloatingActionButton(onPressed: null),
    );
  }
}
          
          // void _onItemTapped(int index) {
          //   setState(() {
          //     _selectedIndex = index;
          //   });
          // }