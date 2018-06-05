Pod::Spec.new do |s|
    s.name              = "BluetoothLibrary"
    s.version           = "1.0.0"
    s.summary           = "BluetoothLibrary."
    s.description       = "This is bluetooth library."
    s.homepage          = "http://www.baidu.com"
    s.license			= "MIT"

    s.author            = { "Archer" => "localhost@example.com" }
    s.platform          = :ios, "8.0"
    s.requires_arc      = true
    s.static_framework  = true
    s.default_subspecs  = "Core"
    
    s.source            = { :git => "git@gitee.com:diguang/cloudhearing-bluetooth-library.git", :tag => "#{s.version}" }
    
    s.subspec "Core" do |sp|
        sp.source_files         = "Source/Core", "Source/Core/**/*.{h,m}"
        sp.public_header_files  = "Source/**/*.h"
        sp.framework            = "Foundation", "CoreBluetooth"
        sp.xcconfig             = { "OTHER_LDFLAGS" => "-lObjC" }
        sp.ios.vendored_library = "Source/Core/libBluetoothLibrary.a"
    end
    
    s.subspec "Extension" do |sp|
        sp.source_files         = "Source/Extension", "Source/Extension/**/*.{h,m,swift}"
        sp.framework            = "Foundation", "CoreBluetooth"
        sp.dependency           "BluetoothLibrary/Core"
        
        sp.pod_target_xcconfig = { "OTHER_SWIFT_FLAGS" => "-DTARGET_OS_IPHONE" }
    end
end
