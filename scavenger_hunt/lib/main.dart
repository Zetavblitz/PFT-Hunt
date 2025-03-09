import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PFT Scavenger Hunt',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
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
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'The hunt begins...',
              style: Theme.of(context).textTheme.headlineMedium
            ),
            Text(
              'On the first floor of PFT, there is a hidden cave of treasure.',
            ),
            Text(
              'To claim this treasure is not without cost.'
            ),
            Text(
              'But first, there is only one question that matters...'
            ),
            Text(
              'Are you ready?',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Panera(title: 'Starting Location: Panera Bread')),
                );
              },
              child: Text(
                'Begin',
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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(image: AssetImage('Panera.jpg')),
            Text(
              'Go to Panera Bread on the first floor of PFT.',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              'This is the starting point for your search.'
            ),
            Text(
              'Once you have located Panera, press \'Continue\''
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Lights(title: 'First Puzzle: Hanging Lights')),
                );
              },
              child: Text(
                'Continue',
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(image: AssetImage('Lights.jpg')),
            Text(
              'Look at the hanging lights.',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              'In the atrium with tables in front of Panera, there are a number of hanging, cylindrical lights.'
            ),
            Text(
              'How many hanging lights are there?'
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Chevron(title: 'Chevron Sign')),
                );
              },
              child: Text(
                'Continue',
              ),
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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(image: AssetImage('Chevron.jpg')),
            Text(
              'Find the Neon Chevron sign.',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              'Elsewhere on the first floor of PFT, there is a vibrant Neon sign.',
            ),
            Text(
              'This is the sign for the Chevron Center.',
            ),
            Text(
              'Once you have located the Chevron Center, press \'Continue\'',
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Hallway(title: 'Find the Room')),
                );
              },
              child: Text(
                'Continue',
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(image: AssetImage('Hallway.jpg')),
            Text(
              'You\'re now searching for a specific room.',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              'But first, you need to look at more lights. In the atrium across from the Chevron center, count the number of hanging lights.'
            ),
            Text(
              'The exact number of lights has a specific prime decomposition. Each prime is a single digit.'
            ),
            Text(
              'Find the full prime decomposition.'
            ),
            Text(
              'Beginning with a leading 1, write each prime number in the decomposition in ascending order.'
            ),
            Text(
              '\nWhat is the room number of the room you are looking for?',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Glass(title: 'Glass Walls')),
                );
              },
              child: Text(
                'Continue',
              ),
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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(image: AssetImage('Glass.jpg')),
            Text(
              'What kind of room was it?.',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              'The room should have been a lab. But, we can\'t see anything interesting inside!'
            ),
            Text(
              'However, there IS a side of PFT with glass-walled labs full of cool stuff.'
            ),
            Text(
              'The labs stretch all the way from one end to the other through a spacious open walkway.'
              ),
            Text(
              'Which side of the building is that?'
              ),
            Text(
              'Go find it.',
              style: Theme.of(context).textTheme.headlineSmall
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Skybridge(title: 'Bridge')),
                );
              },
              child: Text(
                'Continue',
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(image: AssetImage('Skybridge.jpg')),
            Text(
              'In the middle of this walkway is an overhead bridge.',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              'Find the middlemost skybridge and stand underneath it.'
            ),
            Text(
              'There are more hanging lights in this open hall. Look at the portion of ceiling on each side of the bridge.'
            ),
            Text(
              'One side has fewer lights than the other. How many?'
            ),
            Text(
              'Enter the number of lights on the side with fewer, followed by two zeros.',
              style: Theme.of(context).textTheme.headlineSmall
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Vending(title: 'Treasure')),
                );
              },
              child: Text(
                'Continue',
              ),
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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(image: AssetImage('Vending.jpg')),
            Text(
              'Go to Zone 1100.',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              'The closest sign to Zone 1100 is right beside you! Follow it from your place under the middle skybridge.'
            ),
            Text(
              'Just beyond the sign for Zone 1100, there is a secret cave off to the right. In it you will find glorious treasures.'
            ),
            Text(
              'But now...'
            ),
            Text(
              'Are you willing to pay the price?',
              style: Theme.of(context).textTheme.headlineSmall
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const MyHomePage(title: 'PFT Scavenger Hunt')),
                );
              },
              child: Text(
                'Back to Beginning',
              ),
            ),
          ],
        ),
      ),
    );
  }
}