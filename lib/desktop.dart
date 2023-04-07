import 'package:flutter/material.dart';

class DesktopScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("LogIn "),
      //   elevation: 0.0,
      //   centerTitle: false,
      //
      // ),
      body: Row(
        children: [
          Expanded(
            child: Container(
              height: double.infinity,
              color: Colors.teal,
            ),
          ),
          Expanded(

            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Login To Your Account ',
                  style: Theme.of(context).textTheme.headline4,),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email Address'
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'PassWord'
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.teal,
                          height: 45.0,

                          child: MaterialButton(onPressed: (){},

                            child: Text('LogIn',
                          style: TextStyle(
                            color: Colors.white,

                          ),
                          ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.blue,
                          height: 45.0,

                          child: MaterialButton(onPressed: (){},

                            child: Text('Register',
                              style: TextStyle(
                                color: Colors.white,

                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),


                ],
              ),
            ),
          )
          
        ],
      ),
    );
  }
}
