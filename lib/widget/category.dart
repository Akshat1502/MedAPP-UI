import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class CategoryView extends StatelessWidget {
  const CategoryView ({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.black12,borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Image.asset('assets/icons/teeth.png',width: 40,),
                  const SizedBox(width: 8,),
                  Text('Dentist',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,),),
            
                ],
              ),
            ),
          ),
          const SizedBox(width: 10,),
          Container(
             decoration: BoxDecoration(color: Colors.black12,borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                 Image.asset('assets/icons/heart.png',width: 20,height: 26,),
                 const SizedBox(width: 8,),
                 Text('Heart Surgeon',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,),),
                ],
              ),
            ),
          ),

          const SizedBox(width: 10,),
          Container(
             decoration: BoxDecoration(color: Colors.black12,borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                 Image.asset('assets/icons/eye.png',width: 20,height: 26,),
                 const SizedBox(width: 8,),
                 Text('Ophthalmologists',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,),),
                ],
              ),
            ),
          ),
          
           const SizedBox(width: 10,),
          Container(
             decoration: BoxDecoration(color: Colors.black12,borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                 Image.asset('assets/icons/bone.png',width: 20,height: 26,),
                 const SizedBox(width: 8,),
                 Text('Bone Specialist',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,),),
                ],
              ),
            ),
          ),
        ],
        
      ),

    );
  }
}