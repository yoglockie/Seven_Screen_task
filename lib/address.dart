import 'package:flutter/material.dart';

class Address extends StatelessWidget {
  const Address({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Address"),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 25),
            child: TextField(
              decoration: InputDecoration(labelText: "Full Name"),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 25),
            child: TextField(
              decoration:
                  InputDecoration(labelText: "House no / Building name*"),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 25),
            child: TextField(
              decoration: InputDecoration(
                  labelText: "Locality", border: InputBorder.none),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 25),
            child: TextField(
              decoration:
                  InputDecoration(labelText: "City", border: InputBorder.none),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 25),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Pincode", border: InputBorder.none),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100.0, left: 50, right: 50),
            child: ElevatedButton(onPressed: () {}, child: Text("Add Address")),
          )
        ],
      ),
    );
  }
}
