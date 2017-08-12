Pod::Spec.new do |s|
  s.name             = 'PlaceholderLabel'
  s.version          = '0.1.0'
  s.summary          = 'UILabel with placeholder support.'
  s.description      = <<-DESC
Gives UILabel options to set a placeholder text and placeholder text color. 
                       DESC
  s.homepage         = 'https://github.com/chiahan1123/PlaceholderLabel'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'chiahan1123' => 'chiahan1123@gmail.com' }
  s.source           = { :git => 'https://github.com/chiahan1123/PlaceholderLabel.git', :tag => s.version.to_s }
  s.ios.deployment_target = '9.0'
  s.source_files = 'PlaceholderLabel/Classes/**/*'
end
