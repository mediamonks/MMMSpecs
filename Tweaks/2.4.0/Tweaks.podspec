Pod::Spec.new do |spec|
  spec.name         = 'Tweaks'
  spec.version      = '2.4.0'
  spec.license      =  { :type => 'BSD' }
  spec.homepage     = 'https://github.com/mediamonks/Tweaks'
  spec.authors      = { 'Grant Paul' => 'tweaks@grantpaul.com', 'Kimon Tsinteris' => 'kimon@mac.com' }
  spec.summary      = 'Easily adjust parameters for iOS apps in development.'
  spec.source       = { :git => 'https://github.com/mediamonks/Tweaks.git', :tag => '2.4.0' }
  spec.source_files = 'FBTweak/*.{h,m}'
  spec.requires_arc = true
  spec.framework = 'MessageUI'

  spec.ios.deployment_target = '8.0'
end
