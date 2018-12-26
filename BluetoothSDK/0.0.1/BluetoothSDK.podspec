Pod::Spec.new do |s|
  s.name         = "BluetoothSDK"
  s.version      = "0.0.1"
  s.summary      = "A short description of BluetoothSDK."
  s.description  = <<-DESC
    A short description of BluetoothSDK.
                   DESC

  s.homepage     = "http://EXAMPLE/BluetoothSDK"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"

  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author       = { "LDG" => "dglmarty@gmail.com" }
  s.platform     = :ios, "9.0"
  s.source       = { :git => "git@gitee.com:diguang/cloudhearing-bluetooth-sdk.git", :tag => "#{s.version}" }

  s.subspec '2825' do |sp|
      sp.source_files  = 'Classes/2825', 'Classes/2825/**/*.{h,m}'
      sp.ios.vendored_library = 'Classes/2825/libBluetoothLibrary.a'
  end
  
  s.subspec '2819' do |sp|
      sp.source_files  = 'Classes/2819', 'Classes/2819/**/*.{h,m}'
      sp.ios.vendored_library = 'Classes/2819/libCGABluetoothLib.a'
  end

  s.requires_arc = true
end
