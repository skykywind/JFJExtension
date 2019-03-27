#
# Be sure to run `pod lib lint JFJExtension.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'JFJExtension'
  s.version          = '1.0.0'
  s.summary          = 'JFJExtension is an extension to some common classes in the UIKit and Foundation frameworks.'
  s.description      = <<-DESC
JFJExtension is an extension to some common classes in the UIKit and Foundation frameworks. I added many common functions to the system classes, so we can use it more convenience.
                       DESC

  s.homepage         = 'https://github.com/skykywind/JFJExtension'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'skykywind' => '824214765@qq.com' }
  s.source           = { :git => 'https://github.com/skykywind/JFJExtension.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'JFJExtension/Classes/**/*'
  s.swift_version    = '4.2'
  # s.resource_bundles = {
  #   'JFJExtension' => ['JFJExtension/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'SnapKit'
end
