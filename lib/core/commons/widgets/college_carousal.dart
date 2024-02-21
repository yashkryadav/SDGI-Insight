import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CollegeCarousal extends StatefulWidget {
  const CollegeCarousal({
    required this.imagePaths,
    super.key,
  });
  final List<String> imagePaths;

  @override
  State<CollegeCarousal> createState() => _CollegeCarousalState();
}

class _CollegeCarousalState extends State<CollegeCarousal> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          decoration: const BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(12),
            ),
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: CarouselSlider(
                items: widget.imagePaths.map((imagePath) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.fill,
                    ),
                  );
                }).toList(),
                options: CarouselOptions(
                  enlargeCenterPage: true,
                  viewportFraction: 1,
                  autoPlay: true,
                  enableInfiniteScroll: false,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            widget.imagePaths.length,
            (index) => Container(
              width: 8,
              height: 8,
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 2),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentIndex == index
                    ? Colors.grey
                    : Colors.grey.withOpacity(0.5),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
