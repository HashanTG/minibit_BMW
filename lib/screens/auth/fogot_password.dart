import 'package:flutter/material.dart';
import 'package:minibit/components/custombutton/custombutton.dart';
import 'package:minibit/components/customtextfiled/customtextfiled.dart';

class fogot_password extends StatefulWidget {
  const fogot_password({super.key});

  @override
  State<fogot_password> createState() => _fogot_passwordState();
}

class _fogot_passwordState extends State<fogot_password> {
  TextEditingController emailcontroller = TextEditingController();

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
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: BackButton(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text("BMW Store",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.w500,
                            fontSize: 30)),
                    Text("Reset your Password",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
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
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 9.0, left: 9.0),
                          child: custombutton(
                            ontap: () => Navigator.pushNamed(context, "/home"),
                            textcolor: Colors.white,
                            colors: const [
                              Color.fromARGB(255, 177, 156, 255),
                              Color.fromARGB(255, 0, 69, 126)
                            ],
                            size: size,
                            text: "Reset Password",
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
