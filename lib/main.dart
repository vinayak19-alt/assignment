import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Center(
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 40.0,
                  ),
                  const Align(
                    child: Text("Scan Receipt",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                    textAlign: TextAlign.left,
                    ),
                  ),
                  const Text("Tap on The store to start scanning the receipt",
                  textAlign: TextAlign.left,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search any store name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                            color: Colors.blue, // Set your desired border color here
                            width: 2.0, // Set your desired border width here
                          ),
                        ),
                      ),
                      onChanged: (value){
                        print(value);
                      },
                    ),
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.camera,
                      color: Colors.blue,
                    ),
                    trailing: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                        onPressed: null,
                        child: Text("Upload")),
                    title: Text("Upload any bill"),
                  ),
                  Text("5 Stores"),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          child: ListOfStores(
                            icon: Icon(Icons.food_bank),
                            storeName: "Sreeja Kirana",
                            distance: "400m",
                          ),
                        ),
                        Container(
                          child: ListOfStores(
                            icon: Icon(Icons.medical_information),
                            storeName: "Sreeja Medical Store",
                            distance: "450m",
                          ),
                        ),
                        Container(
                          child: ListOfStores(
                            icon: Icon(Icons.store),
                            storeName: "Sreeja General Store",
                            distance: "350m",
                          ),
                        ),
                        Container(
                          child: ListOfStores(
                            icon: Icon(Icons.pets),
                            storeName: "Sreeja Pet Food Store",
                            distance: "400m",
                          ),
                        ),
                        Container(
                          child: ListOfStores(
                            icon: Icon(Icons.wine_bar),
                            storeName: "Sreeja Wine Shop",
                            distance: "200m",
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
        ),
      ),
    );
  }
}

class ListOfStores extends StatelessWidget {
  ListOfStores({required this.icon, required this.storeName, required this.distance});

  final Icon icon;
  final  storeName;
  final String distance;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(storeName),
      trailing: Text(distance),
    );
  }
}


