import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio Marcos Rocha',
      theme: ThemeData(
     
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, });
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 216, 0, 0),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.network('https://www.google.com/url?sa=i&url=https%3A%2F%2Fletsenhance.io%2F&psig=AOvVaw1HIn0rPVappQLAmPudRK5j&ust=1747708546379000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCNjPqeq_ro0DFQAAAAAdAAAAABAE'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Marcos Rocha",style: TextStyle(
                    fontSize: 50, color: Colors.white, fontWeight: FontWeight.w700,
                  ),),
                 Row(
                  children: [
                    Image.asset('assets/github.png', scale: 1,),
                    
                    IconButton(onPressed: (){}, icon: Image.asset("assets/gmail.png", fit: BoxFit.cover,) ),
                    IconButton(onPressed: (){}, icon: Image.asset("assets/logo_git.png")),
                  ],)
                ],
              )
            ],
          ),
        ),
      ) 
    );
  }
}
