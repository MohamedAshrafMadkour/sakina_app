plugins {
    id("com.android.application")
    id("kotlin-android")
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "com.example.sakina_app"
    compileSdk = flutter.compileSdkVersion

    // تم إضافة الـ ndkVersion كما طلبت
    ndkVersion = "28.2.13676358" 

    defaultConfig {
        applicationId = "com.example.sakina_app"
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
        
        // تفعيل الـ MultiDex ضروري عند استخدام desugar_jdk_libs
        multiDexEnabled = true
    }

    compileOptions {
        // تم تفعيل الـ Desugaring هنا
        isCoreLibraryDesugaringEnabled = true
        
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    kotlin {
        jvmToolchain(17)
    }

    buildTypes {
        release {
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

flutter {
    source = "../.."
}

dependencies {
    // تم تحديث الإصدار لـ 2.1.4 لحل المشكلة الأساسية
    coreLibraryDesugaring("com.android.tools:desugar_jdk_libs:2.1.4")
}