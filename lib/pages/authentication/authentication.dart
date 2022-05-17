
import 'package:flutter/material.dart';
import 'package:flutter_application_web_dashboard/constants/style.dart';
import 'package:flutter_application_web_dashboard/layout.dart';
import 'package:flutter_application_web_dashboard/routing/route.dart';
import 'package:flutter_application_web_dashboard/widgets/custom_text.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Container(
          constraints: const BoxConstraints(maxWidth: 400, ),
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(children: [
                Padding(padding: const EdgeInsets.only(right: 12),
                child: Image.asset("assets/image/Amin-IT-logo-Dark.png"),),
                Expanded(child: Container())
              ],),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text("Login", style: GoogleFonts.roboto(fontSize: 30, fontWeight:FontWeight.bold),)
    
                ],
              ),
               const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                 CustomText(text: "Welcome back to the admin panel", size: 24, color: lightGrey, weight: FontWeight.normal)
    
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "Email",
                  hintText: "abc@domain.com",
                  border: OutlineInputBorder(
                    borderRadius:BorderRadius.circular(20))),
              ),
                      const SizedBox(
                height: 15,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  hintText: "12345",
                  border: OutlineInputBorder(
                    borderRadius:BorderRadius.circular(20))),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(value: true, onChanged: (value){}),
                      CustomText(text: "Remember Me", size: 16, color: lightGrey, weight: FontWeight.normal)
                    ],
                  ),
                     CustomText(text: "Forgot Password", size: 16, color: active, weight: FontWeight.normal),
                ],
              ),
                const SizedBox(
                height: 15,
              ),
              InkWell(
               
                onTap: (){
                   Get.offAllNamed(RootRoute);
                },
                child: Container(
                  decoration:  BoxDecoration(
                    color: active,
                    borderRadius: BorderRadius.circular(20)),
                    alignment: Alignment.center,
                    width: double.maxFinite,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child:  const CustomText(text: "Login", size: 16, weight: FontWeight.normal, color: Colors.white,),
                    ),
              ),
              const SizedBox(
                height: 15,
              ),
              RichText(text:  TextSpan(children: [
                const TextSpan(
                  text: "Do not have admin credentials?"
                ),  
                          TextSpan(
                  text: "  Request credentials!",
                  style: TextStyle(color: active)
                ),
              ]))
    
    
            ],
          ),
          )
      ),
    );
  }
}