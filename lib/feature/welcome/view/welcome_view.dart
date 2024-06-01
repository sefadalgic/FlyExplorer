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
      backgroundColor: const Color.fromARGB(255, 35, 32, 32),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Text(
                    'Fly Explorer',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 45,
                        color: Colors.white),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 30.0, left: 20, right: 20),
                  child: Text(
                    'Track flights in real time on a global map view',
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: Colors.white, fontSize: 25),
                  ),
                ),
              ],
            ),
            //TODO Change Icon to Map Image
            const SizedBox(
                width: 300,
                child: Image(
                  image: AssetImage('assets/image/welcome_plane.png'),
                )),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0, left: 20, right: 20),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Get Started'),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
