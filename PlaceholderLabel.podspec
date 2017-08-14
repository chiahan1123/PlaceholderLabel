Pod::Spec.new do |s|
  s.name             = 'PlaceholderLabel'
  s.version          = '1.1.0'
  s.summary          = 'UILabel with placeholder support.'
  s.description      = <<-DESC
Gives UILabel options to set a placeholder text and placeholder text color. 
                       DESC
  s.homepage         = 'https://github.com/chiahan1123/PlaceholderLabel'
  s.screenshots      = 'https://user-images.githubusercontent.com/11417800/29250565-f27ea388-8076-11e7-8148-24fcae7f78ae.png'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'chiahan1123' => 'chiahan1123@gmail.com' }
  s.source           = { :git => 'https://github.com/chiahan1123/PlaceholderLabel.git', :tag => s.version.to_s }
  s.ios.deployment_target = '9.0'
  s.source_files = 'PlaceholderLabel/Classes/**/*'
end
