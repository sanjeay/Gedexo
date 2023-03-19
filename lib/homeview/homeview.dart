import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_controller.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Homeview(),
  ));
}

class Homeview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: [
          Container(
            height: 20,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://burst.shopifycdn.com/photos/flatlay-iron-skillet-with-meat-and-other-food.jpg?width=1200&format=pjpg&exif=1&iptc=1"),
                    fit: BoxFit.cover)),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10)),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: "Find for food",
                    hintStyle: GoogleFonts.poppins(fontSize: 15)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 160,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: NetworkImage(
                        "https://burst.shopifycdn.com/photos/flatlay-iron-skillet-with-meat-and-other-food.jpg?width=1200&format=pjpg&exif=1&iptc=1",
                      ),
                      fit: BoxFit.cover)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, top: 5),
            child: Row(
              children: [
                Text(
                  "What are you craving for",
                  style: GoogleFonts.poppins(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 30,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn-icons-png.flaticon.com/512/1046/1046769.png")),
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "Meat",
                                  style: GoogleFonts.poppins(),
                                ),
                              ],
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 30,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn-icons-png.flaticon.com/512/1046/1046769.png")),
                              ),
                            ),
                            Text(
                              "RIce",
                              style: GoogleFonts.poppins(),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 30,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn-icons-png.flaticon.com/512/1046/1046769.png")),
                              ),
                            ),
                            Text(
                              "Drink",
                              style: GoogleFonts.poppins(),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 30,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn-icons-png.flaticon.com/512/1046/1046769.png")),
                              ),
                            ),
                            Text(
                              "Salad",
                              style: GoogleFonts.poppins(),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 30,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn-icons-png.flaticon.com/512/1046/1046769.png")),
                              ),
                            ),
                            Text(
                              "Other",
                              style: GoogleFonts.poppins(),
                            )
                          ],
                        ),
                      ]),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10,top: 10),
            child: Row(
              children: [
                Text("Featured Food",style: GoogleFonts.poppins(fontSize: 20),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Container(
              child: CarouselSlider(
                items: [
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://burst.shopifycdn.com/photos/flatlay-iron-skillet-with-meat-and-other-food.jpg?width=1200&format=pjpg&exif=1&iptc=1"),
                            fit: BoxFit.cover)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://burst.shopifycdn.com/photos/flatlay-iron-skillet-with-meat-and-other-food.jpg?width=1200&format=pjpg&exif=1&iptc=1"),
                              fit: BoxFit.cover)))
                  )
                ],
                options: CarouselOptions(
                  viewportFraction: 0.7,
                    aspectRatio: 16/9,
                    height: 200),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Container(
              alignment: Alignment.bottomCenter,
              child: BottomNavigationBar(items:[
                BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.grey,),label: "home",),
                BottomNavigationBarItem(icon:Icon(Icons.favorite,color: Colors.grey,),label: "fav"),
                BottomNavigationBarItem(icon: Icon(Icons.shopping_cart,color: Colors.grey,),label: "cart"),
                BottomNavigationBarItem(icon: Icon(Icons.message,color: Colors.grey,),label: "message"),
                BottomNavigationBarItem(icon: Icon(Icons.contact_page_outlined,color: Colors.grey,),label: "contact")

              ]),
            ),
          )
        ],
      ),
    );
  }
}
