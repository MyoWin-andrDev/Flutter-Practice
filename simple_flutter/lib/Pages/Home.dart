import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Page")),
      body: Center(
        child: Column(
          children: [
            // Left column with buttons
            _makeElevatedAndTextButtons(),

            // Middle column with icon and outline buttons
            _makeIconAndOutlineButton(),
            Column(
              children: [
                SizedBox(
                  width: 200,
                  child:  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      labelText: "Edit Text"
                    ),
                  ),
                ),
                SizedBox(height: 16),
                SizedBox(
                  width: 200,
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder()
                    ),
                  ),
                )
              ],
            ),

            SizedBox(height: 16),

            // Right column with images and other widgets
            Expanded(
              child: Column(
                children: [
                  Image.network(
                    "https://pngate.com/wp-content/uploads/2025/05/flutter-logo-blue-modern-flat-design-icon-1.png",
                    width: 200,
                    height: 200,
                  ),
                  const FlutterLogo(size: 200),
                  InkWell(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Alarm Clicked")),
                      );
                    },
                    child: const Icon(Icons.access_alarm),
                  ),
                  GestureDetector(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Home Clicked")),
                      );
                    },
                    child: const Icon(Icons.home),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _makeElevatedAndTextButtons() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: const Text("Elevated Button"),
                  backgroundColor: Colors.green.shade200,
                ),
              );
            },
            child: const Text("Elevated Button"),
          ),
          const SizedBox(height: 8),
          TextButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Text Button")),
              );
            },
            child: const Text("Text Button"),
          ),
        ],
      ),
    );
  }

  Widget _makeIconAndOutlineButton() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Icon Button")),
              );
            },
            icon: const Icon(Icons.send, size: 22.0),
            style: IconButton.styleFrom(
              side: const BorderSide(color: Colors.blueGrey),
            ),
          ),
          const SizedBox(height: 8),
          OutlinedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("OutLine Button")),
              );
            },
            child: const Text("OutLine"),
          ),
        ],
      ),
    );
  }
}