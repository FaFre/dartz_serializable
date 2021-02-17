# dartz_serializable

This small package is providing `json_serializable`-support for `dartz`-monads.

At the moment, only `Option<>` and `Either<,>` are supported. If you wish support for other monads, open an issue or feel free to contribute.

## Usage

Since annotations aren't supporting generics, you have to bind the parameters at compile time:

```dart
class StringOptionConverter extends OptionConverter<String> {
  const StringOptionConverter();
}
```

Then you can use the converter as usual:

```dart
@StringOptionConverter()
final Option<String> option;
```

Also take a look at the example.

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/FaFre/dartz_serializable/issues
