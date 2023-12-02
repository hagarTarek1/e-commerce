
import 'package:e_commerce/classes/data.dart';
import 'package:e_commerce/models/model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class CarouselDetails extends StatefulWidget {
   CarouselDetails({Key? key}) : super(key: key);

  @override
  State<CarouselDetails> createState() => _CarouselDetailsState();
}

class _CarouselDetailsState extends State<CarouselDetails> {
  CategoryData? categoryData;


  @override
  Widget build(BuildContext context) {
    return Stack(children: [

      Padding(
        padding: const EdgeInsets.all(20),
        child: Stack(

          children: [
            Container(height: 500,
              decoration:  BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(25),bottomRight:Radius.circular(25) )
              ),
            ),
            Image.network(
              // categoryData.image
              DataSeeder.categories[0].image?? "https://image.shutterstock.com/image-photo/fashionable-confident-blonde-woman-wearing-260nw-2117571818.jpg",height: 200,width: 300,fit: BoxFit.fill,),
            Column(
              children: [
                Text("For all Your\n summer clothing \nneeds", style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      color: Colors.black,
                      fontSize:35,
                      fontWeight: FontWeight.bold),),),
                SizedBox(height: 10,),
        ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor:
          Colors.red[400],
              elevation: 5,
              maximumSize: Size(50, 200),
              minimumSize: Size(30, 60)
          ),
          onPressed: (){}, child: Row(children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text('see more',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600), ),),),
                    Spacer(),
    CircleAvatar(
    radius: 16,
    backgroundColor: Colors.white,
    child: Icon(Icons.arrow_forward_ios,color: Colors.red[700],size: 25,))

    ],)),
              ],
            ),

          ],
        ),
      )
    ],);
  }
}
