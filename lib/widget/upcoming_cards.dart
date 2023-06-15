import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:medapp/routes.dart';

class UpcomingPage extends StatelessWidget {
  const UpcomingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamedAndRemoveUntil(thirdpageRoute, (route) => false);
      },
      child: Container(
        
        width: double.infinity,
        height: 150,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor.withOpacity(0.8),
          borderRadius: BorderRadius.circular(20),
    
        ),
        
       child: Padding(
         padding: const EdgeInsets.only(left: 10,top: 10,),
         child: Column(
           children: [
             Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                ClipRRect(borderRadius: BorderRadius.circular(100),
                  child: Image.asset('assets/images/doctor.png',height: 60,)),
                
                Padding(
                  padding: const EdgeInsets.only(left:8, top: 3),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text('Dr. Akshat Khanna',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),),
                    Text('Tooth Specialist',style: TextStyle(fontSize:17,fontWeight: FontWeight.normal,color: Colors.white54,),)
                  ],
                     
                  ),
    
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8,left: 50,),
                  child: Column(
                    children: [
                      Icon(Ionicons.ellipsis_vertical,color: Colors.white,),
                    ],
                  ),
                )
                
              ],
              
             ),
             Padding(
               padding: const EdgeInsets.all(16.0),
               child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(color: Colors.white24,),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const SizedBox(width: 5,),
                           Icon(Ionicons.calendar_number_sharp),
                           const SizedBox(width: 5,),
                        Text('Sep 18,2022'),
                        const SizedBox(width: 5,),
                        ],
                       
                      ),
                    ),
                  ),
                  const SizedBox(width: 16,),
                Container(
                    decoration: BoxDecoration(color: Colors.white24,),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const SizedBox(width: 5,),
                           Icon(Ionicons.time_sharp),
                           const SizedBox(width: 5,),
                        Text('(11 Am - 03 Pm)'),
                        const SizedBox(width: 5,),
                        ],
                       
                      ),
                    ),
                  ),
             
                ],
               ),
             )
           ],
         ),
       ),
        
    
      ),
    );
  }
}