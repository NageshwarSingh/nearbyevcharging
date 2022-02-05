import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UpdateEmailID extends StatefulWidget {
  const UpdateEmailID({Key? key}) : super(key: key);

  @override
  _UpdateEmailIDState createState() => _UpdateEmailIDState();
}

class _UpdateEmailIDState extends State<UpdateEmailID> {
  final emailEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final emailField = TextFormField(
        autofocus: false,
        controller: emailEditingController,
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.next,
        validator: (input) =>
            !input!.contains("@") ? "Email Id Should be valid" : null,
        decoration: InputDecoration(
            hintText: "clarkmirosa@gmail.com",
            hintStyle: GoogleFonts.poppins(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            )));

    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
      SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(children: <Widget>[
            Container(
                height: MediaQuery.of(context).size.height * 0.23,
                alignment: Alignment.center,
                color: Colors.green,
                padding: const EdgeInsets.only(
                     left: 20, right: 20, top: 40),
                child: Column(children: <Widget>[
                  Container(
                      alignment: Alignment.topRight,
                      child: GestureDetector(
                          child: Image.asset("assets/icons/x.png",
                              color: Colors.white, height: 20, width: 20),
                          onTap: () {
                            Navigator.of(context).pop();
                          })),
                  const SizedBox(height: 10),
                  Text('Update Email ID',
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600)),
                ])),
            Positioned(
                top: MediaQuery.of(context).size.height * 0.19,
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 50, bottom: 20),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0))),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Text('Email ID',
                                  style: GoogleFonts.poppins(
                                    color: Colors.black45,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  )),
                              emailField,
                            ]),
                        GestureDetector(
                            onTap: () {},
                            child: Container(
                                alignment: Alignment.center,
                                padding: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                    color: Colors.green,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: Text("Update",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500)))),
                      ]),
                )),
          ])),
    ])));
  }
}
