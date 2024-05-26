import 'package:flutter/material.dart';
import 'package:fly_explorer/core/base/base_view.dart';
import 'package:fly_explorer/feature/welcome/view_model/welcome_view_model.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<WelcomeViewModel>(
      viewModel: WelcomeViewModel(),
      onModelReady: (model) {},
      onPageBuilder: (context, value) {
        return _buildBody(context);
      },
    );
  }
  

  // TODO Paddings and margins should be defined in the constants file
  // TODO Localizations should be used for text
  Widget _buildBody(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 225, 225),
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  'FlyExplorer',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontWeight: FontWeight.bold, fontSize: 45),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Text(
                    'Track flights in real time',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
              ],
            ),
            //TODO Change Icon to Map Image
            const Icon(
              Icons.map,
              size: 100,
              color: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  child: const Icon(
                    Icons.airplanemode_active,
                    size: 20,
                    color: Colors.white,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
