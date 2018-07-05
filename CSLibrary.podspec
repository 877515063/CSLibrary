

Pod::Spec.new do |s|

  s.name         = "CSLibrary"
  s.version      = "0.0.2"
  s.summary      = "CSLibrary is a public library managed by CocoaPods."
  s.homepage     = "https://github.com/877515063/CSLibrary"
  s.license      = "MIT"
  s.author             = { "877515063" => "focusboyit@gmail.com" }
  s.source       = { :git => "https://github.com/877515063/CSLibrary.git", :tag => "#{s.version}" }
  s.platform     = :ios, "7.0"
  s.source_files  = "CSLibrary/*.{h,m}"
  s.public_header_files = "CSLibrary/CSLibrary.h"

end
