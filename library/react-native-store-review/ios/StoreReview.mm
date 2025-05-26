#import "StoreReview.h"
#import <StoreKit/SKStoreReviewController.h>

@implementation StoreReview
RCT_EXPORT_MODULE()

- (void)requestReview {
  if (@available(iOS 14, *)) {
    [SKStoreReviewController requestReviewInScene:UIApplication.sharedApplication.delegate.window.windowScene];
  } else {
    [SKStoreReviewController requestReview];
  }
}

- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:
    (const facebook::react::ObjCTurboModule::InitParams &)params
{
    return std::make_shared<facebook::react::NativeStoreReviewSpecJSI>(params);
}

@end
