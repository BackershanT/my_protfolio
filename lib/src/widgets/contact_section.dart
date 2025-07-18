import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:my_protfolio/src/constants/colors.dart';
import 'package:my_protfolio/src/constants/links.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:js' as js;

import 'package:seo/seo.dart';

class ContactSection extends StatefulWidget {
  const ContactSection({super.key});

  @override
  State<ContactSection> createState() => _ContactSectionState();
}

class _ContactSectionState extends State<ContactSection> {
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final messageController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    messageController.dispose();
    super.dispose();
  }

  Future<void> submitForm() async {
    if (_formKey.currentState?.validate() ?? false) {
      final name = nameController.text.trim();
      final email = emailController.text.trim();
      final message = messageController.text.trim();

      try {
        await sendEmail(name: name, email: email, message: message);

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Email sent successfully!")),
        );

        nameController.clear();
        emailController.clear();
        messageController.clear();
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Failed to send email: $e")),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
        color: CustomColor.bgLight1,
        child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    ConstrainedBox(
                      constraints: const BoxConstraints(
                        maxWidth: 300,
                      ),
                      child: const Divider(),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'Get in Touch',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: CustomColor.whitePrimary,
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    ConstrainedBox(
                      constraints: const BoxConstraints(
                        maxWidth: 700,
                      ),
                      child: Row(
                        children: [
                          Flexible(
                            child: _buildInputField(
                                controller: nameController,
                                hintText: 'Your Name',
                                validatorMsg: 'Enter Your Name'),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Flexible(
                            child: _buildInputField(
                              controller: emailController,
                              hintText: 'Your Email',
                              validatorMsg: 'Enter your email',
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ConstrainedBox(
                      constraints: const BoxConstraints(
                        maxWidth: 700,
                      ),
                      child: _buildInputField(
                        controller: messageController,
                        hintText: 'Message',
                        maxLines: 10,
                        validatorMsg: 'Enter a message',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ConstrainedBox(
                      constraints: const BoxConstraints(
                        maxWidth: 700,
                      ),
                      child: SizedBox(
                          width: double.maxFinite,
                          child: ElevatedButton(
                            onPressed: submitForm,
                            // =>_showErrorMessage(context),
                            child: const Text('Submit'),
                          )),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ConstrainedBox(
                      constraints: const BoxConstraints(
                        maxWidth: 300,
                      ),
                      child: const Divider(),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      alignment: WrapAlignment.center,
                      children: [
                        Seo.link(
                          href: 'https://github.com/BackershanT',
                          anchor: 'Backershan',
                          rel: 'Backershan',
                          child: InkWell(
                            onTap: () {
                              js.context.callMethod("open", [SnsLinks.gitHub]);
                            },
                            child: Image.asset(
                              'assets/git.png',
                              width: 28,
                              height: 28,
                            ),
                          ),
                        ),
                        Seo.link(
                            href:
                                'https://www.linkedin.com/in/backershan-t-166aa078/',
                            anchor: 'Backershan',
                            child: InkWell(
                              onTap: () {
                                js.context
                                    .callMethod("open", [SnsLinks.linkedIn]);
                              },
                              child: Image.asset(
                                'assets/linked.png',
                                width: 28,
                                height: 28,
                              ),
                            )),
                        Seo.link(
                            href:
                                'https://www.facebook.com/profile.php?id=61576114507530',
                            anchor: 'Backershan T',
                            child: InkWell(
                              onTap: () {
                                js.context
                                    .callMethod("open", [SnsLinks.facebook]);
                              },
                              child: Image.asset(
                                'assets/facebook.png',
                                width: 28,
                                height: 28,
                              ),
                            )),
                        Seo.link(
                            href:
                                'https://www.instagram.com/backershan.t.2025/',
                            anchor: 'Backershan T',
                            child: InkWell(
                              onTap: () {
                                js.context
                                    .callMethod("open", [SnsLinks.instagram]);
                              },
                              child: Image.asset(
                                'assets/insta.png',
                                width: 28,
                                height: 28,
                              ),
                            )),
                        // ElevatedButton(onPressed: ()async{
                        //   await FirebaseAnalytics.instance.logEvent(name: "slick_analytics");
                        // }, child: Text('Analytics'))

                      ],
                    )
                  ],
                ))));
  }

  // void _showErrorMessage(BuildContext context) {
  //   // Display a Snackbar with an error message
  //   ScaffoldMessenger.of(context).showSnackBar(
  //     SnackBar(
  //       content: Text('An error occurred! Please try again.'),
  //       backgroundColor: CustomColor.txtFieldBg,
  //       duration: Duration(seconds: 3),
  //     ),
  //   );
  // }
}

Widget _buildInputField({
  required TextEditingController controller,
  required String hintText,
  required String validatorMsg,
  int maxLines = 1,
}) {
  return TextFormField(
    controller: controller,
    maxLines: maxLines,
    style: const TextStyle(color: Colors.black),
    validator: (value) =>
        value == null || value.trim().isEmpty ? validatorMsg : null,
    decoration: InputDecoration(
      hintText: hintText,
      hintStyle: const TextStyle(color: Colors.grey),
      filled: true,
      fillColor: const Color(0xFFE2E4EC),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
    ),
  );
}

Future<void> sendEmail({
  required String name,
  required String email,
  required String message,
}) async {
  const serviceId = 'service_26wt6ra';
  const templateId = 'template_qwr8y7w';
  const userId = 'LMuRA3rwxo9Giclkf';

  final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
  final response = await http.post(
    url,
    headers: {
      'origin': 'http://localhost',
      'Content-Type': 'application/json',
    },
    body: json.encode({
      'service_id': serviceId,
      'template_id': templateId,
      'user_id': userId,
      'template_params': {
        'from_name': name,
        'from_email': email,
        'message': message,
      },
    }),
  );

  if (response.statusCode == 200) {
    print("Email sent!");
  } else {
    print("Failed to send email: ${response.body}");
  }
}
