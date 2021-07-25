import 'package:flutter/material.dart';
import 'package:seven_screens/address.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Account"),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(80, 30, 60, 0),
            child: Image.asset(
              "assets/userimage.png",
              height: 100,
              width: 100,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(140, 10, 60, 0),
            child: Text(
              "8239479183",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 55,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Your Name",
                    prefixIcon: Icon(Icons.person),
                    border: InputBorder.none,
                    suffixIcon: Icon(Icons.edit)),
              ),
            ),
          ),
          Container(
            height: 55,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: "Email",
                    prefixIcon: Icon(Icons.email),
                    border: InputBorder.none,
                    suffixIcon: Icon(Icons.edit)),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Address()));
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 100),
              child: Container(
                height: 40,
                width: 160,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.green, width: 1.0),
                ),
                child: Center(
                  child: Text(
                    "ADD ADDRESS",
                    style: TextStyle(color: Colors.green, fontSize: 15),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
