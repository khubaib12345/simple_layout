import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Beginner layout task',
      home: Scaffold(
        backgroundColor: Colors.blue[300],
        appBar: AppBar(
          title: const Text("Simple layout",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
          backgroundColor: Colors.deepPurple,
          elevation: 4,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(8),
                      padding: EdgeInsets.all(20),
                      height: 100, // added so the box is visible
                      decoration: BoxDecoration(
                        color: Colors.blue[200], // fixed invalid 150 shade
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 5,
                            offset: const Offset(2, 4),
                          ),
                        ],
                      ),
                      child: Center(child: Icon(Icons.home,size: 40,color: Colors.white,),),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(8),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.green[300],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Text("Home",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(

                      child: Container(
                     margin: EdgeInsets.all(8),
                     padding: EdgeInsets.all(20),
                     decoration: BoxDecoration(
                       color: Colors.orange[300],
                       borderRadius: BorderRadius.circular(15),
                     ),
                     child: Icon(Icons.star,size: 40,color: Colors.white,),
                      ),
                  ),

                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.purple[300],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Center(
                        child: Text(
                          "Favorites",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Container(
                        margin: EdgeInsets.all(8),
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.red[300],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Icon(Icons.favorite,size: 40,color: Colors.white,),
                      ),
                  )
                ],

              ),
              Row(
                children:
                [

                  Expanded(
                      child: Container(
                        margin: EdgeInsets.all(4),
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.teal[300],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text("Profile",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),

                      ),
                  ),
                  
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(4),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.yellow[700],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Icon(Icons.person,size: 40,color: Colors.white,),
                    ),
                  )

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
