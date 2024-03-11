import 'package:mason/mason.dart';

void run(HookContext context) {
  // Features
  final List features = context.vars['features'];
  context.vars['features'] = features.isNotEmpty;
  context.vars['riverpod'] = features.contains('riverpod');
  context.vars['go router'] = features.contains('go router');
  context.vars['freezed'] = features.contains('freezed');
  context.vars['authentication'] = features.contains('authentication');
  context.vars['firestore'] = features.contains('firestore');
  context.vars['stripe'] = features.contains('stripe');
  context.vars['google fonts'] = features.contains('google fonts');
  context.vars['push notifications'] = features.contains('push notifications');
  context.vars['in-app purchases'] = features.contains('in-app purchases');

  // Databases
  final List databases = context.vars['databases'];
  context.vars['databases'] = databases.isNotEmpty;
  context.vars['hive'] = databases.contains('hive');
  context.vars['firestore'] = databases.contains('firestore');
  context.vars['firebase storage'] = databases.contains('firebase storage');
  // Platforms
  final List platforms = context.vars['osType'];
  context.vars['osType'] = platforms.isNotEmpty;
  context.vars['android'] = platforms.contains('android');
  context.vars['ios'] = platforms.contains('ios');
  context.vars['windows'] = platforms.contains('windows');
  context.vars['linux'] = platforms.contains('linux');
  context.vars['mac os'] = platforms.contains('mac os');

  // Assets
  final List assets = context.vars['assets'];
  context.vars['assets'] = assets.isNotEmpty;
  context.vars['icons'] = assets.contains('icons');
  context.vars['images'] = assets.contains('images');
  context.vars['videos'] = assets.contains('videos');
  context.vars['gif'] = assets.contains('gif');
  context.vars['fonts'] = assets.contains('fonts');

  if (context.vars['firestore'] || context.vars['stripe']) {
    context.vars['env'] = true;
  }
  if (context.vars['firestore'] ||
      context.vars['firebase storage'] ||
      context.vars['authentication']) {
    context.vars['firebase'] = true;
  }
}
