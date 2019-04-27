#
# Be sure to run `pod lib lint MTMasonry.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MTMasonry'
  s.version          = '0.1.2'
s.summary          = 'Masonry静态库二进制文件'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Masonry静态库二进制文件 提高编译速度
DESC

  s.homepage         = 'https://github.com/BestiOSDev/MTMasonry'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'ZhaoBingDong' => 'dzb8818082@163.com' }
  s.source           = { :git => 'https://github.com/BestiOSDev/MTMasonry.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

if ENV['IS_SOURCE']
    s.source_files = 'MTMasonry/Classes/**/*{h,m}'
    s.public_header_files = 'MTMasonry/Classes/**/*.h'
else
s.ios.vendored_frameworks = 'MTMasonry/Framework/MTMasonry.framework'
end

s.requires_arc = true
s.frameworks = 'Foundation' , 'UIKit'
s.xcconfig = { 'OTHER_LDFLAGS' => '-ObjC' }

end
