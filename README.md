# curved_fancy_navigationbar
```
Bottom NavigationBar with beautiful curved design.
```
## How to use

* import following dependencies in [pubspec.yaml](https://dart.dev/tools/pub/pubspec)
```yaml
  curved_fancy_navigationbar:
    git:
      url: https://github.com/MR0100/curved_fancy_navigationbar.git
```

* explanations.
  
```dart

/// onChange : when select any icon

CurvedFancyNavigationBar(
  backgroundColor: Colors.lime,
  iconSize: 28,
  titleSize: 17.0,
  onChange: (index) {
    print(index);
  },
  iconTitle: [
    'home', 
    'notification', 
    'varified', 
    'timelapse'
  ],
  icons: [
    Icons.home,
    Icons.notifications_none,
    Icons.verified_user,
    Icons.timelapse
  ],
),
```


## Example

```dart

import 'package:curved_fancy_navigationbar/curved_fancy_navigationbar.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: CurvedFancyNavigationBar(
        backgroundColor: Colors.lime,
        iconSize: 28,
        titleSize: 17.0,
        onChange: (index) {
          print(index);
        },
        iconTitle: ['home', 'notification', 'varified', 'timelapse'],
        icons: [
          Icons.home,
          Icons.notifications_none,
          Icons.verified_user,
          Icons.timelapse
        ],
      ),
    );
  }
}

```
