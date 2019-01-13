Pod::Spec.new do |s|
  s.name         = "LPAlexaSDK"
  s.version      = "0.0.1"
  s.summary      = "A short description of LPAlexaSDK."

  s.description  = <<-DESC
  A short description of LPAlexaSDK.
                   DESC
  s.homepage     = "https://gitlab.com/Diguang/cloudhearing-alexa-sdk"
  s.license      = "MIT"
  s.author             = { "LDG" => "dglmarty@gmail.com" }
  s.platform     = :ios, '9.0'

  s.source       = { :git => "git@gitlab.com:Diguang/cloudhearing-alexa-sdk.git", :tag => "#{s.version}" }
  s.vendored_framework = 'Frameworks/LPVR.framework'

  s.source_files  = 'Classes', 'Classes/**/*.{h,m}'
  s.resource  = 'Resources/LPResource.bundle'
  
  s.frameworks  = 'AVFoundation', 'CoreBluetooth', 'MediaPlayer', 'SafariServices', 'Security'
  s.libraries   = 'iconv.2', 'stdc++'
  s.requires_arc = true
end
