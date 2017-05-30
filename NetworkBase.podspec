#
# Be sure to run `pod lib lint NetworkBase.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'NetworkBase'
  s.version          = '0.6.0'
  s.summary          = 'NetworkManagerBase is an abstract platform for writing API requests and parsers.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: NetworkManagerBase is an abstract platform for writing API requests for certain entities and API response parsers that are going to parse API response data.
                       DESC

  s.homepage         = 'https://github.com/abdullahwaseer/NetworkBase'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'abdullah.waseer@gmail.com' => 'abdullah@mailcohen.com' }
  s.source           = { :git => 'https://github.com/abdullahwaseer/NetworkBase.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/abdullah_waseer'

  s.ios.deployment_target = '9.0'

  s.source_files = 'NetworkBase/Classes/NetworkManager/**/*.{swift}','NetworkBase/Classes/Parsers/**/*.{swift}','NetworkBase/Classes/Requests/**/*.{swift}','NetworkBase/Classes/Response/**/*.{swift}'
  
  # s.resource_bundles = {
  #   'NetworkBase' => ['NetworkBase/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'Alamofire', '~> 4.0.1'
end
