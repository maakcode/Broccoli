package com.storereview

import com.facebook.react.bridge.ReactApplicationContext
import com.facebook.react.module.annotations.ReactModule

@ReactModule(name = StoreReviewModule.NAME)
class StoreReviewModule(reactContext: ReactApplicationContext) :
  NativeStoreReviewSpec(reactContext) {

  override fun getName(): String {
    return NAME
  }

  // Example method
  // See https://reactnative.dev/docs/native-modules-android
  override fun requestReview(): Void {
  }

  companion object {
    const val NAME = "StoreReview"
  }
}
