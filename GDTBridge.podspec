#
# Be sure to run `pod lib lint SwiftExtension.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'GDTBridge'
  s.version          = '0.1.1'
  s.summary          = 'GDT广告平台兼容Swift'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = '主要用于兼容广点通广告SDk，使Swift的pod库可以直接依赖于广点通SDK'

  s.homepage         = 'https://github.com/DailyWeather/GDTBridge.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Tony' => 'dailyweather20@gmail.com' }
  s.source           = { :git => 'https://github.com/DailyWeather/GDTBridge.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  s.swift_version = "5.0"
  s.swift_versions = ['4.0', '4.2', '5.0']

  s.source_files = ['*.swift', 'GDTBridgeHeader.h']
  s.public_header_files = 'GDTBridgeHeader.h'
  
  s.static_framework = true
  
#  s.module_map = 'module.modulemap'
#
  s.preserve_paths = ['module.modulemap', 'GDTBridgeHeader.h']
  s.pod_target_xcconfig = {
    # 路径根据实际情况进行引用，必须保证路径是正确的
    'SWIFT_INCLUDE_PATHS' => ['$(PODS_ROOT)/', '$(PODS_CONFIGURATION_BUILD_DIR)/']
  }

   s.dependency 'GDTMobSDK'
end
