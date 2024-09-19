import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  final TextEditingController userName = TextEditingController();
  final TextEditingController fullName = TextEditingController();
  final TextEditingController country = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController phoneNumber = TextEditingController();
  final TextEditingController password = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    userName.dispose();
    fullName.dispose();
    country.dispose();
    email.dispose();
    phoneNumber.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/bg.jpg'), fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.only(top: 50, left: 25, right: 25),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('Registration Form',
                          style: TextStyle(
                              fontSize: 30,
                              color: Color.fromARGB(255, 0, 140, 255),
                              fontWeight: FontWeight.bold,
                              shadows: [
                                Shadow(
                                    color: Colors.black, offset: Offset(2, 1))
                              ])),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                        controller: userName,
                        validator: (value) {
                          if (value == null || value.length <= 3) {
                            return 'Not enough characters';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            hintText: 'Username',
                            hintStyle: const TextStyle(color: Colors.white),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                            filled: true,
                            fillColor: const Color.fromARGB(255, 68, 131, 239)),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: fullName,
                        validator: (value) {
                          if (value == null || value.length <= 3) {
                            return 'Not enough Characters';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            hintText: 'Fullname',
                            hintStyle: const TextStyle(color: Colors.white),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                            filled: true,
                            fillColor: const Color.fromARGB(255, 68, 131, 239)),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: country,
                        validator: (value) {
                          if (value == 'Afghanistan' ||
                              value == 'Albania' ||
                              value == 'Algeria' ||
                              value == 'Andorra' ||
                              value == 'Angola' ||
                              value == 'Antigua and Barbuda' ||
                              value == 'Argentina' ||
                              value == 'Armenia' ||
                              value == 'Australia' ||
                              value == 'Austria' ||
                              value == 'Azerbaijan' ||
                              value == 'Bahamas' ||
                              value == 'Bahrain' ||
                              value == 'Bangladesh' ||
                              value == 'Barbados' ||
                              value == 'Belarus' ||
                              value == 'Belgium' ||
                              value == 'Belize' ||
                              value == 'Benin' ||
                              value == 'Bhutan' ||
                              value == 'Bolivia' ||
                              value == 'Bosnia and Herzegovina' ||
                              value == 'Botswana' ||
                              value == 'Brazil' ||
                              value == 'Brunei' ||
                              value == 'Bulgaria' ||
                              value == 'Burkina Faso' ||
                              value == 'Burundi' ||
                              value == 'Cabo Verde' ||
                              value == 'Cambodia' ||
                              value == 'Cameroon' ||
                              value == 'Canada' ||
                              value == 'Central African Republic' ||
                              value == 'Chad' ||
                              value == 'Chile' ||
                              value == 'China' ||
                              value == 'Colombia' ||
                              value == 'Comoros' ||
                              value == 'Congo' ||
                              value == 'Costa Rica' ||
                              value == 'Croatia' ||
                              value == 'Cuba' ||
                              value == 'Cyprus' ||
                              value == 'Czech Republic' ||
                              value == 'Democratic Republic of the Congo' ||
                              value == 'Denmark' ||
                              value == 'Djibouti' ||
                              value == 'Dominica' ||
                              value == 'Dominican Republic' ||
                              value == 'Ecuador' ||
                              value == 'Egypt' ||
                              value == 'El Salvador' ||
                              value == 'Equatorial Guinea' ||
                              value == 'Eritrea' ||
                              value == 'Estonia' ||
                              value == 'Eswatini' ||
                              value == 'Ethiopia' ||
                              value == 'Fiji' ||
                              value == 'Finland' ||
                              value == 'France' ||
                              value == 'Gabon' ||
                              value == 'Gambia' ||
                              value == 'Georgia' ||
                              value == 'Germany' ||
                              value == 'Ghana' ||
                              value == 'Greece' ||
                              value == 'Grenada' ||
                              value == 'Guatemala' ||
                              value == 'Guinea' ||
                              value == 'Guinea-Bissau' ||
                              value == 'Guyana' ||
                              value == 'Haiti' ||
                              value == 'Honduras' ||
                              value == 'Hungary' ||
                              value == 'Iceland' ||
                              value == 'India' ||
                              value == 'Indonesia' ||
                              value == 'Iran' ||
                              value == 'Iraq' ||
                              value == 'Ireland' ||
                              value == 'Israel' ||
                              value == 'Italy' ||
                              value == 'Jamaica' ||
                              value == 'Japan' ||
                              value == 'Jordan' ||
                              value == 'Kazakhstan' ||
                              value == 'Kenya' ||
                              value == 'Kiribati' ||
                              value == 'Korea, North' ||
                              value == 'Korea, South' ||
                              value == 'Kuwait' ||
                              value == 'Kyrgyzstan' ||
                              value == 'Laos' ||
                              value == 'Latvia' ||
                              value == 'Lebanon' ||
                              value == 'Lesotho' ||
                              value == 'Liberia' ||
                              value == 'Libya' ||
                              value == 'Liechtenstein' ||
                              value == 'Lithuania' ||
                              value == 'Luxembourg' ||
                              value == 'Madagascar' ||
                              value == 'Malawi' ||
                              value == 'Malaysia' ||
                              value == 'Maldives' ||
                              value == 'Mali' ||
                              value == 'Malta' ||
                              value == 'Marshall Islands' ||
                              value == 'Mauritania' ||
                              value == 'Mauritius' ||
                              value == 'Mexico' ||
                              value == 'Micronesia' ||
                              value == 'Moldova' ||
                              value == 'Monaco' ||
                              value == 'Mongolia' ||
                              value == 'Montenegro' ||
                              value == 'Morocco' ||
                              value == 'Mozambique' ||
                              value == 'Myanmar' ||
                              value == 'Namibia' ||
                              value == 'Nauru' ||
                              value == 'Nepal' ||
                              value == 'Netherlands' ||
                              value == 'New Zealand' ||
                              value == 'Nicaragua' ||
                              value == 'Niger' ||
                              value == 'Nigeria' ||
                              value == 'North Macedonia' ||
                              value == 'Norway' ||
                              value == 'Oman' ||
                              value == 'Pakistan' ||
                              value == 'Palau' ||
                              value == 'Palestine' ||
                              value == 'Panama' ||
                              value == 'Papua New Guinea' ||
                              value == 'Paraguay' ||
                              value == 'Peru' ||
                              value == 'Philippines' ||
                              value == 'Poland' ||
                              value == 'Portugal' ||
                              value == 'Qatar' ||
                              value == 'Romania' ||
                              value == 'Russia' ||
                              value == 'Rwanda' ||
                              value == 'Saint Kitts and Nevis' ||
                              value == 'Saint Lucia' ||
                              value == 'Saint Vincent and the Grenadines' ||
                              value == 'Samoa' ||
                              value == 'San Marino' ||
                              value == 'Sao Tome and Principe' ||
                              value == 'Saudi Arabia' ||
                              value == 'Senegal' ||
                              value == 'Serbia' ||
                              value == 'Seychelles' ||
                              value == 'Sierra Leone' ||
                              value == 'Singapore' ||
                              value == 'Slovakia' ||
                              value == 'Slovenia' ||
                              value == 'Solomon Islands' ||
                              value == 'Somalia' ||
                              value == 'South Africa' ||
                              value == 'Spain' ||
                              value == 'Sri Lanka' ||
                              value == 'Sudan' ||
                              value == 'Suriname' ||
                              value == 'Sweden' ||
                              value == 'Switzerland' ||
                              value == 'Syria' ||
                              value == 'Taiwan' ||
                              value == 'Tajikistan' ||
                              value == 'Tanzania' ||
                              value == 'Thailand' ||
                              value == 'Togo' ||
                              value == 'Tonga' ||
                              value == 'Trinidad and Tobago' ||
                              value == 'Tunisia' ||
                              value == 'Turkey' ||
                              value == 'Turkmenistan' ||
                              value == 'Tuvalu' ||
                              value == 'Uganda' ||
                              value == 'Ukraine' ||
                              value == 'United Arab Emirates' ||
                              value == 'United Kingdom' ||
                              value == 'United States' ||
                              value == 'Uruguay' ||
                              value == 'Uzbekistan' ||
                              value == 'Vanuatu' ||
                              value == 'Vatican City' ||
                              value == 'Venezuela' ||
                              value == 'Vietnam' ||
                              value == 'Yemen' ||
                              value == 'Zambia' ||
                              value == 'Zimbabwe') {
                            return null;
                          }
                          return 'Enter a valid Country';
                        },
                        decoration: InputDecoration(
                            hintText: 'Country',
                            hintStyle: const TextStyle(color: Colors.white),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                            filled: true,
                            fillColor: const Color.fromARGB(255, 68, 131, 239)),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: email,
                        validator: (value) {
                          final emailcom =
                              RegExp(r'^[a-zA-Z0-9._%+-]+@gmail\.com$');

                          if (value == null || value.isEmpty) {
                            return 'Enter a valid Email (example@gmail.com)';
                          } else if (emailcom.hasMatch(value)) {
                            return null;
                          } else {
                            return 'Enter a valid Email (example@gmail.com)';
                          }
                        },
                        decoration: InputDecoration(
                            hintText: 'E-mail',
                            hintStyle: const TextStyle(color: Colors.white),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                            filled: true,
                            fillColor: const Color.fromARGB(255, 68, 131, 239)),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: phoneNumber,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Phone number required';
                          } else if (value.length == 10) {
                            return null;
                          } else {
                            return 'Enter 10 digits phone number';
                          }
                        },
                        decoration: InputDecoration(
                            hintText: 'Phone number',
                            hintStyle: const TextStyle(color: Colors.white),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                            filled: true,
                            fillColor: const Color.fromARGB(255, 68, 131, 239)),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Gender',
                        style: TextStyle(
                            color: Colors.lightBlue,
                            fontSize: 20,
                            shadows: [
                              Shadow(offset: Offset(2, 1), color: Colors.blue)
                            ]),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      TextButton(
                          style: ButtonStyle(
                              textStyle: WidgetStateProperty.all(
                                  const TextStyle(fontSize: 25)),
                              backgroundColor: WidgetStateProperty.all(
                                  const Color.fromARGB(255, 68, 131, 239))),
                          onPressed: () {},
                          child: const Text('Male',
                              style: TextStyle(color: Colors.white))),
                      const SizedBox(
                        width: 5,
                      ),
                      TextButton(
                          style: ButtonStyle(
                              textStyle: WidgetStateProperty.all(
                                  const TextStyle(fontSize: 25)),
                              backgroundColor: WidgetStateProperty.all(
                                  const Color.fromARGB(255, 68, 131, 239))),
                          onPressed: () {},
                          child: const Text('Female',
                              style: TextStyle(color: Colors.white)))
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Date of birth',
                        style: TextStyle(
                            color: Colors.lightBlue,
                            fontSize: 20,
                            shadows: [
                              Shadow(offset: Offset(2, 1), color: Colors.blue)
                            ]),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: TextField(
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        maxLength: 2,
                        buildCounter: (context,
                            {int? currentLength,
                            bool? isFocused,
                            int? maxLength}) {
                          return const SizedBox.shrink();
                        },
                        decoration: InputDecoration(
                            hintText: 'DD',
                            hintStyle: const TextStyle(color: Colors.white),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                            fillColor: const Color.fromARGB(255, 68, 131, 239),
                            filled: true),
                        textAlign: TextAlign.center,
                      )),
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(
                          child: TextField(
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        maxLength: 2,
                        buildCounter: (context,
                            {int? currentLength,
                            bool? isFocused,
                            int? maxLength}) {
                          return const SizedBox.shrink();
                        },
                        decoration: InputDecoration(
                            hintText: 'MM',
                            hintStyle: const TextStyle(color: Colors.white),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                            fillColor: const Color.fromARGB(255, 68, 131, 239),
                            filled: true),
                        textAlign: TextAlign.center,
                      )),
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(
                          child: TextField(
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        maxLength: 2,
                        buildCounter: (context,
                            {int? currentLength,
                            bool? isFocused,
                            int? maxLength}) {
                          return const SizedBox.shrink();
                        },
                        decoration: InputDecoration(
                            hintText: 'YY',
                            hintStyle: const TextStyle(color: Colors.white),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                            fillColor: const Color.fromARGB(255, 68, 131, 239),
                            filled: true),
                        textAlign: TextAlign.center,
                      ))
                    ],
                  ),
                  const SizedBox(
                    height: 19,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.check_circle),
                      Text('Agree with terms and conditions')
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: TextFormField(controller: password,validator: (value) {
                            if (value==null||value.length<8) {
                              return 'Required 8 or more characters';
                            }return null;
                          },
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle: const TextStyle(color: Colors.white),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                            filled: true,
                            fillColor: const Color.fromARGB(255, 68, 131, 239)),
                        textAlign: TextAlign.center,
                      ))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: TextButton(
                        style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all(
                                const Color.fromARGB(255, 25, 109, 255))),
                        onPressed: _submitState,
                        child: const Text(
                          'Create account',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        )),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _submitState() {
    if (formKey.currentState!.validate()) {
      final String usernameValues = userName.text;
      final String fullnameValues = fullName.text;
      final String countryValues = country.text;
      final String emailValues = email.text;
      final String phonenumberValues = phoneNumber.text;
      final String passwordValues = password.text;
    }
  }
}
