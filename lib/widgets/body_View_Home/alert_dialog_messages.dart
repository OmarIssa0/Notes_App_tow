import 'package:flutter/material.dart';

class AlertDialogIconDelete extends StatelessWidget {
  const AlertDialogIconDelete({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
        ),
        child: AlertDialog(
          
          backgroundColor: Colors.black,
          title: const Center(
            child: Text("هل تريد الحذف"),
          ),
          actions: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                      onPressed: () {},
                      // ignore: prefer_const_constructors
                      child: Text(
                        'حذف',
                        style: const TextStyle(
                          color: Color(0xffD33F49),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 1,
                  height: 15,
                  color: Colors.white,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      // ignore: prefer_const_constructors
                      child: Text(
                        "الغاء ",
                        style: const TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
