import 'package:aressa_commerce/feature/cart/view/shipTo.dart';
import 'package:flutter/material.dart';

class CartView extends StatefulWidget {
  const CartView({Key key}) : super(key: key);

  @override
  _CartViewState createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  var jumlah = 1;

  void gotoShipTo() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => ShipTo()));
  }

  addAmount(int index) {

  }

  Widget appBar() {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 80,
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.only(left: 16, right: 16),
        child: Text("Your Cart",
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontFamily: 'PoppinsBold',
            )),
    );
  }

  Widget content() {
    return Container(
      margin: EdgeInsets.only(left: 16, right: 16, top: 16),
      child: Column(
        children: [
          Container(
            height: 104,
            padding: EdgeInsets.all(16),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.transparent,
                border: Border.all(
                  color: Colors.grey,
                )),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image(
                    image: AssetImage("lib/asset/image/home/sepatuBiru.png"),
                    height: 72,
                    width: 72,
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(left: 5),
                                    child: Text("Nike Air Zoom Pegasus 36 Miami",
                                        maxLines: 2,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontFamily: 'PoppinsBold')),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10, right: 8),
                                  child: Icon(
                                    Icons.favorite,
                                    size: 24,
                                    color: Color(0xFFFA7182),
                                  ),
                                ),
                                Icon(
                                  Icons.delete_outline,
                                  size: 24,
                                  color: Colors.grey,
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 16, left: 12),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text("299,49",
                                    style: TextStyle(
                                        color: Colors.lightBlue,
                                        fontSize: 12,
                                        fontFamily: 'PoppinsBold')),
                              ),
                              Container(
                                  height: 24,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.transparent,
                                      border: Border.all(
                                        color: Colors.grey,
                                      )),
                                  child: Row(
                                    children: [
                                      FlatButton(
                                        onPressed: () {
                                          setState(() {
                                            jumlah = jumlah - 1;
                                          });
                                        },
                                        child: Text(
                                          "-",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontFamily: 'PoppinsRegular'),
                                        ),
                                        height: 16,
                                        minWidth: 16,
                                      ),
                                      Text(
                                        jumlah.toString(),
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: 'PoppinsRegular'),
                                      ),
                                      FlatButton(
                                        onPressed: () {
                                          setState(() {
                                            jumlah = jumlah + 1;
                                          });
                                        },
                                        child: Text(
                                          "+",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontFamily: 'PoppinsRegular'),
                                        ),
                                        height: 16,
                                        minWidth: 16,
                                      ),
                                    ],
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16),
            height: 104,
            padding: EdgeInsets.all(16),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.transparent,
                border: Border.all(
                  color: Colors.grey,
                )),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image(
                    image: AssetImage("lib/asset/image/home/sepatuMerah.png"),
                    height: 72,
                    width: 72,
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 5),
                                child: Text("Nike Air Zoom Pegasus 36 Miami",
                                    maxLines: 2,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontFamily: 'PoppinsBold')),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10, right: 8),
                                child: Icon(
                                  Icons.favorite,
                                  size: 24,
                                  color: Color(0xFFFA7182),
                                ),
                              ),
                              Icon(
                                Icons.delete_outline,
                                size: 24,
                                color: Colors.grey,
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 16, left: 12),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text("299,49",
                                    style: TextStyle(
                                        color: Colors.lightBlue,
                                        fontSize: 12,
                                        fontFamily: 'PoppinsBold')),
                              ),
                              Container(
                                  height: 24,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.transparent,
                                      border: Border.all(
                                        color: Colors.grey,
                                      )),
                                  child: Row(
                                    children: [
                                      FlatButton(
                                        onPressed: () {
                                          setState(() {
                                            jumlah = jumlah - 1;
                                          });
                                        },
                                        child: Text(
                                          "-",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontFamily: 'PoppinsRegular'),
                                        ),
                                        height: 16,
                                        minWidth: 16,
                                      ),
                                      Text(
                                        jumlah.toString(),
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: 'PoppinsRegular'),
                                      ),
                                      FlatButton(
                                        onPressed: () {
                                          setState(() {
                                            jumlah = jumlah + 1;
                                          });
                                        },
                                        child: Text(
                                          "+",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontFamily: 'PoppinsRegular'),
                                        ),
                                        height: 16,
                                        minWidth: 16,
                                      ),
                                    ],
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 56,
            margin: EdgeInsets.only(top: 32),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.transparent,
                border: Border.all(
                  color: Colors.grey,
                )),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(16),
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: "Enter Cupon Code",
                          labelStyle: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontFamily: 'Poppinsregular'),
                          border: InputBorder.none),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => {},
                  child: Container(
                    width: 87,
                    color: Colors.lightBlue,
                    child: Center(
                      child: Text(
                        "Apply",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'PoppinsBold',
                            fontSize: 12),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 164,
            margin: EdgeInsets.only(top: 16),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.transparent,
                border: Border.all(
                  color: Colors.grey,
                )),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Items(3)",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                    fontFamily: 'PoppinsRegular')),
                            Container(
                              margin: EdgeInsets.only(top: 12),
                              child: Text("Shipping",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontFamily: 'PoppinsRegular')),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 12),
                              child: Text("Import Charge",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontFamily: 'PoppinsRegular')),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("598.86",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'PoppinsRegular')),
                          Container(
                            margin: EdgeInsets.only(top: 12),
                            child: Text("40.00",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontFamily: 'PoppinsRegular')),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 12),
                            child: Text("128.00",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontFamily: 'PoppinsRegular')),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 12),
                  height: 1,
                  color: Colors.grey,
                ),
                Container(
                  margin: EdgeInsets.only(top: 12),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text("Total price",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'PoppinsBold')),
                      ),
                      Text("766.86",
                          style: TextStyle(
                              color: Colors.lightBlue,
                              fontSize: 12,
                              fontFamily: 'PoppinsBold')),
                    ],
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () => {this.gotoShipTo()},
            child: Container(
              margin: EdgeInsets.only(top: 16, bottom: 16),
              height: 57,
              decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(5)
              ),
              child: Center(
                child: Text("Check Out",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'POppinsBold'
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 32),
        child: Column(
          children: [
            appBar(),
            Expanded(
              child: SingleChildScrollView(
                child: content()
                ),
            ),

          ],
        ),
      ),
    );
  }
}
