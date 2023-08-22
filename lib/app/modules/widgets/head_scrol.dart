// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class MyTabBar extends StatefulWidget {
  @override
  _MyTabBarState createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Widget _buildTab(String title, bool isActive) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: isActive ? Colors.blue : null,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Text(
        title,
        style: TextStyle(
          color: isActive ? Colors.white : Colors.black,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: _tabController,
          indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Colors.transparent,
          ),
          tabs: [
            _buildTab('All Crypto', _tabController.index == 0),
            _buildTab('Spot Market', _tabController.index == 1),
            _buildTab('Fund Raisers', _tabController.index == 2),
          ],
          onTap: (index) {
            setState(() {
              _tabController.index = index;
            });
          },
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              Center(child: Text('All Crypto Content')),
              Center(child: Text('Spot Market Content')),
              Center(child: Text('Fund Raisers Content')),
            ],
          ),
        ),
      ],
    );
  }
}

// class MarketView extends StatelessWidget {
//   const MarketView({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.fromLTRB(18, 20, 18, 0),
//         child: MyTabBar(),
//       ),
//     );
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     home: MarketView(),
//   ));
// }

// class MyTabBar extends StatefulWidget {
//   @override
//   _MyTabBarState createState() => _MyTabBarState();
// }

// class _MyTabBarState extends State<MyTabBar>
//     with SingleTickerProviderStateMixin {
//   late TabController _tabController;

//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 3, vsync: this);
//   }

//   @override
//   void dispose() {
//     _tabController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Tab Bar Example'),
//         bottom: TabBar(
//           controller: _tabController,
//           indicator: BoxDecoration(
//             borderRadius: BorderRadius.circular(4),
//             color: Colors.blue,
//           ),
//           indicatorPadding: EdgeInsets.symmetric(horizontal: 8),
//           tabs: [
//             Tab(
//               child: Text(
//                 'All Crypto',
//                 style: TextStyle(
//                   color:
//                       _tabController.index == 0 ? Colors.white : Colors.black,
//                 ),
//               ),
//             ),
//             Tab(
//               child: Text(
//                 'Spot Market',
//                 style: TextStyle(
//                   color:
//                       _tabController.index == 1 ? Colors.white : Colors.black,
//                 ),
//               ),
//             ),
//             Tab(
//               child: Text(
//                 'Fund Raisers',
//                 style: TextStyle(
//                   color:
//                       _tabController.index == 2 ? Colors.white : Colors.black,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//       body: TabBarView(
//         controller: _tabController,
//         children: [
//           Center(child: Text('All Crypto Content')),
//           Center(child: Text('Spot Market Content')),
//           Center(child: Text('Fund Raisers Content')),
//         ],
//       ),
//     );
//   }
// }



// class HeadScroll extends StatelessWidget {
//   const HeadScroll({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;

//     return Column(children: [
//       Container(
//         width: size.width,
//         height: size.height * 0.05,
//         color: Colors.red,
//       )
//     ]);
//   }
// }

// class HeadScroll extends StatelessWidget {
//   const HeadScroll({
//     super.key,
//   });

//   List<String> items = ["Watchlists" "Watchlists" "Watchlists"];

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.all(5),
//       width: double.infinity,
//       height: double.infinity,
//       child: Column(
//         children: [
//           SizedBox(
//             height: 30,
//             width: double.infinity,
//             child: ListView.builder(
//               physics: const BouncingScrollPhysics(),
//               itemCount: items.length,
//               scrollDirection: Axis.horizontal,
//               itemBuilder: (context, index) {
//                 return Container(
//                   margin: EdgeInsets.all(5),
//                   width: 87,
//                   height: 33,
//                   // decoration: BoxDecoration(),
//                   child: Center(
//                     child: Text(
//                       items[index],
//                       style: TextStyle(
//                         color: Colors.black,
//                       ),
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
