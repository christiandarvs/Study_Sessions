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

class Monday extends StatelessWidget {
  const Monday({super.key});

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
          child: Text(
            '${time.hour} : ${time.minute}',
            style: const TextStyle(fontSize: 40),
          ),
        ),
      )),
    );
  }
}
