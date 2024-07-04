import 'package:app_demonstration/screens/herbal_tea.dart';
import 'package:app_demonstration/screens/sandwich.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App Bar Setup
      appBar: AppBar(
        title: const Text("Menu",
          // Styling Text
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
        // Gradient App Bar
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color(0xfffc00ff),
                  Color(0xff00dbde)
                ],
            ),
          ),
        ),
      ),
      // To Create Scrollable Menu
      body: SingleChildScrollView(
        // To Provide Padding
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
          child: Column(
            children: [
              const Text("Today's Specials",
                style: TextStyle(
                  fontSize: 24
                ),
              ),
              const SizedBox(height: 20),
              // Card Used For Aesthetic UI Design
              Card(
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: ListTile(
                    leading: const CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_StpqnWoNp9FFQ2hx3lP8UN1zKTAaqVsN3A&s"),
                    ),
                    title: const Text("Sandwich",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    subtitle: const Text("Freshly Made"),
                    trailing: const Text("\$7.99",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.green
                      ),
                    ),
                    //Navigate to New Page
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const SandwichDetails()));
                    },
                  ),
                ),
              ),
              const SizedBox(height: 10),
              // Card Used For Aesthetic UI Design
              Card(
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: ListTile(
                    leading: const CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3R41taxfdf50PkoCh7WbujwF8WFdkjbBIHw&s"),
                    ),
                    title: const Text("Herbal Tea",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    subtitle: const Text("100% Authentic"),
                    trailing: const Text("\$2.49",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.green
                      ),
                    ),
                    //Navigate to New Page
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const HerbalTeaDetails()));
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
