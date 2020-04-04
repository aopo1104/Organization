# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile

#-------------------------------1.实体类-----------------------------
        -keep class com.organization2.Bean.**{*;}

#高德地图
         -keep class com.amap.api.location.**{*;}
         -keep class com.amap.api.fence.**{*;}
         -keep class com.autonavi.aps.amapapi.model.**{*;}
         -keep class com.amap.api.services.**{*;}
         -keep class com.amap.api.maps2d.**{*;}
         -keep class com.amap.api.mapcore2d.**{*;}


#mob
        -keep class android.net.http.SslError
        -keep class android.webkit.**{*;}
        -keep class cn.sharesdk.**{*;}
        -keep class com.sina.**{*;}
        -keep class m.framework.**{*;}
        -keep class **.R$* {*;}
        -keep class **.R{*;}
        -dontwarn cn.sharesdk.**
        -dontwarn **.R$*


#xUtils
#-libraryjars libs/xutils-2.6.14.jar
    -dontwarn com.lidroid.**
    -keep class com.lidroid.** { *; }


# EventBus
    -keepattributes *Annotation*
    -keepclassmembers class ** {
        @org.greenrobot.eventbus.Subscribe <methods>;
    }
    -keep enum org.greenrobot.eventbus.ThreadMode { *; }

 # Glide
    -keep public class * implements com.bumptech.glide.module.GlideModule
    -keep public enum com.bumptech.glide.load.resource.bitmap.ImageHeaderParser$** {
      **[] $VALUES;
      public *;
    }

# Gson
#如果用用到Gson解析包的，直接添加下面这几行就能成功混淆，不然会报错。
    -keepattributes Signature
    -keepattributes *Annotation*
    -keep class sun.misc.Unsafe { *; }
    -keep class com.google.gson.stream.** { *; }
