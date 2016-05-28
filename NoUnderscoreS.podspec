#
# Be sure to run `pod lib lint NoUnderscoreS.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'NoUnderscoreS'
  s.version          = '0.0.1'
  s.summary          = 'A Swift port of Underscore.js but without the underscore.'
  s.description      = <<-DESC
NoUnderscoreS is a Swift port of Underscore.js but without the underscore.
                       DESC
  s.homepage         = 'https://github.com/T-Pham/NoUnderscoreS'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Thanh Pham' => 'minhthanh@me.com' }
  s.source           = { :git => 'https://github.com/T-Pham/NoUnderscoreS.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.source_files = 'NoUnderscoreS/Classes/**/*'
end
