import 'package:flutter/material.dart';

class BillCounter extends StatefulWidget {
  @override
  _BillCounterState createState() => _BillCounterState();
}

class _BillCounterState extends State<BillCounter> {
  double billAMount = 0.0;
  int _personCounter = 1;
  double _tipPercentage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Container(
                margin: EdgeInsets.only(top: 50),
                alignment: Alignment.center,
                height: 150,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.purple.shade100,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "total amount per person",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "${billCalculator(_personCounter, billAMount).toString()} \$",
                      style: TextStyle(fontSize: 30),
                    ),
                  ],
                )),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            padding: EdgeInsets.all(30),
            height: 400,
            width: 400,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.purple),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                TextField(
                  onChanged: (value) {
                    setState(() {
                      billAMount = double.parse(value);
                    });
                  },
                  decoration: InputDecoration(
                      labelText: "Bill amount",
                      prefixIcon: Icon(Icons.attach_money)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("split by"),
                    Container(
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                _personCounter++;
                              });
                            },
                            child: Container(
                                margin: EdgeInsets.all(10),
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: Colors.purple.shade200,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Icon(Icons.plus_one_sharp)),
                          ),
                          Text(
                            "$_personCounter",
                            style: TextStyle(fontSize: 20),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (_personCounter > 1) {
                                  _personCounter--;
                                }
                              });
                            },
                            child: Container(
                                margin: EdgeInsets.all(10),
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: Colors.purple.shade200,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Icon(Icons.exposure_minus_1_sharp)),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.purple.shade100,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Tip is",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          "40 \$",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    )),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "$_tipPercentage %",
                  style: TextStyle(fontSize: 30),
                ),
                Slider(
                  value: _tipPercentage,
                  min: 0,
                  max: 100,
                  divisions: 10,
                  onChanged: (val) {
                    setState(() {
                      _tipPercentage = val;
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  billCalculator(int splitby, double totalamount) {
    var totalbillamount = 0.0;
    totalbillamount = totalamount / splitby;

    return totalbillamount;
  }
}
