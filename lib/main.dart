// import 'package:flutter/material.dart';

// import 'core/services/my_services.dart';
// import 'my_app.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await initialServices();
//   runApp(const MyApp());
// }

import 'package:flutter/material.dart';

class StretchyScrollPhysics extends ScrollPhysics {
  final double itemHeight;
  final double stretchingFactor;

  StretchyScrollPhysics({
    this.itemHeight = 100.0, // Adjust this value as needed
    this.stretchingFactor = 0.5,
    required ScrollPhysics parent,
  }) : super(parent: parent);

  @override
  double applyPhysicsToUserOffset(ScrollMetrics position, double offset) {
    final double stretchOffset = offset * stretchingFactor;
    return super.applyPhysicsToUserOffset(position, stretchOffset);
  }

  @override
  Simulation? createBallisticSimulation(
    ScrollMetrics position,
    double velocity,
  ) {
    final double stretchVelocity = velocity * stretchingFactor;
    return super.createBallisticSimulation(position, stretchVelocity);
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Stretchy ListView Example')),
        body: ScrollConfiguration(
          behavior: MaterialScrollBehavior().copyWith(overscroll: false),
          child: StretchyListView(),
        ),
      ),
    );
  }
}

class StretchyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // Apply the custom physics
      itemCount: 100,
      itemBuilder: (context, index) {
        return Container(
          height: 100.0, // Adjust the height as needed
          color: Color.fromARGB(255, 185, 0, 0),
          child: Center(
            child: Text('Item $index', style: TextStyle(color: Colors.white)),
          ),
        );
      },
    );
  }
}
