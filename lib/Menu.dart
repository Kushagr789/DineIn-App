import 'package:flutter/material.dart';
import 'package:myapp/Data/RestData.dart';
class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {

  @override
  Widget build(BuildContext context) {
    print(RestaurantData.Menu);
    final size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(RestaurantData.name,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      body: Container(
        child: Center(
          child: PageView.builder(
            itemCount: RestaurantData.Menu.length,
            scrollDirection:Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                height: size.height*0.9,
                width: size.width,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Image.network(RestaurantData.Menu[index],fit: BoxFit.fill,),
                
              );
            },
          ),
        ),
      ),
    );
  }
}