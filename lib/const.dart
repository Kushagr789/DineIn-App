class FoodItems {
  String name, imageUrl;
  int price;

  FoodItems({required this.name, required this.imageUrl,required this.price});
}

class Restaurants {
  String imageUrl, title, locations, rating, price;

  Restaurants(
      {required this.imageUrl, required this.locations, required this.price, required this.rating,required this.title});
}
class Offers{
  String offerUrl;
  Offers(
    {required this.offerUrl}
  );
}
List<Offers>offersList=[
  Offers(offerUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSel0T8Z2ru13MJoVui_2YnM1F58v7717XYcg&usqp=CAU"),
  Offers(offerUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJUteASGt4MAYNAMfTh0yHT46pwO27y2N_xQ&usqp=CAU"),
  Offers(offerUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkk0gZoprAd7k5RANx-Fk-qzhua0rQ_W_XKQ&usqp=CAU"),
  Offers(offerUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSel0T8Z2ru13MJoVui_2YnM1F58v7717XYcg&usqp=CAU"),

];
List<FoodItems> foodItemList = [
  FoodItems(
      name: "Thali",
      price: 250,
      imageUrl:
          "https://i.pinimg.com/originals/e1/da/d5/e1dad5315972c8a9db86fb01d69c7ecb.jpg"),
  FoodItems(
      name: "Pizza",
      price: 200,
      imageUrl:
          "https://static.toiimg.com/photo/53110049.cms"),
  FoodItems(
      name: "Rolls",
      price: 150,
      imageUrl:
          "https://www.licious.in/blog/wp-content/uploads/2021/11/Vegetable-Rolls.jpg"),
  FoodItems(
      name: "Paratha",
      price: 70,
      imageUrl:
          "https://i.ndtvimg.com/i/2018-05/aloo-ka-paratha_650x400_61525766113.jpg"),
  FoodItems(
      name: "Burger",
      price: 120,
      imageUrl:
          "https://www.pikpng.com/pngl/m/41-418681_free-png-download-burger-png-pics-png-images.png"),
  FoodItems(
      name: "Sandwich",
      price: 110,
      imageUrl:
          "https://www.vegrecipesofindia.com/wp-content/uploads/2014/01/grilled-sandwich-4.jpg"),
  FoodItems(
      name: "Biryani",
      price: 280,
      imageUrl:
          "https://www.cubesnjuliennes.com/wp-content/uploads/2021/03/Best-Mutton-Biryani-Recipe.jpg"),
  FoodItems(
      name: "Paneer",
      price: 200,
      imageUrl:
          "https://icon2.cleanpng.com/20180331/wxq/kisspng-mattar-paneer-indian-cuisine-shahi-paneer-palak-pa-indian-food-5abf1505113f64.7556672415224721970707.jpg"),
  FoodItems(
      name: "Healthy",
      price: 180,
      imageUrl:
          "https://previews.123rf.com/images/firstblood/firstblood1506/firstblood150600075/40973395-transparent-glass-bowl-with-greek-salad-isolated-on-white-background-top-view.jpg"),
  FoodItems(
      name: "Chole Bhature",
      price: 90,
      imageUrl:
          "https://static.toiimg.com/thumb/53314156.cms?imgsize=1762111&width=800&height=800"),
  FoodItems(
      name: "Dal",
      price: 110,
      imageUrl:
          "https://www.thedeliciouscrescent.com/wp-content/uploads/2020/01/Dal-Recipe-Square.jpg"),
  FoodItems(
      name: "Cake",
      price: 310,
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8py0vG304xVLQUwG5z6awMI-PXSKxbv6GTQ&usqp=CAU"),
  FoodItems(
      name: "Chaat",
      price: 75,
      imageUrl:
          "https://carameltintedlife.com/wp-content/uploads/2021/11/samosa-chaat-5-2-500x375.jpg"),
  FoodItems(
      name: "Dosa",
      price: 130,
      imageUrl:
          "https://madhurasrecipe.com/wp-content/uploads/2022/01/instant_dosa_featured.jpg"),
  FoodItems(
      name: "Noodles",
      price: 120,
      imageUrl:
          "https://www.whiskaffair.com/wp-content/uploads/2020/10/Veg-Hakka-Noodles-2-3-500x500.jpg"),
  FoodItems(
      name: "Pasta",
      price: 120,
      imageUrl:
          "https://i.ytimg.com/vi/JEeO_hagtVM/maxresdefault.jpg"),        
];
class Rest{
  List restName=[
    "Burger King",
    "Oven story",
    "Bawla Chicken",
    "Sirohi Chaap",
    "Punjabi Tadka"
  ];
  List restRat=[
    "4.5",
    "4.3",
    "4.6",
    "4.5",
    "4.2"
  ];
  List item=[
    "Burger, Rolls, Fries",
    "Pizza,Burger",
    "Chicken,Biryani",
    "Chaap,Pasta, Momos",
    "Paneer, Dal, Naan"
  ];
  List image=[
    "https://imageio.forbes.com/specials-images/dam/imageserve/1058912512/0x0.jpg?format=jpg&width=1200",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlhLk9kE49TXzLZHZb_b3jVPasp_V0fvPBtA&usqp=CAU",
    "https://i0.wp.com/blendofspicesbysara.com/wp-content/uploads/2021/02/PXL_20210126_221648173.PORTRAIT-01.jpeg?resize=800%2C840&ssl=1"
        "https://imageio.forbes.com/specials-images/dam/imageserve/1058912512/0x0.jpg?format=jpg&width=1200",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlhLk9kE49TXzLZHZb_b3jVPasp_V0fvPBtA&usqp=CAU",

  ];
  List IM=[
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqTDo5i3wS55ky-rRXgldUcBrK7O54G6PI2Q&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTg9qXZ6z10fn0Zetbl_PcBly-B2kVt32IIMg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMRjX9tgygqXY6LBMJwlBXhevohfgFU8fkkJJcmAAdtUJZWkJAJbpgEbRTQVho3z6xE-Y&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTyjZ6mwPFQ5liuIjJwkUZ9J3389PvKLM7Hg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSct3O8hs_kCXFbH95ESc7uj-jGFS_NHCkcwQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6a3E4sh_vwNVqKeeNPIGGxSobJPegPpcBpQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJPDRVqypuoq5xEcklMaU2lbd9WffTJ8KspQ&usqp=CAU"
  ];

}
List<Restaurants> restaurantList = [
  Restaurants(
      title: "Om Sweet",
      locations: "North Indian,  Traditional",
      price: "100",
      rating: "4.2",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqTDo5i3wS55ky-rRXgldUcBrK7O54G6PI2Q&usqp=CAU"),
  Restaurants(
    title: "The Masala Story",
    locations: "North Indian, Mughlai, Kebab",
    price: "300",
    rating: "4.1",
    imageUrl:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTg9qXZ6z10fn0Zetbl_PcBly-B2kVt32IIMg&usqp=CAU"),
  Restaurants(
    title: "Domino's Pizza",
    locations: "Pizza, Fast Food",
    price: "150",
    rating: "4.1",
    imageUrl:
        "https://2rdnmg1qbg403gumla1v9i2h-wpengine.netdna-ssl.com/wp-content/uploads/sites/3/2016/05/worstSnacks-527905022-770x533-1-745x490.jpg",
  ),
  Restaurants(
    title: "MCDonald's",
    locations: "Burger, Fast Food, Beverages",
    price: "150",
    rating: "4.1",
    imageUrl:
        "https://2rdnmg1qbg403gumla1v9i2h-wpengine.netdna-ssl.com/wp-content/uploads/sites/3/2016/05/worstSnacks-527905022-770x533-1-745x490.jpg",
  ),
  Restaurants(
    title: "Gohana Faous Jalebi",
    locations: "Street Food, Mithai",
    price: "100",
    rating: "4.2",
    imageUrl: "https://2rdnmg1qbg403gumla1v9i2h-wpengine.netdna-ssl.com/wp-content/uploads/sites/3/2016/05/worstSnacks-527905022-770x533-1-745x490.jpg",
  ),
  Restaurants(
    title: "Burger King",
    locations: "Burger, American, Desserts",
    price: "150",
    rating: "4.2",
    imageUrl:
        "https://2rdnmg1qbg403gumla1v9i2h-wpengine.netdna-ssl.com/wp-content/uploads/sites/3/2016/05/worstSnacks-527905022-770x533-1-745x490.jpg",
  ),
  Restaurants(
    title: "Haldiram's",
    locations: "North Indian, Mithai, South Indian",
    price: "100",
    rating: "4.0",
    imageUrl:
        "https://2rdnmg1qbg403gumla1v9i2h-wpengine.netdna-ssl.com/wp-content/uploads/sites/3/2016/05/worstSnacks-527905022-770x533-1-745x490.jpg",
  ),
    Restaurants(
      title: "Om Sweet & Snacks",
      locations: "North Indian,  South Indian, Chinese",
      price: "100",
      rating: "4.2",
      imageUrl:
          "https://2rdnmg1qbg403gumla1v9i2h-wpengine.netdna-ssl.com/wp-content/uploads/sites/3/2016/05/worstSnacks-527905022-770x533-1-745x490.jpg"),
  Restaurants(
    title: "The Masala Story",
    locations: "North Indian, Mughlai, Kebab",
    price: "300",
    rating: "4.1",
    imageUrl:
        "https://2rdnmg1qbg403gumla1v9i2h-wpengine.netdna-ssl.com/wp-content/uploads/sites/3/2016/05/worstSnacks-527905022-770x533-1-745x490.jpg",
  ),
  Restaurants(
    title: "Domino's Pizza",
    locations: "Pizza, Fast Food",
    price: "150",
    rating: "4.1",
    imageUrl:
        "https://2rdnmg1qbg403gumla1v9i2h-wpengine.netdna-ssl.com/wp-content/uploads/sites/3/2016/05/worstSnacks-527905022-770x533-1-745x490.jpg",
  ),
  Restaurants(
    title: "MCDonald's",
    locations: "Burger, Fast Food, Beverages",
    price: "150",
    rating: "4.1",
    imageUrl:
        "https://2rdnmg1qbg403gumla1v9i2h-wpengine.netdna-ssl.com/wp-content/uploads/sites/3/2016/05/worstSnacks-527905022-770x533-1-745x490.jpg",
  ),
  Restaurants(
    title: "Gohana Faous Jalebi",
    locations: "Street Food, Mithai",
    price: "100",
    rating: "4.2",
    imageUrl: "https://2rdnmg1qbg403gumla1v9i2h-wpengine.netdna-ssl.com/wp-content/uploads/sites/3/2016/05/worstSnacks-527905022-770x533-1-745x490.jpg",
  ),
  Restaurants(
    title: "Burger King",
    locations: "Burger, American, Desserts",
    price: "150",
    rating: "4.2",
    imageUrl:
        "https://2rdnmg1qbg403gumla1v9i2h-wpengine.netdna-ssl.com/wp-content/uploads/sites/3/2016/05/worstSnacks-527905022-770x533-1-745x490.jpg",
  ),
  Restaurants(
    title: "Haldiram's",
    locations: "North Indian, Mithai, South Indian",
    price: "100",
    rating: "4.0",
    imageUrl:
        "https://2rdnmg1qbg403gumla1v9i2h-wpengine.netdna-ssl.com/wp-content/uploads/sites/3/2016/05/worstSnacks-527905022-770x533-1-745x490.jpg",
  ),
    Restaurants(
      title: "Om Sweet & Snacks",
      locations: "North Indian,  South Indian, Chinese",
      price: "100",
      rating: "4.2",
      imageUrl:
          "https://2rdnmg1qbg403gumla1v9i2h-wpengine.netdna-ssl.com/wp-content/uploads/sites/3/2016/05/worstSnacks-527905022-770x533-1-745x490.jpg"),
  Restaurants(
    title: "The Masala Story",
    locations: "North Indian, Mughlai, Kebab",
    price: "300",
    rating: "4.1",
    imageUrl:
        "https://2rdnmg1qbg403gumla1v9i2h-wpengine.netdna-ssl.com/wp-content/uploads/sites/3/2016/05/worstSnacks-527905022-770x533-1-745x490.jpg",
  ),
  Restaurants(
    title: "Domino's Pizza",
    locations: "Pizza, Fast Food",
    price: "150",
    rating: "4.1",
    imageUrl:
        "https://2rdnmg1qbg403gumla1v9i2h-wpengine.netdna-ssl.com/wp-content/uploads/sites/3/2016/05/worstSnacks-527905022-770x533-1-745x490.jpg",
  ),
  Restaurants(
    title: "MCDonald's",
    locations: "Burger, Fast Food, Beverages",
    price: "150",
    rating: "4.1",
    imageUrl:
        "https://2rdnmg1qbg403gumla1v9i2h-wpengine.netdna-ssl.com/wp-content/uploads/sites/3/2016/05/worstSnacks-527905022-770x533-1-745x490.jpg",
  ),
  Restaurants(
    title: "Gohana Faous Jalebi",
    locations: "Street Food, Mithai",
    price: "100",
    rating: "4.2",
    imageUrl: "https://2rdnmg1qbg403gumla1v9i2h-wpengine.netdna-ssl.com/wp-content/uploads/sites/3/2016/05/worstSnacks-527905022-770x533-1-745x490.jpg",
  ),
  Restaurants(
    title: "Burger King",
    locations: "Burger, American, Desserts",
    price: "150",
    rating: "4.2",
    imageUrl:
        "https://2rdnmg1qbg403gumla1v9i2h-wpengine.netdna-ssl.com/wp-content/uploads/sites/3/2016/05/worstSnacks-527905022-770x533-1-745x490.jpg",
  ),
  Restaurants(
    title: "Haldiram's",
    locations: "North Indian, Mithai, South Indian",
    price: "100",
    rating: "4.0",
    imageUrl:
        "https://2rdnmg1qbg403gumla1v9i2h-wpengine.netdna-ssl.com/wp-content/uploads/sites/3/2016/05/worstSnacks-527905022-770x533-1-745x490.jpg",
  ),
];