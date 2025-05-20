import 'package:flutter/material.dart';
import 'package:myapp/accesorios.dart';
import 'package:myapp/constants.dart';
import 'package:myapp/star.dart';

class AccesoriosDetailScreen extends StatelessWidget {
  const AccesoriosDetailScreen({super.key, required this.accesorio});
  final Accesorios accesorio;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kSecondaryColor,
      appBar: AppBar(
        backgroundColor: kSecondaryColor,
        iconTheme: IconThemeData(color: starColor),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Hero(
                tag: accesorio.imageURL,
                child: Container(
                  width: size.width * 0.7,
                  height: size.height * 0.3,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.contain,
                        image: Image.network(accesorio.imageURL,).image, 
                      ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for(int i=0; i<=8; i++)
                  Container(margin: EdgeInsets.symmetric(horizontal: 5),
                  height: i==5?10:7,
                  width: i==5?10:7,
                  decoration: BoxDecoration(
                    color: i==5?Colors.redAccent :kPrimaryColor,
                    shape: BoxShape.circle,  
                  ),
                )
              ],
            ),
            SizedBox(height: 50,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      height: size.height * 0.61,
                      width: 50,
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.only(topRight: Radius.circular(40))
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 50,),
                    Text(
                      accesorio.name, 
                      style: TextStyle(
                        fontWeight: FontWeight.bold, 
                        fontSize: 30,
                        color: Colors.white
                      ),
                    ),
                    SizedBox(height: 30,),
                    Row(
                      children: [
                        StarRating(rating: accesorio.star),
                        SizedBox(width: 10,),
                        Text(
                          "${accesorio.noOfRating} rating", 
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 20,),
                    SizedBox(
                      width: size.width * 0.8,
                      child: Text(
                        accesorio.description, 
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white
                        ),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}