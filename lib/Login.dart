import 'package:flutter/material.dart';
import 'package:googlemapsapp/GoogleMaps.dart';
import 'package:googlemapsapp/Register.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String email='';
  String error='';
  String password='';
  final formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
        backgroundColor: Colors.deepOrange,
        actions:[
          TextButton.icon(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>const Register()));
            },
           icon: const Icon(Icons.person),
            label: const Text('Register'),
          )],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal:50.0),
        child:Form(
          key:formkey,
          child:Column(
              children:[
                TextFormField(
                  validator: (value) => value!.isEmpty?'please enter an email':null,
                  onChanged: (value) => setState(() {
                    email=value;
                  }),
                  decoration:const InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    hintText: 'Email'
                  ),
                ),
                const SizedBox(height: 30.0,),
                TextFormField(
                  validator: (value) => value!.length<6?'short password':null,
                  onChanged: (value) => setState(() {
                    password=value;
                  }),
                  obscureText: true,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    hintText: 'Password',
                  ),
                ),
                const SizedBox(height: 30.0,),
                ElevatedButton(
                  onPressed: (){
                    if(formkey.currentState!.validate()){
                      //Verification de l'email et du mot de passe
                      //Redirection
                      Navigator.push(context, MaterialPageRoute(builder:
                      (context)=>GoogleMaps()));
                    }
                    else{
                      setState(() {
                        error='form not validated';
                      });
                      print('$error');
                    }
                  },
                  child: const Text('Submit'),
                )
                

            ]
          )
        )
      )
    );
  }
}