Pod::Spec.new do |s|
    s.name = "WhatsNewKit"
    s.version = "1.3.4"
    s.summary = "Showcase your awesome new app features"
    s.homepage = "https://github.com/SvenTiigi/WhatsNewKit"
    s.social_media_url = 'http://twitter.com/SvenTiigi'
    s.license = 'MIT'
    s.author = { "Sven Tiigi" => "sven.tiigi@gmail.com" }
    s.source = { :git => "https://github.com/SvenTiigi/WhatsNewKit.git", :tag => s.version.to_s }
    s.swift_version = "5.0"
    s.ios.deployment_target = "9.0"
    s.frameworks = 'Foundation', 'UIKit'
    s.default_subspecs = "Core"

    s.subspec "Core" do |sp|
        sp.source_files  = ["Sources/**/*"]
        sp.exclude_files = ["Sources/SwiftUI/**"]
    end

    s.subspec "SwiftUI" do |sp|
        sp.source_files = ["Sources/SwiftUI/**"]
        sp.dependency "WhatsNewKit/Core"
        sp.ios.deployment_target = "13.0"
        sp.pod_target_xcconfig = { 'OTHER_SWIFT_FLAGS' => '-DWhatsNewKitCocoaPods' }
    end
end
