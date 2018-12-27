Pod::Spec.new do |s|
  s.name         = "AliGenieSDKResources"
  s.version      = "0.1.0"
  s.summary      = "A short description of AliGenieSDKResources."
  s.description  = <<-DESC
    A short description of AliGenieSDKResources.
                   DESC
  s.homepage     = "http://EXAMPLE/AliGenieSDKResources"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "LDG" => "dglmarty@gmail.com" }
  s.platform     = :ios, "9.0"
  # s.source       = { :git => "git@gitee.com:diguang/cloudhearing-voice-library.git", :tag => "#{s.version}" }
  s.source       = { :git => "git@gitee.com:diguang/cloudhearing-voice-library.git", :branch => "CocoaPods" }
  
  s.resources = 'ManagementVoiceDemo/VoiceLib/IFly/MSC/**/*.strings',
                'ManagementVoiceDemo/VoiceLib/**/*.bundle',
                'ManagementVoiceDemo/VoiceLib/**/*.{png,jpg,jpeg}',
                'ManagementVoiceDemo/VoiceLib/**/*.{mp3,wav}',
                'ManagementVoiceDemo/VoiceLib/IFly/MSC/data/bnf/userwords',
                'ManagementVoiceDemo/VoiceLib/**/*.{pem,cfg,abnf,bnf,jek}',
                'ManagementVoiceDemo/VoiceLib/**/*.json'
end
