import 'package:flutter/material.dart';
import 'package:greengrocer/src/screens/common/custom_text_field.dart';
import 'package:greengrocer/src/config/app_data.dart' as app_data;

class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Perfil do usuário',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
        shadowColor: Colors.black,
        elevation: 4,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.logout,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(16, 32, 16, 16),
        children: [
          CustomTextField(
            prefix: Icons.email,
            label: 'E-mail',
            initialValue: app_data.user.email,
            readOnly: true,
          ),
          CustomTextField(
            prefix: Icons.person,
            label: 'Nome',
            initialValue: app_data.user.name,
            readOnly: true,
          ),
          CustomTextField(
            prefix: Icons.phone,
            label: 'Celular',
            initialValue: app_data.user.phone,
            readOnly: true,
          ),
          CustomTextField(
            prefix: Icons.file_copy,
            label: 'CPF',
            isSecret: true,
            initialValue: app_data.user.cpf,
            readOnly: true,
          ),
          SizedBox(
            height: 50,
            child: OutlinedButton(
              onPressed: () => updatePass(),
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  color: Colors.green,
                ),
              ),
              child: const Text(
                "Atualizar senha",
                style: TextStyle(color: Colors.green),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> updatePass() => showDialog(
        context: context,
        builder: (c) => Dialog(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      child: Text(
                        "Atualizar senha",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const CustomTextField(
                      prefix: Icons.lock,
                      label: "Senha atual",
                      isSecret: true,
                    ),
                    const CustomTextField(
                      prefix: Icons.lock_outline,
                      label: "Senha atual",
                      isSecret: true,
                    ),
                    const CustomTextField(
                      prefix: Icons.lock_outline,
                      label: "Senha atual",
                      isSecret: true,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                      child: const Text(
                        "Atualizar",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 5,
                right: 5,
                child: IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(Icons.close),
                ),
              ),
            ],
          ),
        ),
      );
}
