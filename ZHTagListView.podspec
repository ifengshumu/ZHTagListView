#
#  Be sure to run `pod spec lint ZBarTool.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "ZHTagListView"
  s.version      = "1.1.0"
  s.summary      = "标签"
  s.description  = "标签，自适应宽度，自动折行，可限制字数或者宽度"

  s.homepage     = "https://github.com/leezhihua/ZHTagListView"
  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.authors            = {"leezhihua" => "leezhihua@yeah.net"}

  s.ios.deployment_target = "8.0"

  s.source       = { :git => "https://github.com/leezhihua/ZHTagListView.git", :tag => s.version.to_s }

  # 库文件
  s.source_files = 'ZHTagListView/Classes/*.{h,m}'
  # 三方的framework文件
  # s.ios.vendored_frameworks = 'ZHTagListView/Assets/*.framework'

  # 图片、bundle等资源文件
  # s.resources = "ZHBarTool/Classes/*.{png,xib,nib,bundle}"


  s.frameworks = "UIKit"


  s.requires_arc = true

  # 依赖的三方库，如果有多个分开写
  # s.dependency "JSONKit", "~> 1.4"
  # s.dependency "AFNetworking", "~> 1.4"

end
