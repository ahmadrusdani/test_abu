import 'package:json_annotation/json_annotation.dart';

class IgnoreField extends JsonKey {
  const IgnoreField({super.includeFromJson = false, super.includeToJson = false}) : super();
}