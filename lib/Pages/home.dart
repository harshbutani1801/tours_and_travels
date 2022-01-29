import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:tours_and_travels/Pages/details.dart';
import 'package:tours_and_travels/data/shopping_controller.dart';

class Home extends StatelessWidget {
  final shoppingController = Get.put(ShoppingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Container(
          padding: const EdgeInsets.all(7),
          child: Image.asset(
            "assets/images/menu1.png",
            height: 20,
            width: 20,
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "H.B.TOURS",
              style: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.5,
              ),
            ),
          ],
        ),
        actions: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Icon(
              Icons.more_vert_rounded,
              color: Color(0xff758781),
            ),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Find the best tour",
              style: TextStyle(
                fontSize: 28,
                color: Colors.black54,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "Country",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black54,
                fontWeight: FontWeight.w600,
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
                                          style: TextStyle(color: Colors.white),
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
            SizedBox(
              height: 16,
            ),
            Text(
              "Popular Tours",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black54,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              height: 280,
              child: GetX<ShoppingController>(
                builder: (controller) {
                  return ListView.builder(
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TourDetails(
                                imgUrl: controller.products[index].imgUrl,
                                placeName:
                                    controller.products[index].title,
                                rating: controller.products[index].rating,
                                desc: controller.products[index].desc_detail,
                              ),
                            ),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xffE9F4F9),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomLeft: Radius.circular(20)),
                                child: Image.network(
                                  controller.products[index].imgUrl,
                                  height: 110,
                                  width: 106,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${controller.products[index].countryName}",
                                      style: TextStyle(
                                        color: Color(0xff677873),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      "${controller.products[index].desc}",
                                      style: TextStyle(
                                        color: Color(0xff89A097),
                                        fontSize: 13,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "\$ ${controller.products[index].price}",
                                      style: TextStyle(
                                        color: Color(0xff4E6059),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 0, right: 8),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Color(0xff139157),
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
                          ),
                        ),
                      );
                    },
                    itemCount: controller.products.length,
                    scrollDirection: Axis.vertical,
                    physics: ClampingScrollPhysics(),
                    shrinkWrap: true,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
