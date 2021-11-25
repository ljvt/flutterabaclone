import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ABD Mobile'),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_none_outlined)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.phone_callback)),
        ],
      ),
      drawer: const Drawer(),
      body: Column(
        children: [
          Flexible(
            flex: 3,
            child: Container(
              decoration: const BoxDecoration(
                  gradient: RadialGradient(colors: [
                Colors.white,
                Color(0xFF024466),
              ])),
              child: GridView.count(
                mainAxisSpacing: 2,
                crossAxisSpacing: 1,
                crossAxisCount: 3,
                children: const [
                  WidgetButton(
                    icon: Icons.wallet_membership,
                    label: 'Accounts',
                  ),
                  WidgetButton(
                    icon: Icons.card_travel,
                    label: 'Cards',
                  ),
                  WidgetButton(
                    icon: Icons.money,
                    label: 'Payments',
                  ),
                  WidgetButton(
                    icon: Icons.open_in_new,
                    label: 'New Account',
                  ),
                  WidgetButton(
                    icon: Icons.archive,
                    label: 'Cash to ATM',
                  ),
                  WidgetButton(
                    icon: Icons.transform,
                    label: 'Transfers',
                  ),
                  WidgetButton(
                    icon: Icons.qr_code,
                    label: 'Scan QR',
                  ),
                  WidgetButton(
                    icon: Icons.local_atm_rounded,
                    label: 'Loans',
                  ),
                  WidgetButton(
                    icon: Icons.location_on_sharp,
                    label: 'Locator',
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.only(left: 20),
              width: double.infinity,
              color: const Color(0xFF00BCD5),
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Quick Trasfer',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Text(
                        'Create your template here to make transfer quicker',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ],
                  ),
                  const Positioned(
                    right: -40,
                    bottom: -40,
                    child: Icon(
                      Icons.circle,
                      color: Colors.white,
                      size: 120,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.only(left: 20),
              width: double.infinity,
              color: const Color(0xFFEE534F),
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Quick Payment',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Text(
                        'Paying your bills with templates is faster',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WidgetButton extends StatelessWidget {
  final IconData icon;
  final String label;
  const WidgetButton({
    Key? key,
    required this.icon,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.secondary,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 50,
            color: Colors.white,
          ),
          Text(
            label,
            style: const TextStyle(fontSize: 22, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
