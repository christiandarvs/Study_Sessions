import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Sunday(),
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
        title: const Text('Saturday - Study'),
      ),
      body: Center(
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
