import 'package:flutter/material.dart';
import 'package:fly_explorer/core/base/base_view.dart';
import 'package:fly_explorer/view/welcome/view_model/welcome_view_model.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<WelcomeViewModel>(
      viewModel: WelcomeViewModel(),
      onModelReady: (model) {},
      onPageBuilder: (context, value) {
        return _buildBody();
      },
    );
  }

  Widget _buildBody() {
    return FlutterLogo();
  }
}
