import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:medapp/widget/category.dart';
import 'package:medapp/widget/doctor_profile.dart';
import 'package:medapp/widget/upcoming_cards.dart';

class UserSpace extends StatelessWidget {
  const UserSpace({super.key});

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(title: Row(
         children: [
           ClipOval(child: Image.asset('assets/images/doctor.png',width: 50,)),
          Padding(
            padding: const EdgeInsets.only(left: 10,),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               const Text('Welcome Back !',style: TextStyle(fontSize: 16,color: Colors.black54,fontWeight: FontWeight.bold)),
                const Text('Akshat',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              ]
              ,
            ),
          ),
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Container(
            decoration: BoxDecoration(shape: BoxShape.circle,),
            foregroundDecoration: BoxDecoration(color: Colors.black12,borderRadius: BorderRadius.circular(10),),
            child: IconButton(onPressed: (){}, icon: const Icon(Ionicons.menu_sharp)
            ),
          ),
        ),
      ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(14.0),
        children:  [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Upcoming Appointments',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
                  ],
                ),
              ),
              const SizedBox(width: 50,),
           Column(
            children: [
              
              Text('See All',style:TextStyle(fontSize: 14,fontWeight: FontWeight.normal,color: Colors.black54,)),
            ],
           )
            ],
          ),
          const SizedBox(height: 15,),
          //Upcoming_Cards (file is in widget Folder!)
           UpcomingPage(),

          // search Bar & filter icon
          const SizedBox(height: 20,),
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.black12,
                    hintText: 'Search',
                    hintStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                    prefixIcon: Icon(Ionicons.search_sharp),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    )
                  ),
                  
                ),
                
              ),
              Padding(
                padding: EdgeInsets.only(left: 16,),
                child: Column(
                  
                  children: [
                   ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    child: Container(
                       color: Theme.of(context).primaryColor.withOpacity(0.8),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Ionicons.options,size: 27,color: Colors.white,),
                      ))),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20,),
        
            Row(
              
              children: [
                const SizedBox(width: 10,),
                Text('Category',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
                const SizedBox(width: 200,),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text('See All',style:TextStyle(fontSize: 14,fontWeight: FontWeight.normal,color: Colors.black54,)),
                ),
              ],
            ),
             const SizedBox(height: 20,),
             Row(

             ),
              //Category View (file in widget folder)
              CategoryView(),
              const SizedBox(height: 20,),
              Row(
                children: [
                    const SizedBox(width: 10,),
                  Text('Top Rated Doctors',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700) ,),
                  const SizedBox(width: 110,),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text('See All',style:TextStyle(fontSize: 14,fontWeight: FontWeight.normal,color: Colors.black54,),),
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              //Doctor Profile(code in Widgets)
              DoctorProfile(),



        ],

      ),
     bottomNavigationBar: Padding(
       padding: const EdgeInsets.all(12.0),
       child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
         child: BottomNavigationBar(
          
          backgroundColor: Colors.black87,
         type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
          BottomNavigationBarItem(icon: Icon(Ionicons.home_outline,color: Colors.white),activeIcon: Icon(Ionicons.home,color: Colors.white,),label: 'Home'),
           BottomNavigationBarItem(icon: Icon(Ionicons.calendar_number_outline,color: Colors.white,),activeIcon: Icon(Ionicons.calendar_number,color: Colors.white,),label: 'home'),
            BottomNavigationBarItem(icon: Icon(Ionicons.chatbubble_ellipses_outline,color: Colors.white,),label: 'home'),
             BottomNavigationBarItem(icon: Icon(Ionicons.person_outline,color: Colors.white,),label: 'home'),
           
         ]
         ),
       ),
     ) ,
    ) ;
  }
}
