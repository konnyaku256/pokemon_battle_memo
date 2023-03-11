import 'package:json_annotation/json_annotation.dart';
part 'pokemon.g.dart';

@JsonSerializable()
class Pokemon {
  Pokemon(this.name, this.terraceType, this.ability, this.item, this.move1,
      this.move2, this.move3, this.move4);

  String name;
  @JsonKey(name: 'terrace_type')
  String terraceType;
  String ability;
  String item;
  String move1;
  String move2;
  String move3;
  String move4;

  // Decode json
  factory Pokemon.fromJson(Map<String, dynamic> json) =>
      _$PokemonFromJson(json);

  // Encode json
  Map<String, dynamic> toJson() => _$PokemonToJson(this);
}
