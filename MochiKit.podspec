Pod::Spec.new do |s|
  s.name             = 'MochiKit'
  s.version          = '0.2.2'
  s.summary          = 'Util'
  s.homepage         = 'https://github.com/mochisan/MochiKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Akihiro Mochida' => 'mhsp0815@gmail.com' }
  s.source           = { :git => 'https://github.com/mochisan/MochiKit.git', :tag => s.version.to_s }
  s.requires_arc     = true
  s.ios.deployment_target = '8.0'
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '3.0' }
  s.source_files = 'MochiKit/Classes/*.swift'
  s.ios.source_files = 'MochiKit/Classes/*.swift'
end
