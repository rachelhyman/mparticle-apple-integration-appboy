Pod::Spec.new do |s|
    s.name             = "mParticle-Appboy"
    s.version          = "7.15.2"
    s.summary          = "Appboy integration for mParticle"

    s.description      = <<-DESC
                       This is the Appboy integration for mParticle.
                       DESC

    s.homepage         = "https://www.mparticle.com"
    s.license          = { :type => 'Apache 2.0', :file => 'LICENSE' }
    s.author           = { "mParticle" => "support@mparticle.com" }
    s.source           = { :git => "https://github.com/mparticle-integrations/mparticle-apple-integration-appboy.git", :tag => s.version.to_s }
    s.social_media_url = "https://twitter.com/mparticle"

    s.ios.deployment_target = "9.0"
    s.ios.source_files      = 'mParticle-Appboy/*.{h,m,mm}'
    s.ios.dependency 'mParticle-Apple-SDK/mParticle', '~> 7.0'
    s.ios.frameworks = 'CoreTelephony', 'SystemConfiguration'
    s.libraries = 'z'
    s.ios.dependency 'Appboy-iOS-SDK', '~> 3.20'
    
    s.tvos.pod_target_xcconfig = {
        'LIBRARY_SEARCH_PATHS' => '$(inherited) $(PODS_ROOT)/Appboy-tvOS-SDK/**'
    }
end
