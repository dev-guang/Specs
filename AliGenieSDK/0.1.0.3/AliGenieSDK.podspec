Pod::Spec.new do |s|
    s.name         = "AliGenieSDK"
    s.version      = "0.1.0.3"
    s.summary      = "A short description of AliGenieSDK."
    s.description  = <<-DESC
        A short description of AliGenieSDK.
    DESC
    s.homepage     = "https://gitlab.com/Diguang/cloudhearing-aligenie-sdk"
    s.license      = { :type => "MIT", :file => "LICENSE" }
    s.author       = { "LDG" => "dglmarty@gmail.com" }
    s.platform     = :ios, "9.0"
    s.source       = { :git => "git@gitlab.com:Diguang/cloudhearing-aligenie-sdk.git", :tag => "#{s.version}" }
    s.swift_version = '4.0'
    
    s.source_files = 'ManagementVoiceDemo/VoiceLib',
                    'ManagementVoiceDemo/VoiceLib/**/*.swift',
                    'ManagementVoiceDemo/VoiceLib/**/*.{h,m,mm,cpp}',
                    'ManagementVoiceDemo/VoiceLib/**/*.inl'
    
    s.exclude_files = 'ManagementVoiceDemo/VoiceLib/**/*.framework/**/*.h'
    s.vendored_frameworks = 'ManagementVoiceDemo/VoiceLib/**/*.framework'
    s.vendored_libraries = 'ManagementVoiceDemo/VoiceLib/**/*.a'
    
    # s.public_header_files = ['ManagementVoiceDemo/Headers/**/*.framework/**/*.h']
    s.private_header_files = 'ManagementVoiceDemo/VoiceLib/IFly/lib/tools/jsoncpp/**/*.{h,inl}',
                            'ManagementVoiceDemo/VoiceLib/AliGenieSDK/Object.h',
                            'ManagementVoiceDemo/VoiceLib/AliGenieSDK/AppStatus.h',
                            'ManagementVoiceDemo/VoiceLib/AliGenieSDK/BaseType.h',
                            'ManagementVoiceDemo/VoiceLib/AliGenieSDK/GenieData.h',
                            'ManagementVoiceDemo/VoiceLib/AliGenieSDK/IAppListener.h',
                            'ManagementVoiceDemo/VoiceLib/AliGenieSDK/vad_process.h',
                            'ManagementVoiceDemo/VoiceLib/IFly/lib/AIUIService.h',
                            'ManagementVoiceDemo/VoiceLib/IFly/lib/processor/AIUIProcessor.h'
    
    # s.frameworks = 'Foundation', 'UIKit', 'AudioToolbox', 'AVFoundation', 'CoreTelephony', 'AddressBook', 'Contacts', 'Security', 'MediaPlayer', 'QuartzCore', 'WebKit'
    s.ios.framework = 'CoreTelephony'
    s.libraries = 'c++', 'z', 'sqlite3', 'resolv'
    s.requires_arc = true

    #  s.resources = 'ManagementVoiceDemo/VoiceLib/IFly/MSC/**/*.strings',
    #                'ManagementVoiceDemo/VoiceLib/**/*.bundle',
    #                'ManagementVoiceDemo/VoiceLib/**/*.{png,jpg,jpeg}',
    #                'ManagementVoiceDemo/VoiceLib/**/*.{mp3,wav}',
    #                'ManagementVoiceDemo/VoiceLib/IFly/MSC/data/bnf/userwords',
    #                'ManagementVoiceDemo/VoiceLib/**/*.{pem,cfg,abnf,bnf,jek}',
    #                'ManagementVoiceDemo/VoiceLib/**/*.json'
    
    s.pod_target_xcconfig = { 'ENABLE_BITCODE' => 'NO' }
    s.dependency 'AliGenieSDKResources'
end
