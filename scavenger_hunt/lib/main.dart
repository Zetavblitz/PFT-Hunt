import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

Color lsuPurple = Color.fromARGB(255, 70, 29, 124);
Color lsuGold = Color.fromARGB(255, 253, 208, 35);
Color lightGray = Color.fromARGB(255, 208, 208, 208);
Color gray50 = Color.fromARGB(255, 153, 153, 153);
Color black = Color.fromARGB(255, 0, 0, 0);
Color lightPurple = Color.fromARGB(255, 163, 154, 172);
Color white = Color.fromARGB(255, 255, 255, 255);
Color lightGold = Color.fromARGB(255, 241, 238, 219);

double pageSpacing = 16.0;
double headerFontSize = 36.0;
double bodyFontSize = 18.0;
double textInputSize = 24.0;

Color bodyFontColor = lightGold;
Color headerFontColor = lsuGold;
Color pageBackgroundColor = lsuPurple;
Color buttonColor = white;
Color buttonTextColor = black;
Color textInputColor = white;
Color appBarColor = white;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PFT Scavenger Hunt',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 70, 29, 124)),
          primaryColorDark: const Color.fromARGB(255, 70, 29, 124),
          primaryColorLight: const Color.fromARGB(255, 253, 208, 35),
          
          useMaterial3: true,
      ),
      home: const MyHomePage(title: 'PFT Scavenger Hunt'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lsuPurple,
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(
          widget.title,
          selectionColor: black,
          ),
      ),
      body: Center(
        child: Column(
          spacing: pageSpacing,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'The Hunt Begins',
              style: TextStyle(
                color: headerFontColor,
                fontSize: headerFontSize,
              ),
            ),
            Text(
              'On the first floor of PFT, there is a hidden cave of treasure. To claim this treasure is not without cost.',
              style: TextStyle(
                color: bodyFontColor,
                fontSize: bodyFontSize,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'Are you ready?',
              style: TextStyle(
                color: bodyFontColor,
                fontSize: bodyFontSize,
              )
            ),
            TextButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll<Color>(buttonColor),
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Panera(title: 'Starting Location: Panera Bread')),
                );
              },
              child: Text(
                'Begin',
                style: TextStyle(
                  color: buttonTextColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Panera Page
class Panera extends StatefulWidget {
  const Panera({super.key, required this.title});
  final String title;

  @override
  State<Panera> createState() => _PaneraState();
}

class _PaneraState extends State<Panera> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(widget.title),
      ),
      backgroundColor: lsuPurple,
      body: Center(
        child: Column(
          spacing: pageSpacing,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(image: AssetImage('Panera.jpg')),
            Text(
              'Panera Bread',
              style: TextStyle(
                color: headerFontColor,
                fontSize: headerFontSize,
              ),
            ),
            Text(
              'Go to Panera Bread on the first floor of PFT. This is the starting point for your search.',
              style: TextStyle(
                color: bodyFontColor,
                fontSize: bodyFontSize,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'Once you have located Panera, press \'Continue.\'',
              style: TextStyle(
                color: bodyFontColor,
                fontSize: bodyFontSize,
              ),
              textAlign: TextAlign.center,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Lights(title: 'First Puzzle: Hanging Lights')),
                );
              },
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll<Color>(buttonColor),
              ),
              child: Text(
                'Continue',
                style: TextStyle(
                  color: buttonTextColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Lights page
class Lights extends StatefulWidget {
  const Lights({super.key, required this.title});
  final String title;

  @override
  State<Lights> createState() => _LightsState();
}

class _LightsState extends State<Lights> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(widget.title),
      ),
      backgroundColor: pageBackgroundColor,
      body: Center(
        child: Column(
          spacing: pageSpacing,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(image: AssetImage('Lights.jpg')),
            Text(
              'Hanging Lights',
              style: TextStyle(
                color: headerFontColor,
                fontSize: headerFontSize,
              ),
            ),
            Text(
              'In the atrium with tables in front of Panera, there are a number of hanging, cylindrical lights.',
              style: TextStyle(
                color: bodyFontColor,
                fontSize: bodyFontSize,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'How many hanging lights are there?',
              style: TextStyle(
                color: bodyFontColor,
                fontSize: bodyFontSize,
              ),
              textAlign: TextAlign.center,
            ),
            TextField(
              textAlign: TextAlign.center,
              style: TextStyle(
                color: textInputColor,
                fontSize: textInputSize,
              ),
              controller: _controller,
              onSubmitted: (String value) async {
                if (value.compareTo('16') == 0) {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Chevron(title: 'Find the Chevron Center')),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

// Chevron page
class Chevron extends StatefulWidget {
  const Chevron({super.key, required this.title});
  final String title;

  @override
  State<Chevron> createState() => _ChevronState();
}

class _ChevronState extends State<Chevron> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(widget.title),
      ),
      backgroundColor: pageBackgroundColor,
      body: Center(
        child: Column(
          spacing: pageSpacing,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(image: AssetImage('Chevron.jpg')),
            Text(
              'Chevron Sign',
              style: TextStyle(
                color: headerFontColor,
                fontSize: headerFontSize,
              ),
            ),
            Text(
              'Elsewhere on the first floor of PFT, there is a vibrant Neon sign. This is the sign for the Chevron Center.',
              style: TextStyle(
                color: bodyFontColor,
                fontSize: bodyFontSize,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'Once you have located the Chevron Center, press \'Continue\'',
              style: TextStyle(
                color: bodyFontColor,
                fontSize: bodyFontSize,
              ),
              textAlign: TextAlign.center,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Hallway(title: 'Find the Room')),
                );
              },
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(buttonColor),
              ),
              child: Text(
                'Continue',
                style: TextStyle(
                  color: buttonTextColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Hallway Page
class Hallway extends StatefulWidget {
  const Hallway({super.key, required this.title});
  final String title;

  @override
  State<Hallway> createState() => _HallwayState();
}

class _HallwayState extends State<Hallway> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(widget.title),
      ),
      backgroundColor: pageBackgroundColor,
      body: Center(
        child: Column(
          spacing: pageSpacing,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(image: AssetImage('Hallway.jpg')),
            Text(
              'A Certain Room',
              style: TextStyle(
                color: headerFontColor,
                fontSize: headerFontSize,
              ),
            ),
            Text(
              'But first, you need to look at more lights. In the atrium across from the Chevron center, count the number of hanging lights. The exact number of lights has a specific prime decomposition. Each prime is a single digit. Find the full prime decomposition. Beginning with a leading 1, write each prime number in the decomposition in ascending order.',
              style: TextStyle(
                color: bodyFontColor,
                fontSize: bodyFontSize,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'What is the room number of the room you are looking for?',
              style: TextStyle(
                color: bodyFontColor,
                fontSize: bodyFontSize,
              ),
              textAlign: TextAlign.center,
            ),
            TextField(
              textAlign: TextAlign.center,
              style: TextStyle(
                color: textInputColor,
                fontSize: textInputSize,
              ),
              controller: _controller,
              onSubmitted: (String value) async {
                if (value.compareTo('1233') == 0) {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Glass(title: 'Find the Cool Labs')),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

// Glass page
class Glass extends StatefulWidget {
  const Glass({super.key, required this.title});
  final String title;

  @override
  State<Glass> createState() => _GlassState();
}

class _GlassState extends State<Glass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(widget.title),
      ),
      backgroundColor: pageBackgroundColor,
      body: Center(
        child: Column(
          spacing: pageSpacing,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(image: AssetImage('Glass.jpg')),
            Text(
              'Wall of Labs',
              style: TextStyle(
                color: headerFontColor,
                fontSize: headerFontSize,
              ),
            ),
            Text(
              'The room should have been a lab. But, we can\'t see anything interesting inside! However, there IS a side of PFT with glass-walled labs full of cool stuff. The labs stretch all the way from one end to the other through a spacious open walkway.',
              style: TextStyle(
                color: bodyFontColor,
                fontSize: bodyFontSize,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'Which side of the building is that?\nGo find it.',
              style: TextStyle(
                color: bodyFontColor,
                fontSize: bodyFontSize,
              ),
              textAlign: TextAlign.center,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Skybridge(title: 'Bridge')),
                );
              },
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(buttonColor),
              ),
              child: Text(
                'Continue',
                style: TextStyle(
                  color: buttonTextColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Skybridge page
class Skybridge extends StatefulWidget {
  const Skybridge({super.key, required this.title});
  final String title;

  @override
  State<Skybridge> createState() => _SkybridgeState();
}

class _SkybridgeState extends State<Skybridge> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(widget.title),
      ),
      backgroundColor: pageBackgroundColor,
      body: Center(
        child: Column(
          spacing: pageSpacing,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(image: AssetImage('Skybridge.jpg')),
            Text(
              'Sky Bridge',
              style: TextStyle(
                color: headerFontColor,
                fontSize: headerFontSize,
              ),
            ),
            Text(
              'This are has some overhead bridges. Find the middlemost one and stand underneath it. There are more hanging lights in this open hall. Look at the portion of ceiling on each side of the bridge. One side has fewer lights than the other. How many?',
              style: TextStyle(
                color: bodyFontColor,
                fontSize: bodyFontSize,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'Enter the number of lights on the side with fewer, followed by two zeros.',
              style: TextStyle(
                color: bodyFontColor,
                fontSize: bodyFontSize,
              ),
              textAlign: TextAlign.center,
            ),
            TextField(
              textAlign: TextAlign.center,
              style: TextStyle(
                color: textInputColor,
                fontSize: textInputSize,
              ),
              controller: _controller,
              onSubmitted: (String value) async {
                if (value.compareTo('1100') == 0) {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Vending(title: 'Treasure!')),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

// Vending Page
class Vending extends StatefulWidget {
  const Vending({super.key, required this.title});
  final String title;

  @override
  State<Vending> createState() => _VendingState();
}

class _VendingState extends State<Vending> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(widget.title),
      ),
      backgroundColor: pageBackgroundColor,
      body: Center(
        child: Column(
          spacing: pageSpacing,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(image: AssetImage('Vending.jpg')),
            Text(
              'Treasure',
              style: TextStyle(
                color: headerFontColor,
                fontSize: headerFontSize,
              ),
            ),
            Text(
              'Go to Zone 1100. The closest sign to Zone 1100 is right beside you! Follow it from your place under the middle bridge. Just beyond the sign for Zone 1100, there is a secret cave off to the right. In it you will find glorious treasures. But now...',
              style: TextStyle(
                color: bodyFontColor,
                fontSize: bodyFontSize,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'Are you willing to pay the price?',
              style: TextStyle(
                color: bodyFontColor,
                fontSize: bodyFontSize,
              ),
              textAlign: TextAlign.center,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const MyHomePage(title: 'PFT Scavenger Hunt')),
                );
              },
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(buttonColor),
              ),
              child: Text(
                'Return to Beginning',
                style: TextStyle(
                  color: buttonTextColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}