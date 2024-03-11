import 'package:mason/mason.dart';

void run(HookContext context) {
  // TODO: add pre-generation logic.

  final List features = context.vars['features'];
  context.vars['features'] = features.isNotEmpty;
  context.vars['hooks'] = features.contains('hooks');
  context.vars['riverpod'] = features.contains('riverpod');
}
