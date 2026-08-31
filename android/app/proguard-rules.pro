# Keep rules for plugins that rely on reflection or JNI, so R8's code
# shrinking (enabled for release builds to reduce APK size) doesn't strip
# classes/methods they need at runtime.

# Flutter embedding
-keep class io.flutter.app.** { *; }
-keep class io.flutter.plugin.**  { *; }
-keep class io.flutter.util.**  { *; }
-keep class io.flutter.view.**  { *; }
-keep class io.flutter.**  { *; }
-keep class io.flutter.plugins.**  { *; }

# photo_manager (uses reflection to access MediaStore / Photos APIs)
-keep class com.fluttercandies.photo_manager.** { *; }
-keep class top.kikt.** { *; }

# media_kit / libmpv (JNI native bindings)
-keep class com.alexmercerind.** { *; }
-keep class com.arthenica.** { *; }

# image_cropper's native uCrop activity
-keep class com.yalantis.ucrop.** { *; }

# Wallpaper manager plugin
-keep class com.aioutecism.** { *; }
-keep class dev.hadi.** { *; }

# Keep annotations and generic plugin registrant entry points
-keepattributes *Annotation*
-keepattributes Signature
-keepattributes InnerClasses
-keepattributes EnclosingMethod

-keep class * extends io.flutter.embedding.engine.plugins.FlutterPlugin { *; }
-keep class * implements io.flutter.plugin.common.MethodChannel.MethodCallHandler { *; }

# Don't warn about missing optional classes referenced by some plugins.
-dontwarn io.flutter.embedding.**
-dontwarn com.google.android.play.core.**
