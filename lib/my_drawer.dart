import 'package:flutter/material.dart';
import 'package:provex/my_provider.dart';
import 'package:provider/provider.dart';

class MyDrawer extends StatelessWidget {
  //const ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  Drawer(
      child:Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Light"),
            ),
            Switch(

              value: Provider.of<MyProvider>(context,listen: true).x,
              onChanged: (bool val){return Provider.of<MyProvider>(context,listen: false).switchChanged(val);},
              activeColor: Colors.black,
              inactiveThumbColor: Colors.blue,

            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Dark"),
            ),
          ],
        ),
      ),
    );

  }
}




