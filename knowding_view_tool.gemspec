
lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "knowding_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "knowding_view_tool"
  spec.version       = KnowdingViewTool::VERSION
  spec.authors       = ["sergio"]
  spec.email         = ["serg337@gmail.com"]

  spec.summary       = %q{Include Copyright at the bottom of every view}
  spec.description   = %q{Include Copyright at the bottom of every view}
  spec.homepage      = "https://knowding.com"
  spec.license       = "MIT"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
end
