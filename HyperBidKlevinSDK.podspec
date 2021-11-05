Pod::Spec.new do |s|
    s.name             = 'HyperBidKlevinSDK'
    s.version          = '2.1.0'
    s.summary          = 'HyperBidKlevinSDK'

    s.description      = <<-DESC
    HyperBidKlevinSDK,HyperBidKlevinSDK,Klevin
                       DESC

    s.homepage         = 'https://github.com/hyperbid/hyperbid-klevin-sdk'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'HyperBid' => 'ios' }
    s.source           = { :git => 'https://github.com/hyperbid/hyperbid-klevin-sdk.git', :tag => s.version.to_s }

    s.ios.deployment_target = '9.0'

    s.requires_arc = true

    s.vendored_frameworks = 'Klevin/KlevinAdSDK.framework'

    s.weak_frameworks = 'AdSupport', 'AppTrackingTransparency', 'WebKit'
    s.frameworks = 'StoreKit', 'SystemConfiguration', 'CoreTelephony', 'AVKit', 'AVFoundation', 'CoreMedia'

    s.xcconfig = { "OTHER_LDFLAGS" => "-ObjC" }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.pod_target_xcconfig = {
       'VALID_ARCHS' => '$(ARCHS_STANDARD_64_BIT) armv7',
       'ENABLE_BITCODE' => 'NO',
    }
end
