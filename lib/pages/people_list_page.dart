import 'package:avaliacao_mobile/models/book.dart';
import 'package:flutter/material.dart';
import '../widgets/person_card.dart';

class PeopleListPage extends StatelessWidget {
  const PeopleListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Person> people = [
      Person.getExample(),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Clientes Gov.br')),
      body: ListView.builder(
        itemCount: people.length,
        itemBuilder: (context, index) {
          return PersonCard(person: people[index]);
        },
      ),
    );
  }
}
