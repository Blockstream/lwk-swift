Pod::Spec.new do |spec|
    spec.name                   = "lwkFFI"
    spec.version                = "0.20.0"
    spec.license                = { :type => "MIT OR BSD-2-Clause" }
    spec.summary                = "Low-level bindings to the Liquid Wallet Kit Rust API"
    spec.homepage               = "https://blockstream.com"
    spec.authors                = { "Riccardo Casatta" => "riccardo@casatta.it", "Luca Vaccaro" => "me@lvaccaro.com" }
    spec.documentation_url      = "https://docs.rs/lwk_bindings"
    spec.source                 = { :http => "https://github.com/Blockstream/lwk-swift/releases/download/0.20.0/lwkFFI.xcframework.zip", :sha256 => "5fd9d65bac0a3c5d2128172fa657e506f16c64f9ee9a400602478933fd3a48ca" }
    spec.ios.deployment_target  = "13.0"
    spec.vendored_frameworks    = "lwkFFI.xcframework"
  end