import 'package:avaliacao_mobile/models/book.dart';
import 'package:flutter/material.dart';

class PersonDetailsWidget extends StatelessWidget {
  final Person person;

  // Recebe um objeto Person
  const PersonDetailsWidget({super.key, required this.person});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${person.name} ${person.lastName}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(person.imagePath),
            ),
            const SizedBox(height: 16),
            Text(
              '${person.name} ${person.lastName}',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            Text('Telefone: ${person.number}'),
            const SizedBox(height: 8),
            Text('CPF: ${person.cpf}'),
            const SizedBox(height: 8),
            Text('Data de Nascimento: ${person.birthday.toLocal().toString().split(' ')[0]}'),
            const SizedBox(height: 8),
            Text('Registrado em: ${person.registeredAt.toLocal().toString().split(' ')[0]}'),
          ],
        ),
      ),
    );
  }
}
