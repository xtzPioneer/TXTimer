#
# Be sure to run `pod lib lint TXTimer.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TXTimer'
  s.version          = '0.1.0'
  s.summary          = '定时器.'
  s.description      = <<-DESC
  由TX所开发的定时器.
                       DESC
  s.homepage         = 'https://github.com/xtzPioneer/TXTimer'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '张雄' => 'xtz_pioneer@163.com' }
  s.source           = { :git => 'https://github.com/xtzPioneer/TXTimer.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.source_files = 'TXTimer/Classes/**/*.{h,m}'
  s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'Foundation'
end
