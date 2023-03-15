import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../home_view.dart';
import 'custom_page.dart';

class TestView extends StatefulWidget {
  const TestView({super.key});

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends State<TestView> {
  PageController _controller = PageController();

  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: const [
              ViewPageWelcome(
                  url:
                      'https://assets9.lottiefiles.com/private_files/lf30_cldvedro.json'),
              ViewPageWelcome(
                  url:
                      'https://assets9.lottiefiles.com/packages/lf20_pcfclxy8.json'),
              ViewPageWelcome(
                  url:
                      'https://assets9.lottiefiles.com/packages/lf20_8m1mFX3g7x.json'),
            ],
          ),
          Container(
            alignment: Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // skip

                GestureDetector(
                  onTap: () {
                    _controller.jumpToPage(2);
                  },
                  child: const Text('Skip'),
                ),

                // do indicator
                SmoothPageIndicator(
                  effect: const WormEffect(
                    activeDotColor: Colors.red,
                    // dotColor: Colors.green,
                  ),
                  controller: _controller,
                  count: 3,
                ),

                // next or done

                onLastPage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return const NotesHomeView();
                            },
                          ));
                        },
                        child: const Text('done'),
                      )
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn,
                          );
                        },
                        child: const Text('next'),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
