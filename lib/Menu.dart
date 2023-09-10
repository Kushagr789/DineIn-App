import 'package:flutter/material.dart';
import 'package:myapp/Data/RestData.dart';
import 'package:photo_view/photo_view.dart';
class Menu extends StatefulWidget {
  var menu;
  Menu(this.menu);

  @override
  State<Menu> createState() => _MenuState(menu);
}

class _MenuState extends State<Menu> {

  var menu;
  _MenuState(this.menu);
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
            itemCount: menu.length,
            scrollDirection:Axis.horizontal,
            itemBuilder: (context, index) {
              return Expanded(
                child: Container(
                  height: size.height*0.9,
                  width: size.width,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: PhotoView(
                    
                    imageProvider: NetworkImage(menu[index].toString(),),
                    backgroundDecoration: BoxDecoration(
                      color: Colors.white
                    ),
                    
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}