import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InstaPostes extends StatefulWidget {
   InstaPostes({super.key});

  @override
  State<InstaPostes> createState() => _InstaPostesState();
}

class _InstaPostesState extends State<InstaPostes> {
  List Post = [
    {
      'name' : 'Karim1',
      'likes' : '27',
      'title' : 'Welcome to Flutter ',
      'image' : 'images/111.png'
    },
    {
      'name' : 'Mohamed3',
      'likes' : '12',
      'title' : 'Welcome to Dart ',
      'image' : 'images/333.png'
    },
    {
      'name' : 'Hassan',
      'likes' : '15',
      'title' : 'Welcome to Php ',
      'image' : 'images/222.png'
    },

    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(

        child: ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: Post.length,
          itemBuilder: (context , index ) {
            return  Column(

            children: [

              Row(
                children: [
                  CircleAvatar(
                    backgroundImage:AssetImage(Post[index]['image'],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(Post[index]['name'],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Icon(Icons.more_horiz_outlined,
                    color: Colors.white,
                    size: 20,
                  ),
                  SizedBox(width: 10,),
                ],
              ),
              Image(image: AssetImage(Post[index]['image'],
              ),
                width: double.infinity,

              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(Icons.favorite,
                        size: 20,
                        color: Colors.white,
                      ),
                      SizedBox(width: 8,),
                      Icon(FontAwesomeIcons.comment,
                        size: 20,
                        color: Colors.white,
                      ),
                      SizedBox(width: 8,),

                      Icon(Icons.send,
                        size: 20,
                        color: Colors.white,
                      ),
                    ],
                  ),


                  Row(
                    children: [
                      Icon(
                        Icons.more_horiz_outlined,
                        color: Colors.white,
                        size: 40,
                      ),
                    ],
                  ),

                  Icon(Icons.bookmark,
                    color: Colors.white,
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.all(12),

                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(Post[index]['image'],
                          ),
                          radius: 5,
                        ),
                        SizedBox(width: 5,),
                        Text('liked by ',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 10,
                          ),
                        ),
                        Text(Post[index]['name'],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                          ),
                        ),
                        Text( 'and',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 10,
                          ),
                        ),
                        Text( Post[index]['likes'],
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 10,
                          ),
                        ),
                        Text( 'others',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(Post[index]['name'],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                          ),
                        ),

                        Text(Post[index]['title'],
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        TextButton(onPressed: (){},
                          child: Text(
                            'View 1 comment',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5,),
                  ],
                ),
              ),


            ],
          );
          },
        ),
      ),
    );
  }
}
