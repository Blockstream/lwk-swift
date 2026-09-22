Pod::Spec.new do |spec|
    spec.name                   = "lwkFFI"
    spec.version                = "0.19.1"
    spec.license                = { :type => "MIT OR BSD-2-Clause" }
    spec.summary                = "Low-level bindings to the Liquid Wallet Kit Rust API"
    spec.homepage               = "https://blockstream.com"
    spec.authors                = { "Riccardo Casatta" => "riccardo@casatta.it", "Luca Vaccaro" => "me@lvaccaro.com" }
    spec.documentation_url      = "https://docs.rs/lwk_bindings"
    spec.source                 = { :http => "https://github.com/Blockstream/lwk-swift/releases/download/0.19.1/lwkFFI.xcframework.zip", :sha256 => "82fcc73e63eacc568ec77aa750089a9d1c4bb709dcd1d3af4eea2b1fbb9b49ba" }
    spec.ios.deployment_target  = "13.0"
    spec.vendored_frameworks    = "lwkFFI.xcframework"
  end