import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());

  Car myCar = Car("Tesla", "Model 3", "Blue");
  myCar.registrationInfo("JAA 1", "user001");

}

 String firstName = "YC";
  String lastName = "Tan";
  int num1 = 2;
  double num2 = 2.5;
  var add1 = 0; 
  bool nameState = true;
  String? middleName = null;
  
  int sum({required int n1, int n2 = 5}){
    return n1 + n2;
  }
  String showFullName(String firstName, String lastName, [String? middleName]) {
  if (middleName != null) {
    return "$firstName $middleName $lastName";
  } else {
    return "$firstName $lastName";
  }
}

void printNames(String firstName, String lastName, [String? middleName]) {
  int times = (middleName != null) ? 5 : 3;
  for (int i = 0; i < times; i++) {
    print(showFullName(firstName, lastName, middleName));
  }
}

  class Car{
    String carName;
    String carModel;
    String carColour;

    Car(this.carName, this.carModel, this.carColour);

    String registrationInfo(String numberPlate, String userID){
      return 'Car Name: $carName\n'
      'Car Model: $carModel\n'
      'Car Colour: $carColour\n'
      'Number Plate: $numberPlate\n'
      'User ID: $userID';
    }
    
  }

  
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const MyHomePage(title: "Tan You Chun's First App"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;

  




  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Hello, my name is $firstName $lastName"),
            const SizedBox(height: 10),
            Image.network(
              'https://static.wikia.nocookie.net/reddwarf/images/6/69/Ainsley_Harriott.jpg/revision/latest/scale-to-width-down/1000?cb=20180223100130',
            ),
          ],
        ),
      ),
    );
  }
}

