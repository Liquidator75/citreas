import 'package:citreas/config/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tabdynamic extends StatelessWidget {
  const Tabdynamic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: TabBarView(
      children: [
        // Content for 'All Crypto' tab
        Text('All Crypto'),
        // Content for 'Spot Market' tab
        DefaultTabController(
          length: 5,
          child: SingleChildScrollView(
            physics: ClampingScrollPhysics(),
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TabBar(
                      isScrollable: true,
                      tabs: [
                        Tab(text: 'All'),
                        Tab(text: 'Metaverse'),
                        Tab(text: 'Gaming'),
                        Tab(text: 'DeFi'),
                        Tab(text: 'Innovation'),
                      ],
                      labelColor: xverseColor,
                      unselectedLabelColor: textColor,
                      indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: selectorColor.withOpacity(.1),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  // Adjust the height of the TabBarView
                  child: TabBarView(
                    children: [
                      // Content for 'All' tab
                      ListView.builder(
                        itemCount:
                            10, // Replace cryptoItems with your actual list of crypto items
                        itemBuilder: (context, index) {
                          // final cryptoItem = cryptoItems[index]; // Replace cryptoItems with your actual list of crypto items

                          return ListTile(
                            leading: Text('Nice'),
                            // leading: CircleAvatar(
                            //   backgroundImage: NetworkImage(cryptoItem.imageUrl), // Replace with the URL or image asset of the crypto item
                            // ),
                            // title: Text(cryptoItem.name), // Replace with the name of the crypto item
                            // subtitle: Text(cryptoItem.price), // Replace with the price or any other information of the crypto item
                          );
                        },
                      ),
                      //
                      // Content for 'Metaverse' tab
                      Text('Metaverse'),
                      // Content for 'Gaming' tab
                      Text('Gaming'),
                      // Content for 'DeFi' tab
                      Text('DeFi'),
                      // Content for 'Innovation' tab
                      Text('Innovation'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        // Content for 'Fund Raisers' tab
        Text('Fund Raisers'),
        Text('Fund Raisers'),
      ],
    ));
  }
}
