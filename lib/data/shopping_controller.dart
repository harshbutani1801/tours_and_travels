import 'package:get/get.dart';
import 'package:tours_and_travels/model/product.dart';

class ShoppingController extends GetxController {
  var products = [].obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    await Future.delayed(Duration(seconds: 1));
    var productResult = [
      Product(
        id: 1,
        label: "New",
        countryName: "Thailand",
        title: "Sea Flower Resort",
        desc: "10 Nights and 11 Days",
        desc_detail: "Koh Chang Tai, Thailand",
        noofTours: 18,
        rating: 4.3,
        price: 245.50,
        imgUrl:
            "https://images.unsplash.com/photo-1506665531195-3566af2b4dfa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8dGhhaWxhbmQlMjBiZWFjaHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
      ),
      Product(
        id: 2,
        label: "Sale",
        countryName: "London",
        title: "Hayyat Resort",
        desc: "13 Nights and 14 Days",
        desc_detail: "Koh Chang Tai, Thailand",
        noofTours: 36,
        rating: 3.3,
        price: 336.50,
        imgUrl:
            "https://images.unsplash.com/photo-1547254002-e65e0179fe9f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8bGFuZHNjYXBlfGVufDB8MXwwfHw%3D&auto=format&fit=crop&w=500&q=60",
      ),
      Product(
        id: 3,
        label: "Sale",
        countryName: "Canada",
        desc: "4 Nights and 5 Days",
        title: "Oberoi Resort",
        desc_detail: "Koh Chang Tai, Thailand",
        noofTours: 22,
        rating: 4.5,
        price: 125.50,
        imgUrl:
            "https://images.unsplash.com/photo-1510798831971-661eb04b3739?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGxhbmRzY2FwZXxlbnwwfDF8MHx8&auto=format&fit=crop&w=500&q=60",
      ),
      Product(
        id: 4,
        label: "New",
        countryName: "USA",
        desc: "6 Nights and 7 Days",
        title: "Grend View Resort",
        desc_detail: "Koh Chang Tai, Thailand",
        noofTours: 10,
        rating: 3.3,
        price: 65.50,
        imgUrl:
            "https://images.unsplash.com/photo-1572925192237-6ff8e0599888?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8dXNhfGVufDB8MXwwfHw%3D&auto=format&fit=crop&w=500&q=60",
      ),
      Product(
        id: 5,
        label: "New",
        countryName: "Australia",
        title: "Ocean View Resort",
        desc: "5 Nights and 6 Days",
        desc_detail: "Koh Chang Tai, Thailand",
        noofTours: 45,
        rating: 3.5,
        price: 55.50,
        imgUrl:
            "https://images.unsplash.com/photo-1524562865630-b991c6c2f261?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8YXVzdHJhbGlhfGVufDB8MXwwfHw%3D&auto=format&fit=crop&w=500&q=60",
      ),
      Product(
        id: 6,
        label: "Sale",
        countryName: "Germany",
        title: "Madried Resort",
        desc: "12 Nights and 13 Days",
        desc_detail: "Koh Chang Tai, Thailand",
        noofTours: 41,
        rating: 4.6,
        price: 445.50,
        imgUrl:
            "https://images.unsplash.com/photo-1563876141153-d6d4b0795668?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8Z2VybWFueXxlbnwwfDF8MHx8&auto=format&fit=crop&w=500&q=60",
      ),
      Product(
        id: 7,
        label: "New",
        countryName: "Italy",
        desc: "11 Nights and 12 Days",
        title: "Grand Palace Resort",
        desc_detail: "Koh Chang Tai, Thailand",
        noofTours: 29,
        rating: 4.1,
        price: 332.50,
        imgUrl:
            "https://images.unsplash.com/photo-1516483638261-f4dbaf036963?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aXRhbHl8ZW58MHwxfDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
      ),
      Product(
        id: 8,
        label: "Sale",
        countryName: "Venice",
        desc: "2 Nights and 3 Days",
        title: "River View Resort",
        desc_detail: "Koh Chang Tai, Thailand",
        noofTours: 33,
        rating: 5.0,
        price: 26.50,
        imgUrl:
            "https://images.unsplash.com/photo-1480548004877-593316be2bd5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8dmVuaWNlfGVufDB8MXwwfHw%3D&auto=format&fit=crop&w=500&q=60",
      ),
      Product(
        id: 9,
        label: "New",
        countryName: "Brazil",
        desc: "8 Nights and 9 Days",
        title: "Rio De Genero Beach Resort",
        desc_detail: "Koh Chang Tai, Thailand",
        noofTours: 41,
        rating: 4.0,
        price: 201.50,
        imgUrl:
            "https://images.unsplash.com/photo-1621693247912-767f47a3c382?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8YnJhemlsfGVufDB8MXwwfHw%3D&auto=format&fit=crop&w=500&q=60",
      ),
      Product(
        id: 10,
        label: "New",
        countryName: "India",
        desc: "7 Nights and 8 Days",
        title: "Taj Hotel",
        desc_detail: "Koh Chang Tai, Thailand",
        noofTours: 22,
        rating: 3.4,
        price: 168.50,
        imgUrl:
            "https://images.unsplash.com/photo-1523544545175-92e04b96d26b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzd8fGphaXB1ciUyMGNpdHl8ZW58MHwxfDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
      ),
    ];

    products.value = productResult;
  }
}
