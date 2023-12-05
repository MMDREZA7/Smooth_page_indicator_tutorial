import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:smooth_page_indicator_toturial/pages/pgs/Page_1.dart';
import 'package:smooth_page_indicator_toturial/pages/pgs/Page_3.dart';
import 'package:smooth_page_indicator_toturial/pages/pgs/Page_4.dart';
import 'package:smooth_page_indicator_toturial/pages/pgs/page_2.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 500,
            child: PageView(
              controller: _controller,
              children: const [
                Page1(),
                Page2(),
                Page3(),
                Page4(),
              ],
            ),
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: 4,
            effect: const SwapEffect(
              activeDotColor: Colors.deepPurple,
              dotColor: Colors.white,
              radius: 5,
            ),
            onDotClicked: (index) {},
          ),
        ],
      ),
    );
  }
}
