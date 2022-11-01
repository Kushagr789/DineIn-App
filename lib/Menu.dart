import 'package:flutter/material.dart';
class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Restaurant name ',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      body: Container(
        child: Center(
          child: PageView.builder(
            itemCount: 8,
            scrollDirection:Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                height: size.height*0.9,
                width: size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage('https://2rdnmg1qbg403gumla1v9i2h-wpengine.netdna-ssl.com/wp-content/uploads/sites/3/2016/05/worstSnacks-527905022-770x533-1-745x490.jpg'),fit: BoxFit.cover)
                ),
                
              );
            },
          ),
        ),
      ),
    );
  }
}