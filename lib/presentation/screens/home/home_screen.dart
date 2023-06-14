

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RiverApp'),
      ),
      body: const _HomeScreenView(),
    );
  }
}

class _HomeScreenView extends StatelessWidget {

  const _HomeScreenView();
  @override
  Widget build(BuildContext context) {

    return ListView(
      children: const [

        _CustomListTile(
          title: 'State Provider',
          subTitle: 'Un estado simple',
          location: '/state-provider',
        ),

         _CustomListTile(
          title: 'Future Provider',
          subTitle: 'Un simple Future + Family',
          location: '/future-provider',
        )


      ],
    );
  }
}

class _CustomListTile extends StatelessWidget {

  final String title;
  final String subTitle;
  final String location;

  const _CustomListTile({
    required this.title, 
    required this.subTitle, 
    required this.location
  });

  @override
  Widget build(BuildContext context) {

    final textStyle = Theme.of(context).textTheme.titleMedium;

    return ListTile(
      title: Text(title, style: textStyle),
      subtitle: Text(subTitle),
      trailing: const Icon(Icons.arrow_forward_ios_rounded),
      onTap: () => context.push(location),
    );
  }
}