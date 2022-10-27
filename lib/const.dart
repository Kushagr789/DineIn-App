class FoodItems {
  String name, imageUrl;

  FoodItems({required this.name, required this.imageUrl});
}

class Restaurants {
  String imageUrl, title, locations, rating, price;

  Restaurants(
      {required this.imageUrl, required this.locations, required this.price, required this.rating,required this.title});
}

List<FoodItems> foodItemList = [
  FoodItems(
      name: "Thali",
      imageUrl:
          "https://i.pinimg.com/originals/e1/da/d5/e1dad5315972c8a9db86fb01d69c7ecb.jpg"),
  FoodItems(
      name: "Pizza",
      imageUrl:
          "https://static.toiimg.com/photo/53110049.cms"),
  FoodItems(
      name: "Rolls",
      imageUrl:
          "https://www.licious.in/blog/wp-content/uploads/2021/11/Vegetable-Rolls.jpg"),
  FoodItems(
      name: "Paratha",
      imageUrl:
          "https://i.ndtvimg.com/i/2018-05/aloo-ka-paratha_650x400_61525766113.jpg"),
  FoodItems(
      name: "Burger",
      imageUrl:
          "https://www.pikpng.com/pngl/m/41-418681_free-png-download-burger-png-pics-png-images.png"),
  FoodItems(
      name: "Sandwich",
      imageUrl:
          "https://www.vegrecipesofindia.com/wp-content/uploads/2014/01/grilled-sandwich-4.jpg"),
  FoodItems(
      name: "Biryani",
      imageUrl:
          "https://www.cubesnjuliennes.com/wp-content/uploads/2021/03/Best-Mutton-Biryani-Recipe.jpg"),
  FoodItems(
      name: "Paneer",
      imageUrl:
          "https://icon2.cleanpng.com/20180331/wxq/kisspng-mattar-paneer-indian-cuisine-shahi-paneer-palak-pa-indian-food-5abf1505113f64.7556672415224721970707.jpg"),
  FoodItems(
      name: "Healthy",
      imageUrl:
          "https://previews.123rf.com/images/firstblood/firstblood1506/firstblood150600075/40973395-transparent-glass-bowl-with-greek-salad-isolated-on-white-background-top-view.jpg"),
  FoodItems(
      name: "Chole Bhature",
      imageUrl:
          "https://static.toiimg.com/thumb/53314156.cms?imgsize=1762111&width=800&height=800"),
  FoodItems(
      name: "Dal",
      imageUrl:
          "https://www.thedeliciouscrescent.com/wp-content/uploads/2020/01/Dal-Recipe-Square.jpg"),
  FoodItems(
      name: "Cake",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8py0vG304xVLQUwG5z6awMI-PXSKxbv6GTQ&usqp=CAU"),
  FoodItems(
      name: "Chaat",
      imageUrl:
          "https://carameltintedlife.com/wp-content/uploads/2021/11/samosa-chaat-5-2-500x375.jpg"),
  FoodItems(
      name: "Dosa",
      imageUrl:
          "https://madhurasrecipe.com/wp-content/uploads/2022/01/instant_dosa_featured.jpg"),
  FoodItems(
      name: "Noodles",
      imageUrl:
          "https://www.whiskaffair.com/wp-content/uploads/2020/10/Veg-Hakka-Noodles-2-3-500x500.jpg"),
  FoodItems(
      name: "Pasta",
      imageUrl:
          "https://i.ytimg.com/vi/JEeO_hagtVM/maxresdefault.jpg"),        
];

List<Restaurants> restaurantList = [
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