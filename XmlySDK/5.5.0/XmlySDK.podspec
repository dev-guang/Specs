Pod::Spec.new do |s|
  s.name         = "XmlySDK"
  s.version      = "5.5.0"
  s.summary      = "A short description of XmlySDK."
  s.description  = <<-DESC
    Xmly SDK.
                   DESC
  s.homepage     = "http://EXAMPLE/XmlySDK"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "LDG" => "dglmarty@gmail.com" }
  s.platform     = :ios, "9.0"
  s.source       = { :git => "git@gitee.com:diguang/XmlySDK.git", :tag => "#{s.version}" }
  s.source_files = "Classes", "Classes/**/*.{h,m}"
  s.public_header_files = "Classes/**/*.h"
  s.ios.vendored_library = "Classes/libXMOpenPlatform.a"
  s.resource = 'Classes/include/Resource/XMResource.bundle'
  s.requires_arc = true
end
