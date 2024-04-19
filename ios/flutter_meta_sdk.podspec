#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutter_meta_sdk.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flutter_meta_sdk'
  s.version          = '1.0.0'
  s.summary          = 'Meta SDK for Flutter'
  s.description      = <<-DESC
  More information about Meta SDK for iOS you can referes to official documentation https://developers.facebook.com/docs/ios
                       DESC
  s.homepage         = 'https://github.com/chandrabezzo/flutter_meta_sdk'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Solusi Bejo' => 'chandrashibezzo@gmail.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.static_framework = true
  s.dependency 'Flutter'
  s.dependency 'FBSDKCoreKit', '17.0.0'
  s.dependency 'FBSDKCoreKit_Basics', '17.0.0'
  s.dependency 'FBAEMKit', '17.0.0'
  s.dependency 'FBAudienceNetwork', '6.15.0'
  s.platform = :ios, '13.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
  s.ios.deployment_target = '13.0'
end
