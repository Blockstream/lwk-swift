Pod::Spec.new do |spec|
    spec.name                   = "LiquidWalletKit"
    spec.version                = "0.12.0"
    spec.license                = { :type => "MIT OR BSD-2-Clause" }
    spec.summary                = "Swift bindings to the Liquid Wallet Kit"
    spec.homepage               = "https://blockstream.com"
    spec.authors                = { "Riccardo Casatta" => "riccardo@casatta.it", "Luca Vaccaro" => "me@lvaccaro.com" }
    spec.documentation_url      = "https://docs.rs/lwk_bindings"
    spec.source                 = { :git => 'https://github.com/Blockstream/lwk-swift.git', :tag => spec.version }
    spec.ios.deployment_target  = "13.0"
    spec.source_files           = [
      "Sources/LiquidWalletKit/*.swift", 
      "Sources/LiquidWalletKit/**/*.swift"
    ]
    spec.static_framework       = true
  
    spec.dependency "lwkFFI", "= #{spec.version}"
  end
