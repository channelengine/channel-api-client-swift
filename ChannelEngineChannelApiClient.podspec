Pod::Spec.new do |s|
  s.name = 'ChannelEngineChannelApiClient'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '3.0'
  s.version = '2.13.0'
  s.source = { :git => 'git@github.com:OpenAPITools/openapi-generator.git', :tag => 'v2.13.0' }
  s.authors = 'support@channelengine.com'
  s.license = 'Proprietary'
  s.homepage = 'https://www.channelengine.com'
  s.summary = 'ChannelEngineChannelApiClient Swift SDK'
  s.description = 'ChannelEngine Channel API Client for swift'
  s.source_files = 'ChannelEngineChannelApiClient/Classes/**/*.swift'
  s.dependency 'AnyCodable-FlightSchool', '~> 0.6.1'
end
