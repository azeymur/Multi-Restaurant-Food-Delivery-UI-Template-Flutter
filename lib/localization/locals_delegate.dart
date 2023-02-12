import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_multi_template/localization/locals.dart';

class LocalsDelegate extends LocalizationsDelegate<Locals> {
  const LocalsDelegate();

  @override
  bool isSupported(Locale locale) =>
      Locals.languages().contains(locale.languageCode);

  @override
  Future<Locals> load(Locale locale) {
    // Returning a SynchronousFuture here because an async "load" operation
    // isn't needed to produce an instance of the Locals class.
    return SynchronousFuture<Locals>(Locals(locale));
  }

  @override
  bool shouldReload(LocalsDelegate old) => false;
}
