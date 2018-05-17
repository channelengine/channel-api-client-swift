Pod::Spec.new do |s|
  s.name = 'ChannelEngineChannelApiClient'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.version = '2.6.1'
  s.source = { :git => 'git@github.com:swagger-api/swagger-mustache.git', :tag => 'v1.0.0' }
  s.authors = 'support@channelengine.com'
  s.license = 'Proprietary'
  s.homepage = 'https://www.channelengine.com'
  s.description = 'ChannelEngine Channel API Client for swift'
  s.source_files = 'ChannelEngineChannelApiClient/Classes/**/*.swift'
  s.dependency 'Alamofire', '~> 4.5.0'
end
