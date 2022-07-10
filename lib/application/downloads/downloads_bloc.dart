import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:netflixclone/domain/core/failures/downloads_failures.dart';
import 'package:netflixclone/domain/downloads/models/downloads.dart';
import 'package:netflixclone/domain/downloads/models/i_downloadsrepo.dart';
part 'downloads_bloc.freezed.dart';
part 'downloads_event.dart';
part 'downloads_state.dart';

@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, DownlaodsState> {
  final IDownloadsRepo _downloadsRepo;
  DownloadsBloc(this._downloadsRepo) : super(DownlaodsState.initial()) {
    on<_GetDownloadsImage>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
          downloadsFailureorSuccesOption: none(),
        ),
      );
      final Either<Mainfailure, List<Downloads>> downloadsOptions =
          await _downloadsRepo.getDownloadsImages();
      log(downloadsOptions.toString());
      emit(downloadsOptions.fold(
          (l) => state.copyWith(
              isLoading: false, downloadsFailureorSuccesOption: some(left(l))),
          (r) => state.copyWith(
              isLoading: false,
              downloads: r,
              downloadsFailureorSuccesOption: some(Right(r)))));
    });
  }
}
