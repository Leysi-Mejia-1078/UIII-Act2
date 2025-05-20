import 'package:flutter/material.dart';
import 'package:myapp/accesorios_detail_screen.dart';
import 'package:myapp/constants.dart';
import 'package:myapp/accesorios.dart';
import 'package:myapp/star.dart';

class AccesoriosHomePage extends StatelessWidget {
  const AccesoriosHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Image.network(
                      'https://raw.githubusercontent.com/Leysi-Mejia-1078/imagenes/refs/heads/main/menu2.png',
                      height: 45,
                      width: 45,
                    ),
                    SizedBox(width: size.width * 0.03),
                    const Text(
                      'Joyeria Aurora',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 32,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Padding(
                padding: EdgeInsets.only(left: 25),
                child: Text(
                  "ANILLOS",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white60,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 370,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemCount: accesoriosAnillo.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final accesorio = accesoriosAnillo[index]; 
                    return accesorioItems(size, accesorio, context);
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 25),
                child: Text(
                  "PENDIENTES",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white60,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 370,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemCount: accesoriosCollar.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final accesorio = accesoriosCollar[index]; 
                    return accesorioItems(size, accesorio, context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding accesorioItems(Size size, Accesorios accesorio, BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(18),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 55),
            child: GestureDetector(
              onTap: () {},
              child: Material(
                elevation: 5,
                shadowColor: Colors.black12,
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  padding: EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                    color: kSecondaryColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 250,
                  width: size.width * 0.7,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        accesorio.name,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                          fontSize: 22,
                        ),
                      ),
                      SizedBox(height: 10,),
                      StarRating(rating: accesorio.star)
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: size.width * 0.7,
            height: 50,
            color: kPrimaryColor,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> AccesoriosDetailScreen(accesorio: accesorio),),);
              },
              child: Hero(
                tag: accesorio.imageURL,
                child: Container(
                  width: size.width * 0.45,
                  height: size.height * 0.25,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: Image.network(accesorio.imageURL,).image, // Accessing imageURL from the item
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
