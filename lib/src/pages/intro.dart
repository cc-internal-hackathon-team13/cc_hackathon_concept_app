import 'package:cc_hackathon_concept_app/src/pages/maang_stocks.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => IntroPageState();
}

class IntroPageState extends State<IntroPage> {
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: PageView(
      controller: controller,
      physics: const ClampingScrollPhysics(),
      children: <Widget>[
        ColoredBox(
          color: Theme.of(context).colorScheme.tertiaryContainer,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Image.asset(
                  "assets/art/human_sitting.png",
                  fit: BoxFit.fitHeight,
                  height: size.height * .65,
                ),
              ),
              const SizedBox(height: 48),
              Text("Be aware for what it means to be open-source",
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                      color:
                          Theme.of(context).colorScheme.onTertiaryContainer)),
              const SizedBox(height: 8),
              Text("Model trained on public & trusted sources",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                      color:
                          Theme.of(context).colorScheme.onTertiaryContainer)),
            ]),
          ),
        ),
        ColoredBox(
          color: Theme.of(context).colorScheme.tertiaryContainer,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 32.0, horizontal: 8.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 32.0),
                  child: Image.asset("assets/art/candlesticks.png",
                      fit: BoxFit.fitHeight, height: size.height * .30),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 16.0),
                    Text("Know the predictions of stocks till the next week",
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge
                            ?.copyWith(
                                fontWeight: FontWeight.w600,
                                color: Theme.of(context)
                                    .colorScheme
                                    .onTertiaryContainer)),
                    const SizedBox(height: 4.0),
                    Text("Famous MAANG stocks involved",
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context)
                                .colorScheme
                                .onTertiaryContainer)),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const MAANGStocksPage()));
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 16.0, horizontal: 8.0),
                            child: Text(
                              "Get Started",
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineMedium
                                  ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer),
                            ),
                          ),
                          const Icon(Icons.arrow_right_alt_rounded, size: 48),
                        ],
                      )),
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}

// stock mark