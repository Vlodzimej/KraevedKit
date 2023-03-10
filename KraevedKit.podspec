Pod::Spec.new do |spec|

  spec.name         = "KraevedKit"
  spec.version      = "0.0.7"
  spec.summary      = "Kraeved"

  spec.description  = <<-DESC
    UI elements for Kraeved app
                   DESC

  spec.homepage     = "https://github.com/Vlodzimej/KraevedKit"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "vlodzimej" => "amel-07@mail.ru" }

  spec.ios.deployment_target = "12.0"
  spec.swift_version = "5.7.1"

  spec.source        = { :git => "https://github.com/Vlodzimej/KraevedKit.git", :tag => "#{spec.version}" }
  spec.source_files  = "KraevedKit/**/*.{h,m,swift}"

  spec.public_header_files = "KraevedKit/**/*.{h}"
end
