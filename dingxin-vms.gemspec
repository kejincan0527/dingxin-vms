
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "dingxin/vms/version"

Gem::Specification.new do |spec|
  spec.name          = "dingxin-vms"
  spec.version       = Dingxin::Vms::VERSION
  spec.authors       = ["Wells Muker"]
  spec.email         = ["wellsmuker@gmail.com"]

  spec.summary       = %q{A Ruby Gem for using dingxin vms service.}
  spec.description   = %q{适用于鼎信科技提供的语音通知API服务。}
  spec.homepage      = "https://github.com/kejincan0527/dingxin-vms"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_dependency "typhoeus"
end
