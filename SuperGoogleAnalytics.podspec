#
# Be sure to run `pod lib lint CTC-iOS-AdSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'SuperGoogleAnalytics'
    s.module_name      = 'SuperGoogleAnalytics'
    s.version          = '3.17.0'
    s.summary          = 'Google Analytics - measure your app performance'
    
    s.description      = "Google Analytics lets you track application events you care about and gain insights from discovery and installation to conversion and engagement."
    
    s.homepage         = 'https://www.google.com/analytics'
    s.license          = { :type => 'Copyright', :text => "Copyright 2016 Google" }
    s.author           = 'Google, Inc.'
    s.source           = { :git => 'https://github.com/abesmon/SuperGoogleAnalytics.git', :tag => s.version.to_s }
    
    s.ios.deployment_target = '5.0'
    s.tvos.deployment_target = '9.0'
    
    s.vendored_libraries = "Libraries/libGoogleAnalytics.a"
    
    s.source_files = [
    "Sources/GAI.h",
    "Sources/GAIDictionaryBuilder.h",
    "Sources/GAIEcommerceFields.h",
    "Sources/GAIEcommerceProduct.h",
    "Sources/GAIEcommerceProductAction.h",
    "Sources/GAIEcommercePromotion.h",
    "Sources/GAIFields.h",
    "Sources/GAILogger.h",
    "Sources/GAITrackedViewController.h",
    "Sources/GAITracker.h",
    "Sources/dummy.m"
    ]
    s.public_header_files = [
    "Sources/GAI.h",
    "Sources/GAIDictionaryBuilder.h",
    "Sources/GAIEcommerceFields.h",
    "Sources/GAIEcommerceProduct.h",
    "Sources/GAIEcommerceProductAction.h",
    "Sources/GAIEcommercePromotion.h",
    "Sources/GAIFields.h",
    "Sources/GAILogger.h",
    "Sources/GAITrackedViewController.h",
    "Sources/GAITracker.h"
    ]
    
    s.pod_target_xcconfig = {
        'OTHER_LDFLAGS' => '-ObjC',
        'ENABLE_BITCODE' => 'NO'
    }
    
    s.frameworks =["CoreData", "SystemConfiguration"]
    s.libraries = ["z", "sqlite3"]
end
