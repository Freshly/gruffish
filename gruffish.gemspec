# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'grpc_mock/version'

Gem::Specification.new do |spec|
  spec.name          = 'gruffish'
  spec.version       = GrpcMock::VERSION
  spec.authors       = ['Yuta Iwama', 'Allen Rettberg']
  spec.email         = ['ganmacs@gmail.com', 'allen.rettberg@freshly.com']

  spec.summary       = 'Stubs your gRPCs with some gruffy magic'
  spec.description   = 'Stubs your gRPCs with some gruffy magic'
  spec.homepage      = 'https://github.com/Freshly/gruffish'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'grpc', '>= 1.12.0', '< 2'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'grpc-tools'
  spec.add_development_dependency 'pry-byebug'
  spec.add_development_dependency 'rake', '>= 12.3.3'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop'
end