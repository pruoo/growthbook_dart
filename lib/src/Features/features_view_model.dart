import 'package:growthbook_dart/growthbook_dart.dart';

class FeatureViewModel {
  const FeatureViewModel({
    required this.delegate,
    required this.source,
  });
  final FeaturesFlowDelegate delegate;
  final FeatureDataSource source;

  Future<void> fetchFeature() async {
    await source.fetchFeatures(
      (data) => delegate.featuresFetchedSuccessfully(
        data.features,
      ),
      (e, s) => delegate.featuresFetchFailed(
        GBError(
          error: e,
          stackTrace: s.toString(),
        ),
      ),
    );
  }
}
