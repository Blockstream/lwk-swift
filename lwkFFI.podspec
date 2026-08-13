Pod::Spec.new do |spec|
    spec.name                   = "lwkFFI"
    spec.version                = "0.18.3"
    spec.license                = { :type => "MIT OR BSD-2-Clause" }
    spec.summary                = "Low-level bindings to the Liquid Wallet Kit Rust API"
    spec.homepage               = "https://blockstream.com"
    spec.authors                = { "Riccardo Casatta" => "riccardo@casatta.it", "Luca Vaccaro" => "me@lvaccaro.com" }
    spec.documentation_url      = "https://docs.rs/lwk_bindings"
    spec.source                 = { :http => "https://github.com/Blockstream/lwk-swift/releases/download/0.18.3/lwkFFI.xcframework.zip", :sha256 => "e4a9c967bec046084ab2122ac75b70e4c3adb87151db073803f6560abd867f94" }
    spec.ios.deployment_target  = "13.0"
    spec.vendored_frameworks    = "lwkFFI.xcframework"
  end