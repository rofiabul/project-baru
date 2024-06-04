import 'package:flutter/material.dart';
import 'package:myapp/homePage.dart';



class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
            appBar: AppBar(
              title:
                  Align(alignment: Alignment.centerRight, child: Text('Login')),
              leading: Icon(Icons.home),
            ),
            body:  SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  
                  children: <Widget>[
                    
                    Container(
                     
                      child: Image.asset(
                          "assets/images/gambar-logo.png"),
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30)),
                    ),
                    SizedBox(height: 10),
                    TextFormField(decoration: InputDecoration(labelText:'username',border: OutlineInputBorder())),
                    SizedBox(height: 10),
                     TextFormField(obscureText: true,decoration: InputDecoration(
                      labelText:'password',border: OutlineInputBorder())),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(onPressed: (){}, child: Text('Register')),
                        ElevatedButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)
                            => Homepage()
                          ));
                        }, child: Text('Login')),
                      ],
                    )
                  ],
                ),
              ),
            ));
  }
}