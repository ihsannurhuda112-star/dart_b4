import 'package:flutter/material.dart';

class Tugasflutter6 extends StatefulWidget {
  const Tugasflutter6({super.key});

  @override
  State<Tugasflutter6> createState() => _Tugasflutter6State();
}

class _Tugasflutter6State extends State<Tugasflutter6> {
  bool hide = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 100, width: 100),
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/instagram.png'),
                ),
              ),
            ),
            Container(
              color: const Color.fromARGB(255, 255, 255, 255),
              height: 50,
              margin: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  hintText: "Phone Number,Username Or Email",
                ),
              ),
            ),
            Container(
              color: const Color.fromARGB(255, 255, 255, 255),
              height: 50,
              margin: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  hintText: "Password",
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        hide = !hide;
                      });
                    },
                    icon: Icon(hide ? Icons.visibility_off : Icons.visibility),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    debugPrint('Ganti password');
                    setState(() {});
                  },
                  child: Text("Forgot Password?"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
