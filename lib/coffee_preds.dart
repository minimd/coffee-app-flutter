import 'package:flutter/material.dart';
import 'package:first_f/provider/mainProvider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CoffeePrefs extends ConsumerWidget {
  const CoffeePrefs({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sugars = ref.watch(myNotifierProvider).sugarCounter;
    final strength = ref.watch(myNotifierProvider).strengthCounter;
    return Column(
      children: [
        Row(
          children: [
            const Text(
              'strength:',
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              '$strength',
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(
              width: 14,
            ),

            for (var i = 0; i < strength && i < 8; i++)

              //10- rows and columns are reletavily simple..
              // to use an image.. you must define its url in the pubspec.yaml file under the assets.
              Image.asset(
                'assets/coffee_bean.png',
                width: 25,
                //11- alright so we gonna remove the white background of the img
                //we just paint the whole image as the background and then use the blend just as photoshop
                color: Colors.brown[500],
                colorBlendMode: BlendMode.multiply,
              ),
            // you can notice here that we used the expanded here to push the following item
            //which is the text button. to the far right.. cuz as we learned.. it takes the available space
            const Expanded(child: SizedBox()),
            FilledButton(
              onPressed: () {
                ref.watch(myNotifierProvider.notifier).increaseStrength();
              },
              style: FilledButton.styleFrom(
                backgroundColor: Colors.brown[400],
              ),
              child: const Text('add'),
            )
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        Row(
          children: [
            const Text(
              'sugars-cubes:',
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              sugars.toString(),
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(
              width: 14,
            ),
            for (var i = 0; i < sugars; i++)
              Image.asset(
                'assets/sugar_cube.png',
                width: 25,
                color: Colors.brown[500],
                colorBlendMode: BlendMode.multiply,
              ),
            const Expanded(child: SizedBox()),
            FilledButton(
              style: FilledButton.styleFrom(backgroundColor: Colors.brown[400]),
              onPressed: () {
                ref.watch(myNotifierProvider.notifier).increaseSugars();
              },
              child: const Text('add'),
            )
          ],
        )
      ],
    );
  }
}
