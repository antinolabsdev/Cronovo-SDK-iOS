Pod::Spec.new do |spec|

  spec.name         = "Cronovo"
  spec.version      = "0.0.1"
  spec.summary      = "Cronovo is a simple swift framework for smartwatch."

  spec.homepage     = "https://github.com/antinolabsdev/Cronovo-SDK-iOS"
  spec.description  = "Cronovo is a simple framework for smartwatch supported by both swift and Objective-C."

  spec.license      = { :type => "MIT", :file => "LICENSE" }

  spec.author             = { "Sandeep Ahuja" => "sandeep.ahuja493@gmail.com" }
  spec.ios.vendored_frameworks = 'Cronovo.framework'

  spec.platform     = :ios
  spec.swift_version = "4.2"
  spec.ios.deployment_target = "10.0"


spec.source       = { :git => "https://github.com/antinolabsdev/Cronovo-SDK-iOS.git", :tag => "#{spec.version}" }

  #spec.source_files  = "Classes", "Classes/**/*.{h,m}"
  spec.exclude_files = "Classes/Exclude"

  # spec.public_header_files = "Classes/**/*.h"

end
