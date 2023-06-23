import 'package:valoyousefhajeb/data/model/ability_line.dart';
import 'package:valoyousefhajeb/data/model/voice_line.dart';

class CharachterModle {
  String? description, displayName, fullPortrait, displayIcon;
  List<Ability> abilities;
  VoiceLine voiceLine;
  CharachterModle(
      {required this.description,
      required this.displayIcon,
      required this.fullPortrait,
      required this.abilities,
      required this.voiceLine,
      required this.displayName});
}
