import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        home: MainScreen());
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('Study Session'),
        elevation: 0,
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(children: [
          Card(
            child: ListTile(
              title: const Text('2/4/23 - Saturday'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) {
                  return const Saturday();
                })));
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('2/5/23 - Sunday'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) {
                  return const Sunday();
                })));
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('2/6/23 - Monday'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) {
                  return const Monday();
                })));
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('2/7/23 - Tuesday'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) {
                  return const Tuesday();
                })));
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('2/8/23 - Wednesday'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) {
                  return const Wednesday();
                })));
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('2/9/23 - Thursday'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) {
                  return const Thursday();
                })));
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('2/12/23 - Sunday'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) {
                  return const Sunday1();
                })));
              },
            ),
          ),
        ]),
      ),
    );
  }
}

class Saturday extends StatelessWidget {
  const Saturday({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title: const Text('Saturday - Study'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 400,
                width: 400,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: NetworkImage(
                          'https://images.pexels.com/photos/13739093/pexels-photo-13739093.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      fit: BoxFit.cover),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(10, 10),
                        blurRadius: 5.0,
                        spreadRadius: 2.0)
                  ],
                  borderRadius: BorderRadius.circular(20),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Sunday extends StatelessWidget {
  const Sunday({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sunday - Study'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        elevation: 0,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Image.network(
                height: 250,
                width: double.infinity,
                'https://images.pexels.com/photos/1108701/pexels-photo-1108701.jpeg?auto=compress&cs=tinysrgb&w=1600',
                fit: BoxFit.cover,
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(30),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Oeschinen Lake Compound',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'Kandersteg, Switzerland',
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.star,
                                color: Colors.orange,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text('41')
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              IconButton(
                                  onPressed: (() {
                                    debugPrint('Call');
                                  }),
                                  icon: const Icon(Icons.phone)),
                              const Text('CALL')
                            ],
                          ),
                          Column(
                            children: [
                              IconButton(
                                  onPressed: (() {
                                    debugPrint('Route');
                                  }),
                                  icon: const Icon(Icons.location_on)),
                              const Text('ROUTE'),
                            ],
                          ),
                          Column(
                            children: [
                              IconButton(
                                  onPressed: (() {
                                    debugPrint('Share');
                                  }),
                                  icon: const Icon(Icons.share)),
                              const Text('SHARE'),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'Lake Oeschinen lies at the foot of the Bluemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to a lake, which warms to 20 degrees Celcius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.',
                        textAlign: TextAlign.justify,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Monday extends StatefulWidget {
  const Monday({super.key});

  @override
  State<Monday> createState() => _MondayState();
}

class _MondayState extends State<Monday> {
  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Monday - Study'),
        backgroundColor: Colors.blueGrey,
      ),
      body: SafeArea(
          child: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://images.pexels.com/photos/3408353/pexels-photo-3408353.jpeg?auto=compress&cs=tinysrgb&w=1600'),
                fit: BoxFit.cover),
          ),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${time.hour} : ${time.minute}',
                style: const TextStyle(fontSize: 40),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: (() {
                    setState(() {
                      time = DateTime.now();
                    });
                  }),
                  child: const Text('Refresh'))
            ],
          ),
        ),
      )),
    );
  }
}

class Tuesday extends StatelessWidget {
  const Tuesday({super.key});

  @override
  Widget build(BuildContext context) {
    final actions = ['Add', 'Send', 'Receive', 'Pay Bill', 'More'];
    final icons = [
      const Icon(
        Icons.add,
        color: Colors.white,
      ),
      const Icon(
        Icons.send,
        color: Colors.white,
      ),
      const Icon(
        Icons.arrow_downward_rounded,
        color: Colors.white,
      ),
      const Icon(
        Icons.payments_rounded,
        color: Colors.white,
      ),
      const Icon(
        Icons.grid_view_outlined,
        color: Colors.white,
      )
    ];
    final transactionDetails = [
      'Google Course',
      'Microsoft',
      'Dribble',
      'LinkedIn',
      'Github'
    ];

    final purchaseType = [
      'App Design Basics',
      'Subscriptions',
      'Subscriptions',
      'Subscriptions',
      'Subscriptions'
    ];

    final logoLinks = [
      'https://cdn-icons-png.flaticon.com/512/300/300221.png',
      'https://cdn-icons-png.flaticon.com/512/732/732221.png',
      'https://cdn-icons-png.flaticon.com/512/2374/2374595.png',
      'https://cdn-icons-png.flaticon.com/512/3536/3536505.png',
      'https://cdn-icons-png.flaticon.com/512/733/733553.png'
    ];
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          SizedBox(
            height: 40,
            width: 40,
            child: ElevatedButton(
              onPressed: (() {
                debugPrint('Pressed');
              }),
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff1b221f),
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(5)),
              child: const Icon(Icons.payment),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          SizedBox(
            height: 40,
            width: 40,
            child: ElevatedButton(
              onPressed: (() {
                debugPrint('Pressed');
              }),
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff1b221f),
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(5)),
              child: Image.network(
                'https://cdn-icons-png.flaticon.com/512/4333/4333609.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
      backgroundColor: const Color(0xff090b0a),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const [
                  Text(
                    'Total Balance',
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                  Text(
                    'USD 1,500.00',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 35),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromARGB(255, 72, 127, 130),
                        Color(0xff1e232f),
                        Color(0xff43395c)
                      ])),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Icon(
                          Icons.sim_card,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Icon(
                          Icons.rss_feed,
                          color: Colors.white,
                          size: 35,
                        ),
                      )
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      '1234 5678 9000',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'monospace',
                          wordSpacing: 10,
                          fontSize: 25),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const [
                            Text(
                              'Christian Darvin',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                            SizedBox(
                              width: 40,
                            ),
                            Text(
                              '07/23',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Image.network(
                                fit: BoxFit.cover,
                                height: 50,
                                'https://cdn-icons-png.flaticon.com/512/217/217425.png'),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: SizedBox(
                  height: 100,
                  child: ListView.separated(
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          width: 20,
                        );
                      },
                      itemCount: actions.length,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: ((context, index) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: (() {
                                debugPrint('Pressed');
                              }),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xff1b221f),
                                  shape: const CircleBorder(),
                                  padding: const EdgeInsets.all(20)),
                              child: icons[index],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              actions[index],
                              style: const TextStyle(color: Colors.white),
                            )
                          ],
                        );
                      }))),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Transaction',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  TextButton(
                      onPressed: (() {}),
                      child: const Text(
                        'See all',
                        style: TextStyle(color: Colors.grey, fontSize: 17),
                      )),
                ],
              ),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: ((context, index) {
                      return Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          color: const Color(0xff11171c),
                          margin: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 8),
                          child: ListTile(
                            onTap: () {},
                            title: Text(
                              transactionDetails[index],
                              style: const TextStyle(color: Colors.white),
                            ),
                            subtitle: Text(
                              purchaseType[index],
                              style: const TextStyle(color: Colors.grey),
                            ),
                            leading: CircleAvatar(
                              backgroundColor: const Color(0xff080a09),
                              child: Image.network(
                                logoLinks[index],
                                fit: BoxFit.cover,
                                height: 25,
                              ),
                            ),
                          ));
                    })))
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          elevation: 0,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.payment), label: 'Transactions'),
            BottomNavigationBarItem(
                icon: Icon(Icons.stacked_line_chart_outlined), label: 'Blank'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
          ]),
      floatingActionButton: FloatingActionButton(
        onPressed: (() {}),
        backgroundColor: const Color(0xff15e9ff),
        child: const Icon(
          Icons.qr_code_scanner_outlined,
          color: Colors.black,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class Wednesday extends StatelessWidget {
  const Wednesday({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://images.pexels.com/photos/4792349/pexels-photo-4792349.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
              fit: BoxFit.cover),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  width: double.infinity,
                  margin: const EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        'Sweet &',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 40),
                      ),
                      Text(
                        'Smart Home',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 40),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'You can control your smart home and you live in future',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Center(
                  child: SizedBox(
                    height: 55,
                    width: 300,
                    child: ElevatedButton(
                      onPressed: (() {
                        Navigator.push(context,
                            MaterialPageRoute(builder: ((context) {
                          return const WednesdayA1();
                        })));
                      }),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: const Text(
                        'Get Started',
                        style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}

class WednesdayA1 extends StatefulWidget {
  const WednesdayA1({super.key});

  @override
  State<WednesdayA1> createState() => _WednesdayA1State();
}

class _WednesdayA1State extends State<WednesdayA1> {
  bool isSwitched = false;
  bool isSwitched1 = false;
  bool isSwitched2 = false;
  bool isSwitched3 = false;
  String status = 'OFF';
  String status1 = 'OFF';
  String status2 = 'OFF';
  String status3 = 'OFF';
  int connectedDevices = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff191715),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: (() {
                      Navigator.pop(context);
                    }),
                    icon: const Icon(
                      Icons.horizontal_split,
                      size: 30,
                    ),
                    color: Colors.white,
                  ),
                  TextButton(
                      onPressed: (() {}),
                      child: const CircleAvatar(
                        backgroundColor: Colors.transparent,
                        backgroundImage: NetworkImage(
                            'https://cdn-icons-png.flaticon.com/512/4140/4140061.png'),
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Good Morning, Alex',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text('$connectedDevices Devices are active now',
                      style: const TextStyle(fontSize: 18, color: Colors.grey))
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: const LinearGradient(
                      colors: [Color(0xff1f1f1f), Color(0xff302321)])),
              height: 100,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.cloudy_snowing,
                          color: Colors.white,
                          size: 40,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Rain Shower',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text('London - Jun15',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                ))
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        Text('26 C',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold))
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(25),
                child: GridView.count(
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  crossAxisCount: 2,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: isSwitched
                              ? const Color(0xffff6041)
                              : const Color(0xff1f1f1f)),
                      height: 100,
                      width: 100,
                      child: Column(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            isSwitched
                                ? const Text(
                                    'ON',
                                    style: TextStyle(color: Colors.white),
                                  )
                                : const Text(
                                    'OFF',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                            Switch(
                                activeColor: Colors.white,
                                activeTrackColor: const Color(0xffd33a1e),
                                value: isSwitched,
                                onChanged: (value) {
                                  setState(() {
                                    isSwitched = !isSwitched;
                                    isSwitched
                                        ? connectedDevices++
                                        : connectedDevices--;
                                  });
                                })
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 12),
                          alignment: Alignment.bottomLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Icon(
                                Icons.lightbulb,
                                size: 45,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Lights',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              )
                            ],
                          ),
                        )
                      ]),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: isSwitched1
                              ? const Color(0xffff6041)
                              : const Color(0xff1f1f1f)),
                      height: 100,
                      width: 100,
                      child: Column(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            isSwitched1
                                ? const Text(
                                    'ON',
                                    style: TextStyle(color: Colors.white),
                                  )
                                : const Text(
                                    'OFF',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                            Switch(
                                activeColor: Colors.white,
                                activeTrackColor: const Color(0xffd33a1e),
                                value: isSwitched1,
                                onChanged: (value) {
                                  setState(() {
                                    isSwitched1 = !isSwitched1;
                                    isSwitched1
                                        ? connectedDevices++
                                        : connectedDevices--;
                                  });
                                })
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 12),
                          alignment: Alignment.bottomLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Icon(
                                Icons.tv_rounded,
                                size: 45,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Smart TV',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              )
                            ],
                          ),
                        )
                      ]),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: isSwitched2
                              ? const Color(0xffff6041)
                              : const Color(0xff1f1f1f)),
                      height: 100,
                      width: 100,
                      child: Column(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            isSwitched2
                                ? const Text(
                                    'ON',
                                    style: TextStyle(color: Colors.white),
                                  )
                                : const Text(
                                    'OFF',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                            Switch(
                                activeColor: Colors.white,
                                activeTrackColor: const Color(0xffd33a1e),
                                value: isSwitched2,
                                onChanged: (value) {
                                  setState(() {
                                    isSwitched2 = !isSwitched2;
                                    isSwitched2
                                        ? connectedDevices++
                                        : connectedDevices--;
                                  });
                                })
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 12),
                          alignment: Alignment.bottomLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Icon(
                                Icons.air,
                                size: 45,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Air Conditioner',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              )
                            ],
                          ),
                        )
                      ]),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: isSwitched3
                              ? const Color(0xffff6041)
                              : const Color(0xff1f1f1f)),
                      height: 100,
                      width: 100,
                      child: Column(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            isSwitched3
                                ? const Text(
                                    'ON',
                                    style: TextStyle(color: Colors.white),
                                  )
                                : const Text(
                                    'OFF',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                            Switch(
                                activeColor: Colors.white,
                                activeTrackColor: const Color(0xffd33a1e),
                                value: isSwitched3,
                                onChanged: (value) {
                                  setState(() {
                                    isSwitched3 = !isSwitched3;
                                    isSwitched3
                                        ? connectedDevices++
                                        : connectedDevices--;
                                  });
                                })
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 12),
                          alignment: Alignment.bottomLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Icon(
                                Icons.router,
                                size: 45,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Wi-Fi',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              )
                            ],
                          ),
                        )
                      ]),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Thursday extends StatelessWidget {
  const Thursday({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            'https://i.pinimg.com/originals/6d/09/59/6d09598d0d19bf326b63523495b05fba.jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: const Text(
            'THE LAST OF US',
            style: TextStyle(
                fontFamily: 'AC Compacta', wordSpacing: 2, fontSize: 30),
          ),
          elevation: 0,
          leading: IconButton(
              onPressed: (() {}), icon: const Icon(Icons.density_medium)),
          actions: [
            IconButton(
                onPressed: (() {}),
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff171719)),
                icon: const Icon(
                  Icons.question_mark,
                  color: Colors.grey,
                )),
          ],
        ),
        backgroundColor: Colors.transparent,
        body: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 95,
              ),
              Container(
                // color: Colors.red,
                height: 250,
                margin: const EdgeInsets.all(15),
                width: 250,
                // color: Colors.red,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          Text(
                            'Ellie',
                            style: TextStyle(
                                fontFamily: 'AC Compacta',
                                color: Colors.white,
                                fontSize: 50),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Text('19 y/o',
                              style: TextStyle(
                                  fontFamily: 'AC Compacta',
                                  color: Colors.white,
                                  wordSpacing: 5,
                                  fontSize: 20))
                        ]),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'Williams',
                      style: TextStyle(
                          fontFamily: 'AC Compacta',
                          color: Colors.white,
                          fontSize: 50),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                        '~ I\'m gonna find and I\'m gonna kill every last one of them. ~',
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: 180,
                      height: 50,
                      // color: Colors.blue,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(width: 1, color: Colors.white)),
                            child: IconButton(
                              onPressed: (() {}),
                              icon: const Icon(Icons.person),
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(width: 1, color: Colors.white)),
                            child: IconButton(
                              onPressed: (() {}),
                              icon: const Icon(Icons.gamepad_rounded),
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(width: 1, color: Colors.white)),
                            child: IconButton(
                              onPressed: (() {}),
                              icon: const Icon(
                                  Icons.local_fire_department_outlined),
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(15),
                child: const Text(
                  'Ellie\'s Story',
                  style: TextStyle(
                      fontFamily: 'AC Compacta',
                      color: Colors.white,
                      fontSize: 35),
                ),
              ),
              Flexible(
                child: Container(
                  margin: const EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Flexible(
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                                image: NetworkImage(
                                    'https://cdn.dribbble.com/userupload/4452817/file/original-5a712d52c155c869ed4a0658e4072e64.png?compress=1&resize=1024x1536&vertical=center'),
                                fit: BoxFit.cover),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'TLOU',
                                  style: TextStyle(
                                      color: Colors.grey.shade200,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Text(
                                  'Part 1',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                                image: NetworkImage(
                                    'https://cdn.dribbble.com/userupload/4452818/file/original-dc46389b1c1f4af3f59e0741e2124333.png?compress=1&resize=1024x1536&vertical=center'),
                                fit: BoxFit.cover),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'TLOU',
                                  style: TextStyle(
                                      color: Colors.grey.shade200,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Text(
                                  'Left Behind',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                                image: NetworkImage(
                                    'https://cdn.dribbble.com/userupload/4452819/file/original-9b5233b86d8fa67404b95ab13cce0593.png?compress=1&resize=1024x1536&vertical=center'),
                                fit: BoxFit.cover),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'TLOU',
                                  style: TextStyle(
                                      color: Colors.grey.shade200,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Text(
                                  'Part 2',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Sunday1 extends StatelessWidget {
  const Sunday1({super.key});

  @override
  Widget build(BuildContext context) {
    final imgLinks = [
      'https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'https://images.pexels.com/photos/1181391/pexels-photo-1181391.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'https://images.pexels.com/photos/709188/pexels-photo-709188.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'https://images.pexels.com/photos/2379005/pexels-photo-2379005.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'https://images.pexels.com/photos/1681010/pexels-photo-1681010.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'https://images.pexels.com/photos/2770600/pexels-photo-2770600.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
    ];

    final names = [
      'Joseph Young',
      'James Wilcox',
      'Marcus Ward',
      'Joseph Rodriguez',
      'Zachary Wilson',
      'Oscar Klein'
    ];
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Icon(Icons.pin_drop_outlined),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Paris, France',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.keyboard_arrow_down)
                    ],
                  ),
                  const CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    hintText: 'Search City, Address...'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Top rated tour guides near you',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: GridView.builder(
                    itemCount: 6,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 10,
                            mainAxisExtent: 240,
                            crossAxisSpacing: 10),
                    itemBuilder: ((context, index) {
                      return Card(
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                flex: 2,
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  ),
                                  child: Container(
                                    width: double.infinity,
                                    alignment: Alignment.topRight,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image:
                                                NetworkImage(imgLinks[index]),
                                            fit: BoxFit.cover)),
                                    child: const Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child: Icon(
                                        Icons.check_circle_outlined,
                                        color: Colors.green,
                                        size: 30,
                                      ),
                                    ),
                                  ),
                                )),
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12.0, vertical: 5),
                                  child: Text(
                                    names[index],
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        '14/hr',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      IconButton(
                                          onPressed: (() {}),
                                          icon:
                                              const Icon(Icons.bookmark_border))
                                    ],
                                  ),
                                )
                              ],
                            ))
                          ],
                        ),
                      );
                    })),
              ),
            )
          ],
        ),
      ),
    );
  }
}
