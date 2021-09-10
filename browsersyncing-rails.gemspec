require_relative "lib/browsersyncing/version"

Gem::Specification.new do |spec|
  spec.name        = "browsersyncing-rails"
  spec.version     = Browsersyncing::VERSION
  spec.authors     = ["Jamie Hill"]
  spec.email       = "jamie@thelucid.com"
  spec.homepage    = "https://github.com/thelucid/browsersyncing-rails"
  spec.summary     = "Browser Syncing for Rails. This gem provides installers to get you going with live reloading and browser syncing."
  spec.license     = "MIT"

  spec.files = Dir["lib/**/*", "MIT-LICENSE", "README.md"]

  spec.add_dependency "rails", ">= 6.0.0"
end
