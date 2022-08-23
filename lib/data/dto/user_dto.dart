import 'package:getx_flutter_demo_project/domain/entity/user_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'user_dto.g.dart';

@JsonSerializable()
class UserDto extends UserModel{
  @override
  String? userName;

  UserDto(this.userName);

  factory UserDto.fromJson(Map<String, dynamic> json) => _$UserDtoFromJson(json);

  Map<String, dynamic> toJson() => _$UserDtoToJson(this);
}