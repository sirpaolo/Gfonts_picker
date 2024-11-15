import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  final List<String> fontNames = [
    'Abel',
    'Lobster',
    'Pacifico',
    'Roboto',
    'Orbitron',
    'Dancing Script',
    'Creepster',
    'Lora',
    'Eater',
    'Alice',
    'Micro 5',
    'Caveat',
    'Luckiest Guy',
    'Montserrat',
    'Pirata One',
    'Open Sans',
    'Poppins',

  ];

  String selectedFont = 'Abel';
  TextEditingController textController = TextEditingController();

  TextStyle getTextStyle() {
    return GoogleFonts.getFont(selectedFont, fontSize: 50);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.yellow[100],
        appBar: AppBar(
          title: const Text(
            'FONT PICKER',
          ),
          backgroundColor: Colors.yellow[400],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextField(
                  controller: textController,
                  decoration: const InputDecoration(
                    hintText: 'Enter text here',
                    hintStyle: TextStyle(
                      fontSize: 30,
                    ),
                    border: OutlineInputBorder(),
                  ),
                  style: GoogleFonts.getFont(selectedFont, fontSize: 30),
                ),
              ),
              Expanded(
                child: Scrollbar(
                  thumbVisibility: true,
                  thickness: 8,
                  radius: const Radius.circular(10),
                  child: ListView.builder(
                    itemCount: fontNames.length,
                    itemBuilder: (context, index) {
                      final font = fontNames[index];
                      return ListTile(
                        title: Text(
                          font,
                          style: GoogleFonts.getFont(font, fontSize: 30),
                        ),
                        onTap: () {
                          setState(() {
                            selectedFont = font;
                          });
                        },
                      );
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
