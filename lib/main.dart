import 'package:flutter/material.dart';
import 'package:project7/screens/second.dart';

void main() {
  runApp(const MyApp());
}

// List list = ["1", "2", "3", "4", "5"];
List list = [1, 2, 3, 4, 5];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'List'),

      // initialRoute: '/first',
      // routes: {
      //   "/first": (context) =>
      //       const MyHomePage(title: 'Flutter Demo Home Page'),
      //   "/second": (context) => const SecondScreen(item: null,)
      // },
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/second':
            var data = settings.arguments as info;
            print(data);
            return MaterialPageRoute(
                builder: (context) => SecondScreen(
                      item: data.data1,
                      str: data.data2,
                    ));
        }
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
          margin: const EdgeInsets.all(10),
          child: ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, index) {
              return InkWell(
                child: Container(
                  // color: Color.fromARGB(255, 235, 216, 158),
                  margin: const EdgeInsets.all(10),
                  child: Text(list[index]),
                ),
                onTap: () {
                  Navigator.pushNamed(context, "/second",
                      arguments: info(list[index], "hello"));
                },
              );
            },
          )),
    );
  }
}

class info {
  var data1, data2;
  info(this.data1, this.data2);
}
