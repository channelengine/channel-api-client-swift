Pod::Spec.new do |s|
  s.name = 'ChannelEngineChannelApiClient'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.version = '2.6.0'
  s.source = { :git => 'git@github.com:swagger-api/swagger-mustache.git', :tag => 'v1.0.0' }
  s.authors = 'Christiaan de Ridder'
  s.license = 'Proprietary'
  s.homepage = 'https://www.channelengine.com'
  s.description = 'ChannelEngine channel API Client for swift4'
  s.source_files = 'ChannelEngineChannelApiClient/Classes/**/*.swift'
  s.dependency 'Alamofire', '~> 4.5.0'
end
