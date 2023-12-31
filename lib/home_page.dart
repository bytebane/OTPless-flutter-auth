import 'package:flutter/material.dart';
import 'package:otpless_auth/widgets/my_button.dart';
import 'package:otpless_auth/widgets/my_text.dart';
import 'package:otpless_flutter/otpless_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isLoggedIn = false;
  bool isError = false;
  String errorMessage = "";

  Object userData = {
    "token": null,
    "timestamp": null,
    "timezone": null,
    "mobile": {"name": null, "number": null},
    "email": {"name": null, "email": null},
  };

  final _otpLessFlutterPlugin = Otpless();

  // Open Login Page from OTPless
  Future<void> openLoginPage() async {
    _otpLessFlutterPlugin.openLoginPage(
      (result) {
        if (result['data'] != null) {
          // OTPless User details received in the callback
          setState(() {
            isLoggedIn = true;
            userData = result['data'];
          });

          // You can send result['data']['token'] to your backend service to validate
        } else {
          // Handle error
          setState(() {
            isError = true;
            errorMessage = result['errorMessage'];
          });
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('OTPless Auth'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            isLoggedIn
                ? Expanded(
                    child: Center(
                      child: Text(
                        userData.toString(),
                      ),
                    ),
                  )
                : Expanded(
                    child: Center(
                      child: MyButton(
                        onPressed: () {
                          openLoginPage();
                        },
                        type: MyButtonType.text,
                        child: const Text('Get Started'),
                      ),
                    ),
                  ),
            isError
                ? Center(
                    child: MyText(
                      text: errorMessage,
                      type: MyTextType.error,
                    ),
                  )
                : Container(),
            isLoggedIn
                ? MyButton(
                    onPressed: () {
                      setState(
                        () {
                          isLoggedIn = false;
                          isError = false;
                          errorMessage = "";
                        },
                      );
                    },
                    type: MyButtonType.elevated,
                    child: const Text('Logout'),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
