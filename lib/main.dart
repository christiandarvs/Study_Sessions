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
          )
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
          child: Center(
        child: Column(),
      )),
    );
  }
}
