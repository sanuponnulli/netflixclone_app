import 'package:freezed_annotation/freezed_annotation.dart';
part 'downloads_failures.freezed.dart';

@freezed
class Mainfailure with _$Mainfailure {
  const factory Mainfailure.clientfailure() = _Clientfailure;
  const factory Mainfailure.serverfailure() = _Serverfailure;
}
