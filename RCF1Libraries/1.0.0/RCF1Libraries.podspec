Pod::Spec.new do |s|
    s.name         = "RCF1Libraries"
    s.version      = "1.0.0"
    s.summary      = "RCF1Libraries."
    s.description  = "RCF1Libraries."
    s.homepage     = "http://EXAMPLE/RCF1Libraries"
    s.license      = "MIT"
    s.author       = { "Diguang" => "dglmarty@gmail.com" }
    s.platform     = :ios, "9.0"
    s.requires_arc = true
    s.source       = { :git => "git@github.com:dglmarty/RCF1Library.git", :tag => "#{s.version}" }

    s.default_subspecs = 'RVTaskPackage', 'RoavLocation', 'ZXMoblie', 'OWAccount'
  
    s.subspec 'RVTaskPackage' do |sp|
        sp.vendored_framework = 'Frameworks/RVTaskPackage.framework'
    end
  
#s.subspec 'CocoaLumberjack' do |sp|
#sp.vendored_framework = 'Frameworks/CocoaLumberjack.framework'
#end

#s.subspec 'JSONModel' do |sp|
#sp.vendored_framework = 'Frameworks/JSONModel.framework'
#end

    s.subspec 'RoavLocation' do |sp|
        sp.vendored_framework = 'Frameworks/RoavLocationPackage.framework'
    end

    s.subspec 'ZXMoblie' do |sp|
        sp.vendored_framework = 'Frameworks/ZXMoblie.framework'
    end
    
    s.subspec 'OWAccount' do |sp|
        sp.vendored_framework = 'Frameworks/OWAccount.framework'
    end

end
