
import 'package:driver_app/core/error/failure.dart';
import 'package:driver_app/core/media/hashtag_image_resolver.dart';
import 'package:driver_app/l10n/app_localizations.dart';

class FailureUiData {
  final String title;
  final String? detail;
  final String? imagePath;

  const FailureUiData({
    required this.title,
    this.detail,
    this.imagePath,
  });
}

FailureUiData mapFailureToUiData(Object? error, AppLocalizations l10n) {
  final failure = error is Failure ? error : null;

  if (failure is NoInternetFailure) {
    return FailureUiData(
      title: l10n.errorNoInternetTitle,
      detail: l10n.errorNoInternet,
      imagePath: ImageAssets.noNetworkError,
    );
  }

  if (failure is TimeoutFailure) {
    return FailureUiData(
      title: l10n.errorTimeoutTitle, 
      detail: l10n.errorTimeout,
      imagePath: ImageAssets.defaultError, 
    );
  }

  if (failure is ServerFailure) {
    return FailureUiData(
      title: l10n.errorServerTitle, 
      detail: l10n.errorServer,
      imagePath: ImageAssets.defaultError, 
    );
  }

  if (failure is UnauthorizedFailure) {
    return FailureUiData(
      title: l10n.errorUnauthorizedTitle, 
      detail: l10n.errorUnauthorized,
      imagePath: ImageAssets.defaultError, 
    );
  }

  if (failure is ForbiddenFailure) {
    return FailureUiData(
      title: l10n.errorForbiddenTitle, 
      detail: l10n.errorForbidden,
      imagePath: ImageAssets.defaultError, 
    );
  }

  if (failure is NotFoundFailure) {
    return FailureUiData(
      title: l10n.errorNotFoundTitle, 
      detail: l10n.errorNotFound,
      imagePath: ImageAssets.defaultError, 
    );
  }

  if (failure is QueryIsEmpty) {
    return FailureUiData(
      title: l10n.queryIsEmptyTitle, 
      detail: l10n.queryIsEmpty,
      imagePath: ImageAssets.defaultError, 
    );
  }

  if (failure is ValidationFailure || failure is InvalidInputFailure) {
    return FailureUiData(
      title: l10n.errorValidationTitle, 
      detail: l10n.errorValidation,
      imagePath: ImageAssets.defaultError, 
    );
  }
  if (failure is DataIsEmpty) {
    return FailureUiData(
      title: l10n.errorDataIsEmptyTitle,
      detail: l10n.errorDataIsEmpty,
      imagePath: ImageAssets.defaultError,
    );
  }

  
  return FailureUiData(
    title: l10n.errorGenericTitle, 
    detail: l10n.errorGeneric,
    imagePath: ImageAssets.defaultError,
  );
}
