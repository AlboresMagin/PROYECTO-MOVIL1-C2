import 'package:flutter/material.dart';
import 'package:movil_proyecto_c2/utilidades_boarding.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  PageController controller = PageController();
  int actual = 0;
  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      if (controller.page!.round() != actual) {
        setState(() {
          actual = controller.page!.round();
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 4,
                child: _Carrucel(controller: controller, actual: actual),
              ),
              Expanded(
                  flex: 1,
                  child: _ButtonBottom(actual: actual, controller: controller)),
            ],
          ),
        ),
      ),
    );
  }
}

class _ButtonBottom extends StatelessWidget {
  const _ButtonBottom({
    Key? key,
    required this.actual,
    required this.controller,
  }) : super(key: key);
  final int actual;
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      child: SizedBox(
        width: 250,
        height: 40,
        child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(actual == 4
                ? const Color.fromARGB(255, 125, 182, 89)
                : Colors.white),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
            ),
            side: MaterialStateProperty.all(
              BorderSide.lerp(
                  BorderSide(
                      style: BorderStyle.solid,
                      color: (actual == 4
                          ? const Color.fromARGB(255, 125, 182, 89)
                          : Colors.black),
                      width: 2.0),
                  BorderSide(
                      style: BorderStyle.solid,
                      color: (actual == 4
                          ? const Color.fromARGB(255, 125, 182, 89)
                          : Colors.black),
                      width: 2.0),
                  2.0),
            ),
          ),
          onPressed: () {
            if (actual == 4) {
              Navigator.pushNamed(context, "/principal");
            } else {
              controller.animateToPage(controller.page!.toInt() + 1,
                  duration: const Duration(milliseconds: 600),
                  curve: Curves.easeIn);
            }
          },
          child: Text(
            actual == 4 ? "continuar" : "siguiente",
            style: TextStyle(
              fontSize: 16,
              color: (actual == 4 ? Colors.white : Colors.black),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class _Carrucel extends StatelessWidget {
  const _Carrucel({
    Key? key,
    required this.controller,
    required this.actual,
  }) : super(key: key);

  final PageController controller;
  final int actual;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          flex: 3,
          child: PageView.builder(
            physics: PageScrollPhysics(),
            controller: controller,
            itemCount: boardingData.length,
            itemBuilder: (context, index) => ContainerBoarding(
              image: boardingData[index]['image']!,
              title: boardingData[index]['title']!,
              text: boardingData[index]['text']!,
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              boardingData.length,
              (index) => AnimatedContainer(
                width: actual == index ? 35 : 20,
                height: 5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: actual == index
                      ? const Color(0xfffc1460)
                      : const Color(0xffe0e0e0),
                ),
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                duration: const Duration(milliseconds: 500),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class ContainerBoarding extends StatelessWidget {
  final String image;
  final String title;
  final String text;

  const ContainerBoarding({
    Key? key,
    required this.image,
    required this.text,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          image,
          width: 300,
          height: 300,
        ),
        Text(
          title,
          style: const TextStyle(
            color: Color(0xffaf1581),
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(
            text,
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
