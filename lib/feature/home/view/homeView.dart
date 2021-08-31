import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  Widget header() {

    return Container(
      height: 50,
      margin: EdgeInsets.only(left: 8, right: 8),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: .5),
                borderRadius: BorderRadius.circular(8)
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Search Product",
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none
                ),
              ),
            ),
          ),
          Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20)
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(20),
                  onTap: () => { print("whishlist") },
                    child: Icon(Icons.favorite_border)
                ),

          ),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20)
            ),
            child: InkWell(
                borderRadius: BorderRadius.circular(20),
                onTap: () => { print("whishlist") },
                child: Icon(Icons.favorite_border)
            ),

          ),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20)
            ),
            child: InkWell(
                borderRadius: BorderRadius.circular(20),
                onTap: () => { print("whishlist") },
                child: Icon(Icons.favorite_border)
            ),

          ),
        ],
      ),
    );
  }

  Widget promoBanner() {

    return Container(
      height: 250,
      margin: EdgeInsets.only(top: 16),
      child: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: 3,
              itemBuilder: (ctx, idx) {
                return Container(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: Image(
                    image: AssetImage("lib/asset/image/home/promotionDummy.png"),
                  ),
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8),
            height: 30,
            child: Text("Indicator nih"),
          )
        ],
      ),
    );
  }

  Widget categoryWidget() {

    return Container(
      height: 170,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 16,right: 16),
            child: Row(
              children: [
                Expanded(child: Text("Category")),
                FlatButton(onPressed: () => {print("see all")}, child: Text("Lihat Semua"))
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                padding: EdgeInsets.all(8),
                itemBuilder: (ctx, idx){
                  return Container(
                    width: 70,
                    margin: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue, width: .5),
                              shape: BoxShape.circle
                            ),
                            height: 70,
                            width: 70,

                        ),
                        Expanded(
                          child: Container(
                            child: Text("Man Shirt", style: TextStyle(
                              fontSize: 10,
                            )),
                            padding: EdgeInsets.only(top: 10),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget flashSaleWidget() {

    return Container(
      height: 275,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 16,right: 16),
            child: Row(
              children: [
                Expanded(child: Text("Flash sale")),
                FlatButton(onPressed: () => {print("see all")}, child: Text("Lihat Semua"))
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                padding: EdgeInsets.all(8),
                itemBuilder: (ctx, idx){
                  return Container(
                    width: 140,
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: .5),
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue, width: .5),
                              borderRadius: BorderRadius.circular(8)
                          ),

                          child: Image(
                            image: AssetImage("lib/asset/image/home/promotionDummy.png"),
                          ),

                        ),
                         Container(
                            child: Text("Man Shirt", style: TextStyle(
                              fontSize: 10,
                            )),
                            padding: EdgeInsets.only(top: 10),
                          ),
                      ],
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget megaSaleWidget() {

    return Container(
      height: 275,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 16,right: 16),
            child: Row(
              children: [
                Expanded(child: Text("Mega sale")),
                FlatButton(onPressed: () => {print("see all")}, child: Text("Lihat Semua"))
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                padding: EdgeInsets.all(8),
                itemBuilder: (ctx, idx){
                  return Container(
                    width: 140,
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: .5),
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue, width: .5),
                              borderRadius: BorderRadius.circular(8)
                          ),

                          child: Image(
                            image: AssetImage("lib/asset/image/home/promotionDummy.png"),
                          ),

                        ),
                        Container(
                          child: Text("Man Shirt", style: TextStyle(
                            fontSize: 10,
                          )),
                          padding: EdgeInsets.only(top: 10),
                        ),
                      ],
                    ),
                  );
                },
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              header(),
              promoBanner(),
              categoryWidget(),
              flashSaleWidget(),
              megaSaleWidget()
            ],
          ),
        ),
      ),
    );
  }
}
