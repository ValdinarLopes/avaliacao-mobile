import 'package:avaliacao_mobile/models/book.dart';
import 'package:flutter/material.dart';


class PersonDetailsWidget extends StatelessWidget {
  final Person person;

  const PersonDetailsWidget({required this.person, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${person.name} ${person.lastName}')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage(person.imagePath),
              ),
            ),
            const SizedBox(height: 24),
            Text(
              '${person.name} ${person.lastName}',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            Text('Telefone: ${person.number}'),
            Text('CPF: ${person.cpf}'),
            Text('Nascimento: ${person.birthday.toLocal().toString().split(' ')[0]}'),
            Text('Registrado em: ${person.registeredAt.toLocal().toString().split(' ')[0]}'),
          ],
        ),
      ),
    );
  }
}