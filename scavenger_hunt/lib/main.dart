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
              'Are you ready?',
              style: Theme.of(context).textTheme.headlineMedium,
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
              'Look at the lights',
              style: Theme.of(context).textTheme.headlineMedium,
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
              'Look at the neon sign',
              style: Theme.of(context).textTheme.headlineMedium,
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
              'Look at the hall',
              style: Theme.of(context).textTheme.headlineMedium,
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
              'Look at the hall',
              style: Theme.of(context).textTheme.headlineMedium,
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
              'Look at the bridge',
              style: Theme.of(context).textTheme.headlineMedium,
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
              'Look at the treasure',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Exit',
              ),
            ),
          ],
        ),
      ),
    );
  }
}