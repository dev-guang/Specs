Pod::Spec.new do |s|
    s.name         = "AliGenieSDK"
    s.version      = "0.1.0.0"
    s.summary      = "A short description of AliGenieSDK."
    s.description  = <<-DESC
        A short description of AliGenieSDK.
    DESC
    s.homepage     = "http://EXAMPLE/AliGenieSDK"
    # s.screenshots= "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"
    s.license      = { :type => "MIT", :file => "LICENSE" }
    s.author       = { "LDG" => "dglmarty@gmail.com" }
    s.platform     = :ios, "9.0"
    s.source       = { :git => "git@gitee.com:diguang/cloudhearing-voice-library.git", :tag => "#{s.version}" }
#    s.source       = { :git => "git@gitee.com:diguang/cloudhearing-voice-library.git", :branch => "CocoaPods" }
    s.swift_version = '4.0'
    # s.static_framework  = true
    s.default_subspec = 'Core'
    
    s.subspec 'Core' do |sp|
        sp.source_files = 'ManagementVoiceDemo/VoiceLib',
                            'ManagementVoiceDemo/VoiceLib/**/*.swift',
                            'ManagementVoiceDemo/VoiceLib/AISDK/*.{h,m,mm,cpp}',
                            'ManagementVoiceDemo/VoiceLib/AISDK/Data/**/*.{h,m,mm,cpp}',
                            'ManagementVoiceDemo/VoiceLib/AISDK/libs/*.{h,m,mm,cpp}',
                            'ManagementVoiceDemo/VoiceLib/AISDK/Media/**/*.{h,m,mm,cpp}',
                            'ManagementVoiceDemo/VoiceLib/AliGenieSDK/**/*.{h,m,mm,cpp}',

                            'ManagementVoiceDemo/VoiceLib/IFly/*.{h,m,mm,cpp}',
                            'ManagementVoiceDemo/VoiceLib/IFly/lib/{A,D}*.{h,m,mm,cpp}',
                            'ManagementVoiceDemo/VoiceLib/IFly/lib/processor/**/*.{h,m,mm,cpp}',
                            'ManagementVoiceDemo/VoiceLib/IFly/lib/tools/**/*.{h,m,mm,cpp,inl}',
                            'ManagementVoiceDemo/VoiceLib/IFly/MSC/*.{h,m,mm,cpp}',
                            'ManagementVoiceDemo/VoiceLib/IFly/MSC/business/**/*.{h,m,mm,cpp}',
                            'ManagementVoiceDemo/VoiceLib/IFly/MSC/data/**/*.{h,m,mm,cpp}',
                            'ManagementVoiceDemo/VoiceLib/IFly/MSC/tools/**/*.{h,m,mm,cpp}',
                            'ManagementVoiceDemo/VoiceLib/IFly/Other/**/*.{h,m,mm,cpp}'
        
        sp.private_header_files = 'ManagementVoiceDemo/VoiceLib/IFly/lib/tools/jsoncpp/**/*.{h,inl}',
                                    'ManagementVoiceDemo/VoiceLib/AliGenieSDK/Object.h',
                                    'ManagementVoiceDemo/VoiceLib/AliGenieSDK/AppStatus.h',
                                    'ManagementVoiceDemo/VoiceLib/AliGenieSDK/BaseType.h',
                                    'ManagementVoiceDemo/VoiceLib/AliGenieSDK/GenieData.h',
                                    'ManagementVoiceDemo/VoiceLib/AliGenieSDK/IAppListener.h',
                                    'ManagementVoiceDemo/VoiceLib/AliGenieSDK/vad_process.h',
                                    'ManagementVoiceDemo/VoiceLib/IFly/lib/AIUIService.h',
                                    'ManagementVoiceDemo/VoiceLib/IFly/lib/processor/AIUIProcessor.h'
        # s.public_header_files = ['ManagementVoiceDemo/Headers/**/*.framework/**/*.h']
        
        sp.vendored_frameworks = 'ManagementVoiceDemo/VoiceLib/**/*.framework',
                                    'ManagementVoiceDemo/Frameworks/**/*.framework'
        sp.vendored_libraries = 'ManagementVoiceDemo/VoiceLib/**/*.a'
        sp.frameworks = 'Foundation', 'AudioToolbox', 'UIKit', 'AVFoundation', 'CoreTelephony', 'AddressBook', 'Contacts', 'Security', 'MediaPlayer', 'QuartzCore', 'WebKit'
        sp.libraries = 'c++', 'z', 'sqlite3', 'resolv'
        sp.requires_arc = true
#        sp.pod_target_xcconfig = { 'OTHER_LDFLAGS' => ['-lObjC', '-lc++'] }

        sp.dependency 'AliGenieSDK/IFlyRecorder'
        sp.dependency 'AliGenieSDKResources'
    end
    
    s.subspec 'IFlyRecorder' do |sp|
        sp.source_files = 'ManagementVoiceDemo/VoiceLib/IFly/lib/IFlyAIUIPcmRecorder.{h,m}'
        sp.requires_arc = false
    end
    
    #  s.resources = 'ManagementVoiceDemo/VoiceLib/IFly/MSC/**/*.strings',
    #                'ManagementVoiceDemo/VoiceLib/**/*.bundle',
    #                'ManagementVoiceDemo/VoiceLib/**/*.{png,jpg,jpeg}',
    #                'ManagementVoiceDemo/VoiceLib/**/*.{mp3,wav}',
    #                'ManagementVoiceDemo/VoiceLib/IFly/MSC/data/bnf/userwords',
    #                'ManagementVoiceDemo/VoiceLib/**/*.{pem,cfg,abnf,bnf,jek}',
    #                'ManagementVoiceDemo/VoiceLib/**/*.json'
    
    s.xcconfig = { 'ENABLE_BITCODE' => 'NO' }
end
