require 'json'

package = JSON.parse(File.read(File.join(__dir__, '../package.json')))

Pod::Spec.new do |s|
  s.name         = package['name']
  s.version      = package['version']
  s.summary      = package['description']

  s.homepage     = package['repository']['url']
  s.license      = package['license']

  s.author             = { "author" => "jeral17@gmail.com" }
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/jerson/react-native-palette-full.git", :tag => "master" }
  s.source_files  = "RNPalette/**/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  s.dependency "SDWebImage", "~>5.0"

end

  