import 'package:aressa_commerce/util/config/color/colorConfig.dart';
import 'package:flutter/material.dart';

class DetailProductView extends StatefulWidget {
  const DetailProductView({Key key}) : super(key: key);

  @override
  _DetailProductViewState createState() => _DetailProductViewState();
}

class _DetailProductViewState extends State<DetailProductView> {

  Widget header() {

    return Container(
        height: 60,
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.only(right: 16),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () => {Navigator.of(context).pop()},
                      icon: Icon(Icons.chevron_left),
                      iconSize: 32,
                    ),
                    Text("Nike air Max 270", style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                    )),
                  ],
                ),
              ),
            ),
            Container(
              height: 1,
              color: ColorConfig.borderColor,
            )
          ],
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 32),
        child: Column(
          children: [
            header()
          ],
        ),
      ),
    );
  }
}
