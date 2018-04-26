Pod::Spec.new do |s|

  s.name = 'NSObject-GIHObject'
  s.version = '0.0.1'
  s.ios.deployment_target = '4.0'
  s.license = { :type => "Apache License", :file => "LICENSE" }
  s.summary = 'NSObject-GIHObject expand swizzle method'
  s.homepage = 'https://github.com/gaizhi'
  s.author = { 'Xu Qiang' => '994059781@qq.com' }
  s.source = { :git => 'https://github.com/gaizhi/NSObject-GIHObject.git', :tag => s.version.to_s }

  s.description = 'NSObject-GIHObject expand swizzle method!'

  s.requires_arc = true

  s.frameworks = [
    'Foundation'
  ]

  s.source_files = 'NSObject/*.{h,m}'
  s.public_header_files = 'NSObject/*.h'

end
