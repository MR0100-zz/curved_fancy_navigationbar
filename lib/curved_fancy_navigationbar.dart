library curved_fancy_navigationbar;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'fancy_paint.dart';

typedef OnChangeFunction(int iconIndex);

class CurvedFancyNavigationBar extends StatefulWidget {
  final double height;
  final Color backgroundColor;
  final List<IconData> icons;
  final Color selectedColor;
  final OnChangeFunction onChange;
  final Color selectedIconColor;
  final Color iconColor;
  final double iconSize;
  final double titleSize;
  final List<String> iconTitle;

  CurvedFancyNavigationBar({
    this.height = 110.0,
    this.backgroundColor = Colors.deepPurple,
    this.icons,
    this.selectedColor,
    this.onChange,
    this.selectedIconColor = Colors.white,
    this.iconColor = Colors.grey,
    this.iconSize = 25.0,
    this.iconTitle,
    this.titleSize = 16.0,
  }) {
    assert(iconTitle.length == icons.length && iconTitle.length > 1);
  }

  @override
  _CurvedFancyNavigationBarState createState() =>
      _CurvedFancyNavigationBarState();
}

class _CurvedFancyNavigationBarState extends State<CurvedFancyNavigationBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: MediaQuery.of(context).size.width,
      child: CustomPaint(
        painter: FancyPaint(widget.backgroundColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: List.generate(widget.icons.length, (index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                selectedIndex == index
                    ? Text(
                        widget.iconTitle[index],
                        style: TextStyle(
                            color: Colors.white, fontSize: widget.titleSize),
                      )
                    : IconButton(
                        onPressed: () => setState(() {
                          selectedIndex = index;
                          widget.onChange(selectedIndex);
                        }),
                        icon: Icon(
                          widget.icons[index],
                          color: selectedIndex == index
                              ? widget.selectedIconColor
                              : widget.iconColor,
                          size: widget.iconSize,
                        ),
                      ),
                selectedIndex == index
                    ? Container(
                        margin: EdgeInsets.only(top: 5.0),
                        color: Colors.white,
                        height: 3.0,
                        width: 8.0,
                      )
                    : SizedBox()
              ],
            );
          }),
        ),
      ),
    );
  }
}
