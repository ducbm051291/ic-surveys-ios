platform :ios, '14.0'
use_frameworks!
inhibit_all_warnings!

def testing_pods
  pod 'Quick'
  pod 'Nimble'
  pod 'Sourcery', '1.8.0'
  pod 'SwiftFormat/CLI'
end

target 'NimbleSurvey' do
  # UI
  pod 'Kingfisher'
  pod 'SnapKit'

  # Storage
  pod 'KeychainAccess'

  # Tools
  pod 'Firebase/Crashlytics'
  pod 'IQKeyboardManagerSwift'
  pod 'NimbleExtension', :git => 'https://github.com/nimblehq/NimbleExtension', :branch => 'master'
  pod 'R.swift'
  pod 'Resolver' # Needs Cocoapods on iOS 11 to support Resolver

  # Development
  pod 'SwiftLint'
  pod 'Wormholy', :configurations => ['Debug Staging', 'Debug Production']

  target 'NimbleSurveyTests' do
    inherit! :search_paths
    testing_pods
  end

  target 'NimbleSurveyUITests' do
    testing_pods
  end
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings.delete 'IPHONEOS_DEPLOYMENT_TARGET'
    end
  end
end
