import 'package:flutter/material.dart';
import 'package:nbp_ui/utils/widgets/grid_button.dart';

import '../utils/widgets/account_info_card.dart';

class HomePage extends StatelessWidget {
  // const MyHomePage({super.key, required this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Main body column - Layer 1
          Column(
            children: [
              // Top green container
              Container(
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(6),
                    bottomLeft: Radius.circular(6),
                  ),
                  color: const Color(0xFF0C8240),
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: NetworkImage(
                      'https://upload.wikimedia.org/wikipedia/en/8/83/National_Bank_of_Pakistan_%28logo%29.png',
                    ),
                    opacity: 0.1,
                    alignment: Alignment.centerLeft,
                  ),
                ),
                // Column in a green container to give the space from Top
                child: Column(
                  children: [
                    SizedBox(height: MediaQuery.of(context).padding.top + 40),
                    // Custom AppBar Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Container for Menu and Logo
                        Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 2,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(16),
                              bottomRight: Radius.circular(16),
                            ),
                          ),
                          // Row in a container for Logo and Menu
                          child: Row(
                            children: [
                              Icon(Icons.menu),
                              SizedBox(width: 15),
                              Image.network(
                                height: 20,
                                width: 110,
                                'https://upload.wikimedia.org/wikipedia/en/8/83/National_Bank_of_Pakistan_%28logo%29.png',
                              ),
                              SizedBox(width: 70),
                            ],
                          ),
                        ),
                        // Another Row in AppBar for 3 Icons of Search, notification and logout
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.search, color: Colors.white),
                            SizedBox(width: 20),
                            Icon(Icons.notifications_none, color: Colors.white),
                            SizedBox(width: 20),
                            Icon(Icons.logout, color: Colors.white),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Layer - 1: 2nd Grey column
              Expanded(
                child: Container(
                  color: Colors.grey[200],

                  // To make whole column scrollable
                  child: SingleChildScrollView(
                    // Column in a grey container
                    child: Column(
                      children: [
                        const SizedBox(height: 80),
                        // GridView Expanded
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: GridView(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 10,
                                  childAspectRatio: 0.9,
                                ),
                            children: [
                              GridButton(
                                icon: Icons.account_balance_wallet_outlined,
                                buttonText: 'Account Management',
                              ),
                              GridButton(
                                icon: Icons.account_balance_wallet_outlined,
                                buttonText: 'Card\nManagement',
                              ),
                              GridButton(
                                icon: Icons.account_balance_wallet_outlined,
                                buttonText: 'Beneficary Payments',
                              ),
                              GridButton(
                                icon: Icons.account_balance_wallet_outlined,
                                buttonText: 'Funds Transfer',
                              ),
                              GridButton(
                                icon: Icons.account_balance_wallet_outlined,
                                buttonText: 'Bill Payments',
                              ),
                              GridButton(
                                icon: Icons.account_balance_wallet_outlined,
                                buttonText: 'Mobile Top-up',
                              ),
                              GridButton(
                                icon: Icons.account_balance_wallet_outlined,
                                buttonText: 'Credit Card Payment',
                              ),
                              GridButton(
                                icon: Icons.account_balance_wallet_outlined,
                                buttonText: 'Govt. Payment & Challans',
                              ),
                              GridButton(
                                icon: Icons.account_balance_wallet_outlined,
                                buttonText: 'Donations',
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'More',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 5),
                            Icon(Icons.keyboard_arrow_down, size: 30),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const AccountInfoCard(),
        ],
      ),
    );
  }
}
