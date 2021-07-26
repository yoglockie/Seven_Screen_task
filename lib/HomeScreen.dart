// import 'dart:html';

// import 'dart:math';

// import 'dart:math';

import 'package:flutter/material.dart';
import 'package:seven_screens/account.dart';
import 'package:seven_screens/main.dart';
// import 'package:hexcolor/hexcolor.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

void main() {
  runApp(MyAp());
}

class MyAp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomeScreen(),
    );
  }
}

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  _MyHomeScreenState createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  late Razorpay _razorpay;

  @override
  void initState() {
    super.initState();
    _razorpay = Razorpay();
    // _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    // _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    // _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  void openCheckout() async {
    var options = {
      'key': 'rzp_test_HyHKZ3MgASFCkE',
      'amount': 2900,
      'name': 'Lokesh',
      'description': 'Payment',
      'prefill': {'contact': '8888888888', 'email': 'test@razorpay.com'},
      'external': {
        'wallets': ['paytm']
      }
    };

    try {
      _razorpay.open(options);
    } catch (e) {
      debugPrint(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Home Screen"),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 4,
              width: MediaQuery.of(context).size.width,
              color: Colors.green,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Account()));
                },
                child: Container(
                  child: Center(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Image.asset(
                            "assets/userbarimage.png",
                            height: 40,
                            width: 50,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            "8239479183",
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 35.0),
                          child: Icon(
                            Icons.arrow_right,
                            size: 40,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            ListTile(
              title: Text(
                "Order History",
                style: TextStyle(fontSize: 15),
              ),
              leading: Icon(Icons.menu),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                "Help & Support",
                style: TextStyle(fontSize: 15),
              ),
              leading: Icon(Icons.call),
            ),
            ListTile(
              title: Text(
                "Updates",
                style: TextStyle(fontSize: 15),
              ),
              leading: Icon(Icons.sync),
            ),
            ListTile(
              title: Text(
                "Logout",
                style: TextStyle(fontSize: 15),
              ),
              leading: Icon(Icons.logout),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        // title: Text("Are you sure you want logout ?"),
                        content: Text("Are you sure you want logout ?"),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text("No")),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MyApp()));
                              },
                              child: Text("Yes, Logout"))
                        ],
                      );
                    });
              },
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Image.asset("assets/welcome.jpg"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: ElevatedButton(
                  onPressed: () {
                    openCheckout();
                  },
                  child: Text("Complete the Payment")),
            )
          ],
        ),
      ),
    );
  }
}
