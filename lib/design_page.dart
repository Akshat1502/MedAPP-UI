import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class NewDesign extends StatefulWidget {
  const NewDesign({Key? key}) : super(key: key);

  @override
  _NewDesignState createState() => _NewDesignState();
}

class _NewDesignState extends State<NewDesign> {
  final PageController _pageController = PageController();
  final int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose(); // Dispose the page controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(title: Text('MedApp')),
        body: Container(
          color: Colors.purple[700],
          child: Stack(
            
            children: [
              Image.asset('assets/images/doctor.png',height: 470,width: 380,alignment: Alignment.center,),
              
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 470,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(250),
                      topRight: Radius.circular(250),
                    ),
                  ),
                  
                  child: Column(
                    children: [
                      const SizedBox(height: 70,),
                      const Text('Akshat Medical App',textAlign: TextAlign.center,style:TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color: Colors.black,
                )
                ,),
                const SizedBox(height: 10,
                ),
                const Text('(An Apple a Day,Keeps A Doctor Away!)',textAlign: TextAlign.center,style: TextStyle(fontSize:14 , color: Colors.black54,
                ),
              
                ),
                 const SizedBox(height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: const Text('Your all-in-one healthcare solution. Schedule\nappointments,book services, and order medications seamlessly through our \n user-friendly mobile application, simplifying your healthcare experience.',
                  textAlign: TextAlign.center,style: TextStyle(fontSize: 16,color: Colors.black45),),
                ),
                 const SizedBox(height: 30
              ,),
             SmoothPageIndicator(
                  controller: _pageController,
                  count: 3, // Replace with the total number of pages
                  effect: ExpandingDotsEffect(
                    activeDotColor: Colors.deepPurpleAccent,
                    dotColor: Colors.deepPurple.withOpacity(0.5),
                    dotHeight: 8,
                    dotWidth: 8,
                    spacing: 12,
                  ),
                ),
              
                const SizedBox(height: 20,),
               Padding(
                 padding: const EdgeInsets.all(16),
                 child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed:() {},style: ElevatedButton.styleFrom(shape: StadiumBorder(),backgroundColor: Colors.amberAccent), child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: const Text("LET'S GET STARTED",style: TextStyle(color: Colors.deepPurpleAccent,fontSize: 20,fontWeight: FontWeight.bold,),),
                  ),)),
               ),

                    ],
                  ),
                
                ),
              ),
              
            ],
          ),
        ),
      );
  }
}