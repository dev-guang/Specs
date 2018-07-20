Pod::Spec.new do |s|
    s.name              = "BluetoothLibrary"
    s.version           = "1.0.3"
    s.summary           = "BluetoothLibrary."
    s.description       = "A bluetooth library."
    s.homepage          = "http://EXAMPLE/LXBluetoothLibrary"
    s.license			= "MIT"

    s.platform          = :ios, "8.0"
    s.requires_arc      = true
    s.static_framework  = true
    s.default_subspecs  = "Core"
    
    s.author            = { "Diguang" => "dglmarty@gmail.com" }
    s.source            = { :git => "git@github.com:dglmarty/BluetoothLibrary.git", :tag => "#{s.version}" }

    s.subspec "Core" do |sp|
#            if ENV["TARGET_IPHONE_SIMULATOR"] == 'true'
#            sp.source_files         = "Source/Core/Simulator", "Source/Core/Simulator/**/*.{h,m}"
#            sp.public_header_files  = "Source/Simulator/**/*.h"
            sp.framework            = "Foundation", "CoreBluetooth"
            sp.ios.vendored_library = "Source/Core/Simulator/libBluetoothLibrary.a"
            sp.xcconfig             = { "OTHER_LDFLAGS" => "-lObjC" }
#        else
#            sp.source_files         = "Classes/Core/LXBluetoothLibrary", "Classes/Core/LXBluetoothLibrary/**/*.{h,m}"
#            sp.public_header_files  = "Classes/LXBluetoothLibrary/**/*.h"
#            sp.framework            = "Foundation", "CoreBluetooth"
#            sp.ios.vendored_library = "Classes/Core/LXBluetoothLibrary/libBluetoothLibrary.a"
#            sp.xcconfig             = { "OTHER_LDFLAGS" => "-lObjC" }
#        end
    end
    
#    s.subspec "Extension" do |sp|
#        sp.source_files         = "Classes/Extension", "Classes/Extension/**/*.swift"
#        sp.pod_target_xcconfig  = { "OTHER_SWIFT_FLAGS" => "-DTARGET_OS_IPHONE" }
#        sp.dependency   "BluetoothLibrary/Core"
#    end
end
