import 'dart:io';
import 'package:flutter/material.dart';
import '../widgets/filter_selector.dart';

class DisplayPictureScreen extends StatefulWidget {
  const DisplayPictureScreen({super.key, required this.imagePath});

  final String imagePath;

  @override
  State<DisplayPictureScreen> createState() => _DisplayPictureScreenState();
}

class _DisplayPictureScreenState extends State<DisplayPictureScreen> {
  final ValueNotifier<Color> _filterColor = ValueNotifier<Color>(Colors.white);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Filter Photo')),
      body: Stack(
        children: [
          Positioned.fill(
            child: ValueListenableBuilder<Color>(
              valueListenable: _filterColor,
              builder: (context, color, _) {
                return ColorFiltered(
                  colorFilter: ColorFilter.mode(color.withOpacity(0.5), BlendMode.color),
                  child: Image.file(
                    File(widget.imagePath),
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: FilterSelector(
              filters: [
                Colors.white,
                ...List.generate(
                  Colors.primaries.length,
                  (index) => Colors.primaries[(index * 4) % Colors.primaries.length],
                ),
              ],
              onFilterChanged: (c) => _filterColor.value = c,
            ),
          ),
        ],
      ),
    );
  }
}


