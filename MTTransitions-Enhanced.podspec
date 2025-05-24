Pod::Spec.new do |s|
  s.name         = 'MTTransitions-Enhanced'
  s.version      = '1.0.0'
  s.license = 'MIT'
  s.requires_arc = true
  
  s.source = { :git => 'https://github.com/xdgcc/MTTransitions.git', :tag => s.version.to_s }

  s.summary         = 'MTTransitions - Enhanced Fork with Custom Modifications'
  s.homepage        = 'https://github.com/xdgcc/MTTransitions'
  s.license         = { :type => 'MIT' }
  
  s.author          = { 'xdgcc' => 'xdgcc1994@gmail.com' }
  
  s.platform        = :ios
  s.swift_version   = '5.0'
  s.source_files    = 'Source/**/*.{swift,metal,h}'
  s.resource  = 'Source/**/Assets.bundle'
  s.ios.deployment_target = '11.0'
  s.xcconfig = { 'MTL_HEADER_SEARCH_PATHS' => '${PODS_CONFIGURATION_BUILD_DIR}/MetalPetal/MetalPetal.framework/Headers'}
  
  s.weak_frameworks = 'MetalKit'
  
  s.dependency 'MetalPetal'
  s.dependency 'MetalPetal/Swift'
  
end
