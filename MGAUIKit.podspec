Pod::Spec.new do |s|

  s.name         = "MGAUIKit"
  s.version      = "0.0.1"
  s.summary      = "A short description of MGAUIKit."

  s.description  = <<-DESC
                   A longer description of MGAUIKit in Markdown format.

                   * Think: Why did you write this? What is the focus? What does it do?
                   * CocoaPods will be using this to generate tags, and improve search results.
                   * Try to keep it short, snappy and to the point.
                   * Finally, don't worry about the indent, CocoaPods strips it!
                   DESC

  s.homepage     = "http://matthewgreenassociates.com"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"
  s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "Matt Green" => "mattgreen1977@gmail.com" }
  s.social_media_url   = "http://twitter.com/Matt Green"
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/mcjg/MGAUIKit.git", :tag => "0.0.1" }
  s.source_files  = "Classes", "Classes/**/*.{h,m}"


end
