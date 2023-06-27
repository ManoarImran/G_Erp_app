import 'package:flutter/material.dart';
import 'package:garments_erp/screen/HomePage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // backgroundColor: Colors.blue,
      body: LoginPageBody(),
    );
  }
}

class LoginPageBody extends StatefulWidget {
  const LoginPageBody({Key? key}) : super(key: key);

  @override
  State<LoginPageBody> createState() => _LoginPageBodyState();
}

class _LoginPageBodyState extends State<LoginPageBody> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.cover,
        image: NetworkImage(
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZdvyDUeFYNTBHUv02uaTONuixo7baxPZrHg&usqp=CAU',
        ),
      )),
      child: Column(
        children: [
          const SizedBox(
            height: 70,
          ),
          Column(
            children: const [
              Icon(
                Icons.bolt,
                size: 130,
                color: Colors.white30, //<-- SEE HERE
              ),
              Text('Login',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white30,
                  ))
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 30,
              color: Colors.white38,
              child: SizedBox(
                height: 300,
                child: Column(
                  children: [
                    const SizedBox(height: 50),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child:
                      //
                      // TextField(
                      //   decoration: InputDecoration(
                      //     enabledBorder: OutlineInputBorder(
                      //       borderSide: BorderSide(width: 3, color: Colors.greenAccent), //<-- SEE HERE
                      //     ),labelText: 'Email Address',
                      //   ),
                      // )

                      TextField(
                        // decoration: InputDecoration(
                        //   enabledBorder: OutlineInputBorder(
                        //     borderSide: BorderSide(width: 3, color: Colors.greenAccent), //<-- SEE HERE
                        //   ),
                        // ),

                        controller: emailController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Email Address',
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: TextField(
                        obscureText: true,
                        controller: passwordController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextButton(
                      onPressed: () {
                        //forgot password screen
                      },
                      child: const Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                        height: 50,
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: ElevatedButton(
                          child: const Text('Login'),
                          onPressed: () {
                            // print(emailController.text);
                            // print(passwordController.text);
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomePage()));
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white30, // Background color
                          ),
                        )),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
