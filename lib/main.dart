import 'package:flutter/material.dart';
import 'backView.dart';

void main() => runApp(const MaterialApp(
      home: frontView(),
    ));

class frontView extends StatefulWidget {
  const frontView({super.key});

  @override
  State<frontView> createState() => _FrontViewState();
}

class _FrontViewState extends State<frontView> {
  final String name = 'KIAN JUNE B. CATUBIG';
  final String course = 'BSIT';
  final String idNum = '1313343';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/ctu-template.png'),
            fit: BoxFit.cover,
          )),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 70.0, 30.0, 10.0),
            child: Column(
              children: [
                const Row(
                  children: [
                    // LOGOS
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/ctu-logo.png'),
                          radius: 33.0,
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/asean-logo.png'),
                          radius: 23.0,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20.0,
                    ),

                    // SCHOOL NAME
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Republic of the Philippines',
                          style: TextStyle(
                            fontSize: 13.0,
                          ),
                        ),
                        Text(
                          'CEBU TECHNOLOGICAL',
                          style: TextStyle(
                              fontFamily: 'Lora',
                              fontWeight: FontWeight.bold,
                              fontSize: 19.0),
                        ),
                        Text(
                          'UNIVERSITY',
                          style: TextStyle(
                              fontFamily: 'Lora',
                              fontWeight: FontWeight.bold,
                              fontSize: 19.0),
                        ),
                        Row(
                          children: [
                            Text(
                              'Main Campus: ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text('M.J. Cuenco Avenue')
                          ],
                        ),
                        Text('corner R. Palma St., Cebu City')
                      ],
                    ),
                  ],
                ),

                const SizedBox(
                  height: 20.0,
                ),

                // ID PICTURE
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('assets/2BY2.jpg'),
                      width: 200.0,
                      height: 250.0,
                    ),
                  ],
                ),

                // SIGNATURE
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('assets/signature.png'),
                      width: 80.0,
                      height: 50.0,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5.0,
                ),

                // NAME
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                // COURSE
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      course,
                      style: const TextStyle(
                        fontSize: 20.0,
                      ),
                    )
                  ],
                ),

                // DIVIDER LINE
                const Divider(
                  color: Colors.black,
                  thickness: 4.0,
                  height: 1.0,
                  indent: 65.0,
                  endIndent: 65.0,
                ),

                // COURSE LABEL
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'COURSE',
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 5.0,
                ),

                // ID NUMBER
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'ID No.:',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    Text(
                      idNum,
                      style: const TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),

                // BUTTON TO VIEW BACK PORTION
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => backView()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red[500],
                        ),
                        child: const Text(
                          'View Back',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                          ),
                        ))
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
