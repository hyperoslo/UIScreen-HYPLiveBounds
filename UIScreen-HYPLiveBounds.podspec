Pod::Spec.new do |s|
  s.name = "UIScreen-HYPLiveBounds"
  s.version = "1.0"
  s.summary = "Get bounding rectangle of screen based on current device orientation"
  s.description = <<-DESC
                   * Get bounding rectangle of screen based on current device orientation
                   DESC
  s.homepage = "https://github.com/hyperoslo/UIScreen-HYPLiveBounds"
  s.license = {
    :type => 'MIT',
    :file => 'LICENSE.md'
  }
  s.author = { "Christoffer Winterkvist" => "christoffer@winterkvist.com" }
  s.social_media_url = "http://twitter.com/zenangst"
  s.platform = :ios, '6.0'
  s.source = {
    :git => 'https://github.com/hyperoslo/UIScreen-HYPLiveBounds.git',
    :tag => s.version.to_s
  }
  s.source_files = 'UIScreen-HYPLiveBounds/'
  s.frameworks = 'Foundation'
  s.requires_arc = true
end
