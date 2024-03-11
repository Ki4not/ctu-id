import 'package:activity1/main.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(const MaterialApp(
      home: backView(),
    ));

class backView extends StatefulWidget {
  const backView({super.key});

  @override
  State<backView> createState() => _backViewState();
}

class _backViewState extends State<backView> {
  final String type = 'B';
  final String birthDate = '06/07/2002';
  final String contactPerson = 'ARTHUR A. CATUBIG';
  final String address1 = 'MACTAN COUNTRY HOMES SUBDIVISION';
  final String address2 = 'TIMPOLOK, BABAG, LAPU-LAPU CITY';
  final String contactNumber = '09329777179';

  final String issuedDate = '10/12/2021';
  final String validDate = '10/12/2025';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 90.0, 10.0, 10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // BLOOD TYPE
                Container(
                  height: 45.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.black,
                    width: 2.0,
                  )),
                  child: Column(
                    children: [
                      const Text(
                        'BLOOD TYPE',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        type,
                        style: const TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  height: 45.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.black,
                    width: 2.0,
                  )),
                  child: Column(
                    children: [
                      const Text(
                        'BIRTHDATE',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        birthDate,
                        style: const TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            Container(
              padding: const EdgeInsets.only(right: 23.0, left: 2.0),
              decoration: BoxDecoration(
                  border: Border.all(
                color: Colors.black,
                width: 2.0,
              )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'In Case og Emergency, Please Notify:',
                    style:
                        TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    contactPerson,
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    address1,
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    address2,
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    contactNumber,
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),

            // DATE ISSUED
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Column(
                  children: [
                    Text(
                      'Date Issued:',
                      style: TextStyle(
                          fontSize: 17.0, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Column(
                  children: [
                    Text(
                      issuedDate,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.black,
                        decorationThickness: 2.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            // VALID UNTIL
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Column(
                  children: [
                    Text(
                      'VALID UNTIL:',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Column(
                  children: [
                    Text(
                      validDate,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.black,
                        decorationThickness: 2.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            // NOTE OF VALIDITY
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'UNLESS EARLIER REVOKED OR SURRENDERED',
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),

            // FIRST BULLET
            const Column(
              children: [
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 30.0)),
                    Text(
                      '•',
                      style: TextStyle(
                        fontSize: 30.0,
                      ),
                    ),
                    Text(
                      'The person whose picture and signature appear hereon is a',
                      style: TextStyle(
                        fontSize: 10.0,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 40.0)),
                    Text(
                      'bonafide student of ',
                      style: TextStyle(
                        fontSize: 10.0,
                      ),
                    ),
                    Text(
                      'Cebu Technological University',
                      style: TextStyle(
                        fontSize: 10.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              ],
            ),

            // SECOND BULLET
            const Column(
              children: [
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 30.0)),
                    Text(
                      '•',
                      style: TextStyle(
                        fontSize: 30.0,
                      ),
                    ),
                    Text(
                      'This card is non transferable property of ',
                      style: TextStyle(
                        fontSize: 10.0,
                      ),
                    ),
                    Text(
                      'CTU ',
                      style: TextStyle(
                          fontSize: 10.0, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'and must be',
                      style: TextStyle(
                        fontSize: 10.0,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 40.0)),
                    Text(
                      'surrendered upon graduation or transfer.',
                      style: TextStyle(
                        fontSize: 10.0,
                      ),
                    ),
                  ],
                )
              ],
            ),

            // THIRD BULLET
            const Column(
              children: [
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 30.0)),
                    Text(
                      '•',
                      style: TextStyle(
                        fontSize: 30.0,
                      ),
                    ),
                    Text(
                      'Card must be presented upon entry and must worn when ',
                      style: TextStyle(
                        fontSize: 10.0,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 40.0)),
                    Text(
                      'inside the university premises. ',
                      style: TextStyle(
                        fontSize: 10.0,
                      ),
                    ),
                  ],
                )
              ],
            ),

            // FOURTH BULLET
            const Column(
              children: [
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 30.0)),
                    Text(
                      '•',
                      style: TextStyle(
                        fontSize: 30.0,
                      ),
                    ),
                    Text(
                      'Tampering invalidates this card and subject to disciplinary ',
                      style: TextStyle(
                        fontSize: 10.0,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 40.0)),
                    Text(
                      'action.',
                      style: TextStyle(
                        fontSize: 10.0,
                      ),
                    ),
                  ],
                )
              ],
            ),

            // FIFTH BULLET
            const Column(
              children: [
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 30.0)),
                    Text(
                      '•',
                      style: TextStyle(
                        fontSize: 30.0,
                      ),
                    ),
                    Text(
                      'In case of loss, please report to SAO office.',
                      style: TextStyle(
                        fontSize: 10.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            // BUTTON TO VIEW BACK PORTION
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () => _dialogueBuilder(context),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red[500],
                    ),
                    child: const Text(
                      'Return',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                    ))
              ],
            ),

            // PRESIDENT SIGNATURE
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage('assets/president-signature.png'),
                  width: 250.0,
                  height: 100.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Alert to confirm redirecting to front view
Future<void> _dialogueBuilder(BuildContext context) {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Confirmation', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.lightBlue),),
          content: const Text('Are you sure you want to continue?'),
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          elevation: 25,
          actions: [
            // Confirm Button
            TextButton(
              onPressed: () {
                Fluttertoast.showToast(
                  // Toast to tell user that it is being redirected to front view
                  msg: 'This is the front view of your ID',
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => frontView()));
              },
              child: Text('Confirm', style: TextStyle(color: Colors.lightBlue),),
              style: TextButton.styleFrom(
                  textStyle: Theme.of(context).textTheme.labelLarge),
            ),

            // Cancel Button
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancel', style: TextStyle(color: Colors.red),),
              style: TextButton.styleFrom(
                  textStyle: Theme.of(context).textTheme.labelLarge),
            )
          ],

        );
      });
}
