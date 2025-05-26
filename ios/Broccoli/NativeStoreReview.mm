#import "NativeStoreReview.h"
#import <StoreKit/SKStoreReviewController.h>

@implementation NativeStoreReview

+ (NSString *)moduleName {
  return @"NativeStoreReview";
}

- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:(const facebook::react::ObjCTurboModule::InitParams &)params {
  return std::make_shared<facebook::react::NativeStoreReviewSpecJSI>(params);
}

- (void)requestReview {
  if (@available(iOS 14, *)) {
    [SKStoreReviewController requestReviewInScene:UIApplication.sharedApplication.delegate.window.windowScene];
  } else {
    [SKStoreReviewController requestReview];
  }
}
@end
