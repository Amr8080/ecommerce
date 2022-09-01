import 'package:ecommerce/ProductModel.dart';
import 'package:ecommerce/SecondScreen.dart';
import 'package:flutter/material.dart';
import 'colors.dart';

class FisrtScreen extends StatelessWidget {
  const FisrtScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kSecondaryColor,
        centerTitle: false,
        elevation: 0,
        title: Row(
          children: [
            Text(
              'مرحبا بكم ',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondScreen()),
                );
              },
              icon: Icon(
                Icons.dark_mode,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
      drawer: Drawer(
          child: Padding(
        padding: EdgeInsets.only(top: 70),
        child: Column(
          children: [
            CircleAvatar(
              backgroundColor: kSecondaryColor,
              radius: 40,
              child: Image.asset('Images/user.png'),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'مرحبا بك',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('هل تواجه مشكلة ؟'),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text('تواصل معنا'),
            SizedBox(
              height: 20,
            ),
            Text('سياسة الإسترجاع'),
          ],
        ),
      )),
      backgroundColor: kSecondaryColor,
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 70),
                  decoration: BoxDecoration(
                      color: kBackgroundColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      )),
                ),
                ListView.builder(
                  itemCount: ProductList.length,
                  itemBuilder: (context, index) => ProductCard(
                    ItemIndex: index,
                    ProductModel: ProductModel,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key, required this.ItemIndex, this.ProductModel})
      : super(key: key);
  final int ItemIndex;

  final ProductModel;

  @override
  Widget build(BuildContext context) {
    final Item_Image = ProductList[ItemIndex].image!;
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.bottomCenter,
      margin: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      height: 150,
      child: Stack(
        children: [
          InkWell(
            onTap: () {
              showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(40))),
                  context: context,
                  builder: (context) => Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              child: Image.asset(ProductList[ItemIndex].image!),
                              height: 180,
                              width: 180,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              ProductList[ItemIndex].title!,
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 15),
                              child: SizedBox(
                                child: Text(
                                  ProductList[ItemIndex].subtitle!,
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 30, vertical: 10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(22),
                                      color: Color(0xFFfcca46)),
                                  child: Text(
                                      'السعر ${ProductList[ItemIndex].price}   '),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 30, vertical: 5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(22),
                                      color: Color(0xFFfcca46)),
                                  child: Row(
                                    children: [
                                      InkWell(
                                        onTap: (){
                                          showModalBottomSheet(
                                            isScrollControlled: true,
                                              shape: RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.vertical(top: Radius.circular(40))),
                                          context: context,
                                          builder: (context) => Center(
                                          child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  SizedBox(
                                                    height: 30,
                                                  ),
                                                  Text('عربة التسوق' , style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20,
                                                    color: kSecondaryColor
                                                  ),),
                                                  Icon(Icons.shopping_cart , color: kSecondaryColor,)
                                                ],
                                              ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Container(
                                            alignment: Alignment.bottomCenter,
                                            margin: EdgeInsets.symmetric(
                                              vertical: 10,
                                              horizontal: 20,
                                            ),
                                            height: 150,
                                            child: Column(
                                              children: [
                                              SizedBox(

                                                child: Image.asset(ProductList[ItemIndex].image! ,
                                              ),
                                              height: 80,
                                                width: 80,
                                              ),


                                                Padding(
                                                    padding: EdgeInsets.only(top: 10),
                                                    child: Text(ProductList[ItemIndex].title!)),
                                                Container(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 30, vertical: 10),
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(22),
                                                      color: Color(0xFFfcca46)),
                                                  child: Text(
                                                      'السعر ${ProductList[ItemIndex].price}   '),
                                                ),

                                              ],
                                            )
                                              )
                                            ],
                                          )));
                                        }
                                        ,child: Text('أضف للعربة'),
                                      ),
                                      Icon(Icons.shopping_cart)
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ));
            },
            child: Container(
              height: 160,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    blurRadius: 25,
                    offset: Offset(0, 15),
                    color: Colors.black38)
              ], borderRadius: BorderRadius.circular(22), color: Colors.white),
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Image.asset(ProductList[ItemIndex].image!),
              height: 150,
              width: 170,
            ),
          ),
          Positioned(
              bottom: 0.0,
              child: Container(
                height: 136,
                width: size.width - 200,
                child: Column(
                  children: [
                    Padding(
                        padding: EdgeInsets.all(20),
                        child: Text(ProductList[ItemIndex].title!)),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),
                          color: Color(0xFFfcca46)),
                      child: Text('السعر ${ProductList[ItemIndex].price}   '),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
