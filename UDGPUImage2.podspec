Pod::Spec.new do |s|
s.name     = 'UDGPUImage2'
s.module_name = 'GPUImage'
s.version  = '1.0.0'
s.license  = 'BSD'
s.summary  = 'An open source iOS framework for GPU-based image and video processing.'
s.homepage = 'https://github.com/iDevmonkey/GPUImage2'
s.author   = { 'Brad Larson' => 'contact@sunsetlakesoftware.com' }
s.source   = { :git => 'https://github.com/iDevmonkey/GPUImage2.git', :branch => "master" }

s.source_files = 'framework/Source/**/*.{swift}'
s.resources = 'framework/Source/Operations/Shaders/*.{fsh}'
s.requires_arc = true
s.xcconfig = { 'CLANG_MODULES_AUTOLINK' => 'YES',
'OTHER_SWIFT_FLAGS' => "$(inherited) -DGLES"}

s.ios.deployment_target = '9.0'
s.pod_target_xcconfig = { 'SWIFT_VERSION' => '5.0' }
s.swift_versions = ['4.0', '4.2', '5.0']
s.ios.exclude_files = 'framework/Source/Mac', 'framework/Source/Linux', 'framework/Source/Operations/Shaders/ConvertedShaders_GL.swift'
s.frameworks   = ['OpenGLES', 'CoreMedia', 'QuartzCore', 'AVFoundation']
end
