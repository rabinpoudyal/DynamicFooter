
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rabin_dynamic_footer/version"

Gem::Specification.new do |spec|
  spec.name          = "rabin_dynamic_footer"
  spec.version       = RabinDynamicFooter::VERSION
  spec.authors       = ["rabinpoudyal1995"]
  spec.email         = ["rabinpoudyal1995@gmail.com"]

  spec.summary       = %q{This gem generates the dynamic copyright at the footer of your web application}
  spec.description   = %q{This gem comes very handy when you have to print out dynamic content for the footer like year, copyright and more.}
  spec.homepage      = "https://github.com/rabinpoudyal/"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
