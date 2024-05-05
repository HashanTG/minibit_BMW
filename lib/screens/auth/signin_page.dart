import 'package:flutter/material.dart';
import 'package:minibit/components/custombutton/custombutton.dart';
import 'package:minibit/components/customtextfiled/customtextfiled.dart';

class sign_inpage extends StatefulWidget {
  const sign_inpage({super.key});

  @override
  State<sign_inpage> createState() => _sign_inpageState();
}

class _sign_inpageState extends State<sign_inpage> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              Container(
                width: size.width,
                height: size.height * 0.4,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: const NetworkImage(
                            "https://c4.wallpaperflare.com/wallpaper/66/220/943/bmw-cars-car-sport-car-wallpaper-preview.jpg"),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.5), BlendMode.darken))),
                // child: const Center(
                //     child: poppins_custontext(
                //   text: "BMW Store",
                //   color: Color.fromARGB(255, 198, 5, 5),
                //   fontsize: 30,
                // )),
                child: const Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("BMW Store",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.w500,
                            fontSize: 30)),
                    Text("Sign in to your account",
                        style: TextStyle(
                            color: Color.fromARGB(255, 151, 151, 151),
                            fontWeight: FontWeight.w500,
                            fontSize: 20))
                  ],
                )),
              ),
              Positioned(
                top: size.height * 0.35,
                child: Container(
                  width: size.width,
                  height: size.height,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListView(
                      children: [
                        customtextfiled(
                          icon: Icons.email,
                          label: "Email",
                          controller: emailcontroller,
                        ),
                        customtextfiled(
                          icon: Icons.password_outlined,
                          label: "Password",
                          isPassword: true,
                          controller: passwordcontroller,
                        ),
                        const Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: EdgeInsets.only(right: 8.0),
                            child: Text("Fogot password",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 114, 123, 249),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16)),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 9.0, left: 9.0),
                          child: custombutton(
                            textcolor: Colors.white,
                            colors: const [
                              Color.fromARGB(255, 177, 156, 255),
                              Colors.blue
                            ],
                            size: size,
                            text: "Sign in",
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 9.0, left: 9.0),
                          child: custombutton(
                            textcolor: Colors.blue,
                            colors: const [
                              Color.fromARGB(255, 218, 203, 252),
                              Color.fromARGB(255, 218, 195, 255)
                            ],
                            size: size,
                            text: "Create New Account",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
              // const Text("BMW Store",
              //     style: TextStyle(color: Color.fromARGB(255, 185, 30, 30))),
            ],
          )),
    );
  }
}
