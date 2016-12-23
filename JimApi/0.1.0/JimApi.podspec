#
# Be sure to run `pod lib lint JimApi.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
s.name             = 'JimApi'
s.version          = '0.1.0'
s.summary          = '云南智慧生活-Jim-APITestVerson'


s.homepage     = "https://github.com/QA411"
s.license      = "Apache License, Version 1.0.0"
s.author       = "云南智慧生活-Jim"
s.platform     = :ios, "8.0"
s.requires_arc = true
s.source       = {:git => 'https://github.com/QA411/JimApi.git', :tag => "v#{s.version}" }

s.frameworks  = "UIKit","Foundation"
s.prefix_header_contents = '#import <UIKit/UIKit.h>', '#import <Foundation/Foundation.h>'

s.source_files = 'Pod/Classes/*.{h,m}'
s.public_header_files   = 'Pod/Classes/*.{h}'

s.subspec 'Core' do |ss|
ss.source_files = 'Pod/Classes/Core/**/*.{h,m}'
ss.public_header_files   = 'Pod/Classes/Core/**/*.{h}'
ss.frameworks            = "UIKit","Foundation"
ss.dependency 'AFNetworking'
ss.dependency 'JSONModel'
ss.user_target_xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'USE_JKKIT_CORE=1' }
end

s.subspec 'Plugins' do |ss|
ss.source_files = 'Pod/Classes/Plugins/**/*.{h,m}'
ss.public_header_files   = 'Pod/Classes/Plugins/**/*.{h}'
ss.frameworks            = "UIKit","Foundation"
ss.user_target_xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'USE_JKKIT_PLUGINS=1' }
end

s.subspec 'Caches' do |ss|
ss.source_files = 'Pod/Classes/Caches/**/*.{h,m}'
ss.public_header_files   = 'Pod/Classes/Caches/**/*.{h}'
ss.frameworks            = "UIKit","Foundation"
ss.user_target_xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'USE_JKKIT_CACHES=1' }
end

s.subspec 'Refresh' do |ss|
ss.source_files = 'Pod/Classes/Refresh/**/*.{h,m}'
ss.public_header_files   = 'Pod/Classes/Refresh/**/*.{h}'
ss.frameworks            = "UIKit","Foundation"
ss.dependency 'MJRefresh'
ss.user_target_xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'USE_JKKIT_REFRESH=1' }
end

s.subspec 'HUD' do |ss|
ss.source_files = 'Pod/Classes/HUD/**/*.{h,m}'
ss.public_header_files   = 'Pod/Classes/HUD/**/*.{h}'
ss.frameworks            = "UIKit","Foundation"
ss.dependency 'MBProgressHUD'
ss.user_target_xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'USE_JKKIT_HUD=1' }
end

s.subspec 'Validator' do |ss|
ss.source_files = 'Pod/Classes/Validator/**/*.{h,m}'
ss.public_header_files   = 'Pod/Classes/Validator/**/*.{h}'
ss.frameworks            = "UIKit","Foundation"
ss.user_target_xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'USE_JKKIT_VALIDATOR=1' }
end

s.subspec 'Security' do |ss|
ss.source_files = 'Pod/Classes/Security/**/*.{h,m}'
ss.public_header_files   = 'Pod/Classes/Security/**/*.{h}'
ss.frameworks            = "UIKit","Foundation"
ss.user_target_xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'USE_JKKIT_SECURITY=1' }
end

end

