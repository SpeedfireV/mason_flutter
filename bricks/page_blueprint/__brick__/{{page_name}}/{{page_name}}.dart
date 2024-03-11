import 'package:flutter/material.dart';
{{#riverpod}}
import 'package:flutter_riverpod/flutter_riverpod.dart';
{{/riverpod}}
{{#hooks}}
{{#riverpod}}
import 'package:hooks_riverpod/hooks_riverpod.dart';
{{/riverpod}}
{{^riverpod}}
import 'package:flutter_hooks/flutter_hooks.dart';
{{/riverpod}}
{{/hooks}}


{{#state}}
{{#riverpod}}
{{#hooks}}


class {{page_name.pascalCase()}} extends StatefulHookConsumerWidget {
  const {{page_name.pascalCase()}}({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _{{page_name.pascalCase()}}State();
}
class _{{page_name.pascalCase()}}State extends ConsumerState<{{page_name.pascalCase()}}> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
{{/hooks}}
{{^hooks}}
class {{page_name.pascalCase()}} extends ConsumerStatefulWidget {
  const {{page_name.pascalCase()}}({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _{{page_name.pascalCase()}}State();
}

class _{{page_name.pascalCase()}}State extends ConsumerState<{{page_name.pascalCase()}}> {

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
{{/hooks}}
{{/riverpod}}
{{^riverpod}}
{{^hooks}}
class {{page_name.pascalCase()}} extends StatefulWidget {
  const {{page_name.pascalCase()}}({super.key});

  @override
  State<{{page_name.pascalCase()}}> createState() => _{{page_name.pascalCase()}}State();
}

class _{{page_name.pascalCase()}}State extends State<{{page_name.pascalCase()}}> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
{{/hooks}}
{{/riverpod}}
{{/state}}

{{^state}}
{{#riverpod}}
{{#hooks}}
class {{page_name.pascalCase()}} extends HookConsumerWidget {
  const {{page_name.pascalCase()}}({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container();
  }
}
{{/hooks}}
{{^hooks}}
class {{page_name.pascalCase()}} extends ConsumerWidget {
  const {{page_name.pascalCase()}}({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container();
  }
}
{{/hooks}}
{{/riverpod}}
{{^riverpod}}
{{^hooks}}
class {{page_name.pascalCase()}} extends StatelessWidget {
  const {{page_name.pascalCase()}}({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
{{/hooks}}
{{/riverpod}}
{{/state}}


