import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:readmore/readmore.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';


class ThirdPage extends StatelessWidget {
 const ThirdPage({Key? key}) : super(key: key);
 final String description = "Dentists are responsible for anything regarding the health of the mouth, including the teeth, gums and dental tissues. They need to be licensed to perform their duties. Note that dentist education requirements may differ from country to country or from state to state.";
   
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        leading:  Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(decoration:BoxDecoration(color: Colors.white10,borderRadius: BorderRadius.all(Radius.circular(10)),
          ) ,
          child: ClipRRect(borderRadius: BorderRadius.all(Radius.circular(5)),child: Icon(Ionicons.arrow_back,color: Colors.white,))),
        ),
        title: Row(
          children: [
            const SizedBox(width: 80,),
            Text('Details',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white,),),
            
          ],
        ),
        
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 220,
              decoration: BoxDecoration(
                color: Colors.deepPurple,shape: BoxShape.rectangle,borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40),bottomRight: Radius.circular(100))
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 8,left: 16,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                
                  children: [
                    
                    Text('Dr. Akshat Khanna',style: TextStyle(color: Colors.white,fontSize: 26,fontWeight: FontWeight.bold),),
                    const SizedBox(height: 8,),
                    Row(
                      children: [
                        
                        Container(decoration: BoxDecoration(color:Colors.white24,borderRadius: BorderRadius.all(Radius.circular(5))),child: ClipRRect(borderRadius: BorderRadius.all(Radius.circular(10)),child: Image.asset('assets/icons/teeth.png',height: 25,))),
                        const SizedBox(width: 8,),
                        Text('Dentist',style: TextStyle(color: Colors.white,fontSize: 16),),
                        const SizedBox(width: 20,),
                        Icon(Ionicons.star,color: Colors.amber,size: 20,),
                        const SizedBox(width: 8,),
                        Text('4.9',style: TextStyle(color: Colors.white,fontSize: 16,),),
                        
                       
                      ],
                    ),
                    
                    Row(
                     
                      children: [
                       
                        Padding(
                          padding: const EdgeInsets.only(left: 10,),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                 const SizedBox(height: 10,),
                              Text('Visiting Hour :-',style: TextStyle(color: Colors.white,fontSize: 14,),),
                              Text('11 Am - 2 Pm',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold,),),
                              const SizedBox(height: 20,),
                              Text('Total Patients:-',style: TextStyle(color: Colors.white,fontSize: 14,),),
                              Text('1200 +',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold,),),
                            ],
                          ),
                        ),
                        const SizedBox(width: 59,),
                       ClipRRect(borderRadius: BorderRadius.only(bottomRight: Radius.circular(100)),child: Image.asset('assets/images/doctor3.png',height: 145,width: 200,)),
                    
                      ],
                    ),
                  
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 18,),
              child: const Text('Description',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),
            ),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 18,right: 18),
              child: SingleChildScrollView(scrollDirection: Axis.vertical,child: Container(
                child: ReadMoreText(description,trimLines: 3,
                textAlign: TextAlign.justify,
                trimMode: TrimMode.Line,
                trimCollapsedText: ' Read More ',
                trimExpandedText: ' Read Less ',
                lessStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue,),
                moreStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),
                style: TextStyle(fontSize: 15,),),
              )),
            ),
            const SizedBox(height: 10),
             Padding(
              padding: const EdgeInsets.only(left: 18,),
              child: const Text('Schedule',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18,right: 18,top: 10),
              child: Container(
                decoration:BoxDecoration(color: Color.fromARGB(255, 233, 230, 230),borderRadius: BorderRadius.all( Radius.circular(10))) ,
               
                
                child: DatePicker(
                  DateTime.now(),
                  height: 84,
                  width: 80,
                  initialSelectedDate: DateTime.now(),
                  selectionColor: Colors.deepPurple,
                  selectedTextColor: Colors.white,
                  dayTextStyle: TextStyle(fontSize: 10),
                  monthTextStyle: TextStyle(fontSize: 10),
                  dateTextStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                  
                  
                ),
              ),
            ),
            const SizedBox(height: 10,),
             Padding(
              padding: const EdgeInsets.only(left: 18,),
              child: const Text('Location',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),
            ),
      
          const SizedBox(height:10,),
          Center(child: ClipRRect(borderRadius: BorderRadius.all(Radius.circular(60)),child: Image.asset('assets/images/maps.jpg',height: 180,))),
         
          Padding(
                   padding: const EdgeInsets.all(16),
                   child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(onPressed:() {},style: ElevatedButton.styleFrom(shape: StadiumBorder(),backgroundColor: Colors.black), child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: const Text("Book an Appoinment",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold,),),
                    ),)),
                 ),
            
          ],
        ),
      ),
      
    );
  }
}