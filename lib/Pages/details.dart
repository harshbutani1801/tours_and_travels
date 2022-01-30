import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
import 'package:tours_and_travels/Pages/home.dart';
import 'package:tours_and_travels/data/shopping_controller.dart';

class TourDetails extends StatelessWidget {
  final shoppingController = Get.put(ShoppingController());

  final String imgUrl;
  final String placeName;
  final double rating;
  final String desc;

  TourDetails({
    required this.imgUrl,
    required this.placeName,
    required this.rating,
    required this.desc,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.network(
                    imgUrl,
                    height: 350,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    color: Colors.black38,
                    height: 350,
                  ),
                  Container(
                    height: 350,
                    padding: EdgeInsets.only(top: 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 24, right: 24),
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Home()));
                                },
                                child: Icon(
                                  Icons.arrow_back_rounded,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                              Spacer(),
                              Icon(
                                Icons.share_outlined,
                                color: Colors.white,
                                size: 30,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Icon(
                                CupertinoIcons.heart,
                                color: Colors.white,
                                size: 30,
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                placeName,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    desc,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  // Icon(Icons.star_rounded, color: Colors.white),
                                  // Icon(Icons.star_rounded, color: Colors.white),
                                  // Icon(Icons.star_rounded, color: Colors.white38),
                                  // Icon(Icons.star_rounded, color: Colors.white38),
                                  // Icon(Icons.star_rounded, color: Colors.white38),
                                  RatingBar(3.0.round()),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "$rating",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FeaturesTile(
                    icon: Icon(
                      Icons.wifi,
                      color: Color(0xff87a899),
                    ),
                    label: "Free\nWi-Fi",
                  ),
                  FeaturesTile(
                    icon: Icon(
                      Icons.beach_access_outlined,
                      color: Color(0xff87a899),
                    ),
                    label: "Sand Beach",
                  ),
                  FeaturesTile(
                    icon: Icon(
                      Icons.card_travel_rounded,
                      color: Color(0xff87a899),
                    ),
                    label: "First Coastline",
                  ),
                  FeaturesTile(
                    icon: Icon(
                      Icons.local_drink_rounded,
                      color: Color(0xff87a899),
                    ),
                    label: "Bar and Restaurant",
                  ),
                ],
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    DetailsCard(
                      image: Image.asset(
                        "assets/images/card1.png",
                        height: 40,
                      ),
                      title: "Booking",
                      noofReviews: "   Based on 30 reviews",
                      rating: 8.0 / 10,
                    ),
                    DetailsCard(
                      image: Image.asset(
                        "assets/images/card2.png",
                        height: 40,
                      ),
                      title: "HotelOut",
                      noofReviews: "   Based on 130 reviews",
                      rating: 4.0 / 5.0,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  "Lorem invidunt labore tempor stet ea, takimata invidunt justo nonumy lorem. Sea accusam et lorem duo ipsum ut rebum voluptua.",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1,
                    height: 1.6,
                    color: Color(0xff87a899),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 220,
                child: GetX<ShoppingController>(
                  builder: (controller) {
                    return ListView.builder(
                      itemBuilder: (context, index) {
                        return Card(
                          elevation: 0,
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.network(
                                  controller.products[index].imgUrl,
                                  height: 200,
                                  width: 150,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                height: 200,
                                width: 150,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          margin:
                                              EdgeInsets.only(left: 8, top: 8),
                                          padding: EdgeInsets.symmetric(
                                              vertical: 6, horizontal: 8),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            color: Colors.black38,
                                          ),
                                          child: Text(
                                            "${controller.products[index].label}",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        )
                                      ],
                                    ),
                                    Spacer(),
                                    Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(
                                              bottom: 11, left: 8, right: 8),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                child: Text(
                                                  "${controller.products[index].countryName}",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 3,
                                              ),
                                              Text(
                                                "${controller.products[index].noofTours} Tours",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Spacer(),
                                        Container(
                                          margin: EdgeInsets.only(
                                              bottom: 10, right: 8),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 3, vertical: 7),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: Colors.white38,
                                          ),
                                          child: Column(
                                            children: [
                                              Text(
                                                "${controller.products[index].rating}",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 2,
                                              ),
                                              Icon(
                                                Icons.star_rate_rounded,
                                                color: Colors.white,
                                                size: 20,
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      itemCount: controller.products.length,
                      scrollDirection: Axis.horizontal,
                      physics: ClampingScrollPhysics(),
                      shrinkWrap: true,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailsCard extends StatelessWidget {
  final String title;
  final image;
  final String noofReviews;
  final double rating;

  DetailsCard(
      {required this.title,
      required this.noofReviews,
      required this.rating,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      margin: EdgeInsets.only(top: 24),
      decoration: BoxDecoration(
        color: Color(0xffE9F4F9).withOpacity(0.5),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: Color(0xffD5E6F2),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: image,
              ),
              SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w900,
                      color: Color(0xff87a899),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    rating.toString(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff87a899),
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            noofReviews,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Color(0xff879D95),
            ),
          ),
        ],
      ),
    );
  }
}

class FeaturesTile extends StatelessWidget {
  final Icon icon;
  final String label;

  FeaturesTile({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.6,
      child: Container(
          child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: Color(0xff87a899),
              ),
            ),
            child: icon,
          ),
          SizedBox(
            height: 6,
          ),
          Container(
            width: 80,
            child: Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w800,
                color: Color(0xff87a899),
              ),
            ),
          ),
        ],
      )),
    );
  }
}

class RatingBar extends StatelessWidget {
  final int rating;

  RatingBar(this.rating);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Icon(
            Icons.star_rounded,
            color: rating >= 1 ? Colors.white70 : Colors.white24,
          ),
          SizedBox(
            width: 3,
          ),
          Icon(
            Icons.star_rounded,
            color: rating >= 2 ? Colors.white70 : Colors.white24,
          ),
          SizedBox(
            width: 3,
          ),
          Icon(
            Icons.star_rounded,
            color: rating >= 3 ? Colors.white70 : Colors.white24,
          ),
          SizedBox(
            width: 3,
          ),
          Icon(
            Icons.star_rounded,
            color: rating >= 4 ? Colors.white70 : Colors.white24,
          ),
          SizedBox(
            width: 3,
          ),
          Icon(
            Icons.star_rounded,
            color: rating >= 5 ? Colors.white70 : Colors.white24,
          ),
          SizedBox(
            width: 3,
          ),
        ],
      ),
    );
  }
}
