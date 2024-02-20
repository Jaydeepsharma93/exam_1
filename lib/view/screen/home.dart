import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}
 double pr=10;
class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.menu,
            size: 30,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Icon(
                Icons.shopping_cart_outlined,
                size: 30,
              ),
            )
          ],
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Welcome to Flystore.',
                  style: TextStyle(fontSize: 20,height: 1, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Container(
                          height: 70,
                          width: 280,
                          decoration: BoxDecoration(
                              color: Color(0xffF5F6FA),
                              boxShadow:[
                                BoxShadow(
                                  color: Colors.black12,
                                  spreadRadius: 1,
                                  blurRadius: 10,
                                  offset: Offset(5, 5)
                                )
                              ],
                              borderRadius: BorderRadius.circular(15)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.search,
                                  color: Color(0xff8F959E),size: 35,
                                ),
                                Text(
                                  '   Search...',
                                  style: TextStyle(color: Color(0xff8F959E),fontSize: 25),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(15)),
                        child: Icon(Icons.mic_none_outlined,color: Colors.white,size: 35,),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'New Arraival',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'View all',
                      style: TextStyle(fontSize: 20,color: Color(0xff8F959E)),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text('Filter',style:TextStyle(
                    fontSize: 20,
                    color: Colors.black54
                  ),),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 20,
                      width: 300,
                      child: Slider(value:pr,
                          min: 10,
                          max: 100,
                          divisions: 9,
                          activeColor: Colors.black54,
                          onChanged: (value){
                            setState(() {
                              pr=value;
                            });
                          }),
                    ),
                    Text("\$ ${pr.toStringAsFixed(0)} under",
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 10,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
