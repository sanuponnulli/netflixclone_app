part of 'downloads_bloc.dart';

@freezed
class DownlaodsState with _$DownlaodsState {
  const factory DownlaodsState(
      {required bool isLoading,
      required List<Downloads> downloads,
      required Option<Either<Mainfailure, List<Downloads>>>
          downloadsFailureorSuccesOption}) = _DownlaodsState;
  factory DownlaodsState.initial() {
    return DownlaodsState(
      isLoading: false,
      downloads: [],
      downloadsFailureorSuccesOption: none(),
    );
  }
}
