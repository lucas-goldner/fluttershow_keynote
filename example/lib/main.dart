import 'package:flutter/material.dart';
import 'package:fluttershow_keynote/fluttershow_keynote.dart';
import 'package:fluttershow_keynote/slides/agenda/keynote_agenda_slide_variants.dart';
import 'package:fluttershow_keynote/slides/big_fact/keynote_big_fact_slide.dart';
import 'package:fluttershow_keynote/slides/title_and_bullets/keynote_title_and_bullets_slide_variants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  final PageController pageController = PageController();
  final slides = [
    KeynoteTitleAndBulletsSlideVariants.variantOne(
      titleText: "Title",
      subTitleText: "Subtitle",
      bulletPoints: ["Welcome", "to", "FlutterShow", "Keynote"],
    ),
    KeynoteAgendaSlideVariants.variantTwo(
        titleText: "Title", subTitleText: "Subtitle"),
    KeynoteBigFactSlide(
      titleText: "100%",
      subTitleText: "Made in Flutter",
      titleGradient: KeynoteGradients.quoteGradient,
      titleStyle: KeynoteTextstyles.title(),
      subtitleStyle: KeynoteTextstyles.subtitle(),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: PageView.builder(
        itemCount: slides.length,
        controller: pageController,
        itemBuilder: (context, index) => slides[index],
      ),
    );
  }
}
