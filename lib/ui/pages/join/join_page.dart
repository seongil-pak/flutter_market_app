import 'package:flutter/material.dart';
import 'package:flutter_market_app/ui/pages/login/widgets/id_text_form_field.dart';
import 'package:flutter_market_app/ui/pages/login/widgets/nickname_text_form_field%20copy.dart';
import 'package:flutter_market_app/ui/pages/login/widgets/password_text_form_field%20copy.dart';

class JoinPage extends StatefulWidget {
  @override
  State<JoinPage> createState() => _JoinPageState();
}

class _JoinPageState extends State<JoinPage> {
  final idController = TextEditingController();
  final passwordController = TextEditingController();
  final nicknameController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    idController.dispose();
    passwordController.dispose();
    nicknameController.dispose();
    super.dispose();
  }

  void onImageUpload() {
    print('onImageUpload');
  }

  void onJoin() {
    formKey.currentState?.validate();
    print('onJoin');
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
            appBar: AppBar(),
            body: ListView(
              padding: EdgeInsets.symmetric(horizontal: 20),
              children: [
                Text(
                  '안녕하세요\n아이디와 비밀번호로 가입해주세요',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: onImageUpload,
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person,
                          size: 30,
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          '프로필 사진',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                IdTextFormField(controller: idController),
                SizedBox(
                  height: 20,
                ),
                PasswordTextFormField(controller: passwordController),
                SizedBox(
                  height: 20,
                ),
                NicknameTextFormField(controller: nicknameController),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: onJoin,
                  child: Text('회원가입'),
                )
              ],
            )),
      ),
    );
  }
}
