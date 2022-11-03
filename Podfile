platform :ios, '14.0'
use_frameworks!
inhibit_all_warnings!

def testing_pods
  pod 'Quick'
  pod 'Nimble'
  pod 'SwiftFormat/CLI'
  pod 'SwiftLint'
end

target 'NimbleSurvey' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Tools
  pod 'R.swift'

  # Development
  pod 'SwiftLint'

  target 'NimbleSurveyTests' do
    inherit! :search_paths
    testing_pods
  end

  target 'NimbleSurveyUITests' do
    testing_pods
  end
end