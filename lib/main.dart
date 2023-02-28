import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Professional ID Card'),
        actions: [
          Icon(Icons.bubble_chart_outlined),
          SizedBox(width: 10),
          Icon(Icons.more_vert_rounded),
          SizedBox(width: 15),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/images/profile_image.png',
                      width: 60,
                      height: 60,
                    ),
                  ),
                  const SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Brice Seraphin',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        'Product & Print Designer',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          Icon(
                            Icons.location_on_outlined,
                            color: Colors.blueAccent,
                            size: 17,
                          ),
                          Text(
                            'Paris, France',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      )
                    ],
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.favorite_border_rounded,
                    color: Colors.red,
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: const Text(
                'Lorem ipsum dolor sit amet consectetur adipisicing elit. Corrupti assumenda id voluptas consectetur laudantium iure necessitatibus eum debitis dolore commodi sapiente doloremque, aperiam impedit, harum ipsam sint recusandae voluptatum mollitia?',
                style: TextStyle(fontSize: 13),
              ),
            ),
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Divider(),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  Text('Skills'),
                  Icon(
                    Icons.keyboard_arrow_down_rounded,
                    size: 18,
                  ),
                ],
              ),
            ),
            Wrap(
              direction: Axis.horizontal,
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Color(0x0dffffff),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/app_icon_01.png',
                        width: 40,
                      ),
                      const SizedBox(height: 8),
                      const Text('Photoshop'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
