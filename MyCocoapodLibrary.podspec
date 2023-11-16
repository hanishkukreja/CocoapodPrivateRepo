#
#  Be sure to run `pod spec lint MyCocoapodLibrary.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|
  spec.name         = "MyCocoapodLibrary"
  spec.version      = "0.0.1"
  spec.summary      = "This is a Library for Design Tokens"
  spec.description  = "A longer description"
  spec.homepage     = "http://EXAMPLE/MyCocoapodLibrary"
  spec.license      = "MIT"

  spec.author             = { "Hanish Kukreja" => "hkukreja1@gmail.com" }

  spec.platform     = :ios, "13.0"
  spec.source       = { :git => "https://github.com/hanishkukreja/CocoapodPrivateRepo.git", :branch => "Development" }

  #spec.source_files  = "MyCocoapodLibrary/Source/*.{h,m,swift}"
  
  spec.subspec 'Source' do |s|
    s.source_files = 'MyCocoapodLibrary/Source/*.{h,m,swift}'
  end
  
  spec.subspec 'ios' do |s|
    s.subspec 'ei' do |ss|
      ss.source_files = 'MyCocoapodLibrary/ios/ei/*'
      #ss.resources = 'MyCocoapodLibrary/ios/ei/*.{json}'
    end
    s.subspec 'enbd' do |ss|
      #ss.resources = 'MyCocoapodLibrary/ios/enbd/*.{json}'
      ss.source_files = 'MyCocoapodLibrary/ios/enbd/*'
    end
  end

#  spec.resources = "MyCocoapodLibrary/Resources/*"
  spec.resource_bundles = {
     'MyCocoapodLibrary' => ['MyCocoapodLibrary/ios/**/*.{json}']
  }
end
