import 'package:flutter/material.dart';
import 'package:myapp/Data/RestData.dart';
import 'package:photo_view/photo_view.dart';
class Gallery extends StatefulWidget {
  var gal;
  Gallery(this.gal);

  @override
  State<Gallery> createState() => _GalleryState(gal);
}

class _GalleryState extends State<Gallery> {

  var gal;
  _GalleryState(this.gal);
  @override
  Widget build(BuildContext context) {

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
            itemCount: gal.length,
            scrollDirection:Axis.horizontal,
            itemBuilder: (context, index) {
              return Expanded(
                child: Container(
                  height: size.height*0.9,
                  width: size.width,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: PhotoView(

                    imageProvider: NetworkImage(gal[index].toString(),),
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