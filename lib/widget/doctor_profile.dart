import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class DoctorProfile extends StatelessWidget {
  const DoctorProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
        Dismissible(
          onDismissed: (direction) {
            if(direction==DismissDirection.startToEnd){
              final lalert=SnackBar(content: Text('Deleted!'),);
              ScaffoldMessenger.of(context).showSnackBar(lalert);
              
            }
            else{
              final ralert = SnackBar(content: Text('Message him!'));
              ScaffoldMessenger.of(context).showSnackBar(ralert);

            }
            
          },
          key: Key('Text'),
          background:Container(color: Colors.red,),
          
          secondaryBackground: Container(color: Colors.blue,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Ionicons.chatbubble_ellipses,size: 30,),
              ],
            ),
          ),),   
                 child: Container(
             width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.all(Radius.circular(20))
        
              ),
              child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(borderRadius: BorderRadius.all(Radius.circular(10)),child: Image.asset('assets/images/doctor1.jpg',height: 80,width: 120,)),
        
              Padding(
                padding: const EdgeInsets.only(top: 8,left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Dr. Roshan Lal Chaddha',style:TextStyle(fontSize: 16,fontWeight: FontWeight.bold,)),
                    const SizedBox(height: 3,),
                    Text('Tooth Specialist',style:TextStyle(fontSize: 13,fontWeight: FontWeight.normal,) ,),
                    const SizedBox(height: 3,),
                    Row(
                      children: [
                        Icon(Ionicons.star,color: Colors.amber,size: 20,),
                        const SizedBox(width: 5,),
                        Text('4.3',style:TextStyle(fontSize: 13,fontWeight: FontWeight.normal,) ,),
                        const SizedBox(width: 30,),
                        Icon(Ionicons.time,color: Colors.blue,size: 20,),
                        const SizedBox(width: 5,),
                        Text('11 Am - 3 Pm',style:TextStyle(fontSize: 13,fontWeight: FontWeight.normal,) ,),
                      ],
                    ),
                    
                  ],
                ),
              ),
            ],
          ),
              ),
               
          ),
        ),
        const SizedBox(height: 20,),

         Container(
           width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(20),

      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(borderRadius: BorderRadius.all(Radius.circular(10)),child: Image.asset('assets/images/doctor2.jpg',height: 80,width: 120,)),

            Padding(
              padding: const EdgeInsets.only(top: 8,left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Dr. Elizabeth Blackwell',style:TextStyle(fontSize: 16,fontWeight: FontWeight.bold,)),
                  const SizedBox(height: 3,),
                  Text('Gynaecologist',style:TextStyle(fontSize: 13,fontWeight: FontWeight.normal,) ,),
                  const SizedBox(height: 3,),
                  Row(
                    children: [
                      Icon(Ionicons.star,color: Colors.amber,size: 20,),
                      const SizedBox(width: 5,),
                      Text('3.8',style:TextStyle(fontSize: 13,fontWeight: FontWeight.normal,) ,),
                      const SizedBox(width: 30,),
                      Icon(Ionicons.time,color: Colors.blue,size: 20,),
                      const SizedBox(width: 5,),
                      Text('10 Am - 5 Pm',style:TextStyle(fontSize: 13,fontWeight: FontWeight.normal,) ,),
                    ],
                  ),
                  
                ],
              ),
            ),
          ],
        ),
      ),
       
        ),

      ],

    );
  }
}