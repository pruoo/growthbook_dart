import 'package:growthbook_dart/growthbook_dart.dart';
import 'package:tuple/tuple.dart';

/// Constant class for GrowthBook
class Constant {
  /// ID Attribute key.
  static String idAttribute = 'id';

  /// Identifier for Caching Feature Data in Internal Storage File
  static String featureCache = 'FeatureCache';

  /// Context Path for Fetching Feature Details - Web Service
  static String featurePath = 'api/features/';
}

/// Triple Tuple for GrowthBook Namespaces
/// It has ID, StartRange & EndRange
typedef GBNameSpace = Tuple3<String, double, double>;

/// Double Tuple for GrowthBook Ranges
typedef GBBucketRange = Tuple2<double, double>;

/// Type Alias for Feature in GrowthBook
/// Represents json response in this case.
typedef GBFeatures = Map<String, GBFeature>;

/// Type Alias for Condition Element in GrowthBook Rules
typedef GBCondition = Object;

/// Handler for Refresh Cache Request
/// It updates back whether cache was refreshed or not
typedef GBCacheRefreshHandler = void Function(bool);

/// A function that takes experiment and result as arguments.
typedef TrackingCallBack = void Function(GBExperiment, GBExperimentResult);

/// GrowthBook Error Class to handle any error / exception scenario

class GBError {
  /// Error Message for the caught error / exception.
  final Object? error;

  /// Error Stacktrace for the caught error / exception.
  final String stackTrace;

  const GBError({
    this.error,
    required this.stackTrace,
  });
}
