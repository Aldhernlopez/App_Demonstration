import 'package:flutter/material.dart';

class HerbalTeaDetails extends StatelessWidget {
  const HerbalTeaDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Herbal Tea",
          style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3R41taxfdf50PkoCh7WbujwF8WFdkjbBIHw&s"),
                ),
              ),
            ),
            const SizedBox(height: 50),
            SizedBox(
              width: MediaQuery.of(context).size.width*0.9,
              child: const Card(
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Text("Ingredients",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w900
                        ),
                      ),
                      SizedBox(height: 10),
                      Text("Ingredient #1"),
                      Text("Ingredient #2"),
                      Text("Ingredient #3"),
                      Text("Ingredient #4"),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              // Giving Color to Button
              style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll<Color>(Colors.green)
              ),
              onPressed: (){},
              child: const Text("Place Order",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
