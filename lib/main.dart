import 'package:flutter/material.dart';
import 'package:provex/my_drawer.dart';
import 'package:provex/my_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: ChangeNotifierProvider<MyProvider>(
        child:MyHomePage(),
        create: (context){return MyProvider();},
      ),



    );
  }
}

class MyHomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          title: Text("Demo"),
        ),
        body: null,
        drawer: MyDrawer(),

      ),
      themeMode:Provider.of<MyProvider>(context).tm ,
      darkTheme: ThemeData(
          primaryColor: Colors.black
      ),
      theme: ThemeData(
          primaryColor: Colors.white
      ),

    ) ;
  }
}
