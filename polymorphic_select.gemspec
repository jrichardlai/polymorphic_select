# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "polymorphic_select/version"

Gem::Specification.new do |s|
  s.name        = "polymorphic_select"
  s.version     = PolymorphicSelect::VERSION
  s.authors     = ["Jean-Richard Lai"]
  s.email       = ["jrichardlai@gmail.com"]
  s.homepage    = "https://github.com/jrichardlai/polymorphic_select"
  s.summary     = %q{Rails 2.8 Polymorphic Select helpers}
  s.description = %q{Rails 2.8 Polymorphic Select helpers}

  s.rubyforge_project = "polymorphic_select"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ["lib"]
end