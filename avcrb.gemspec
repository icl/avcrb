# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "avcrb/version"

Gem::Specification.new do |s|
  s.name        = "avcrb"
  s.version     = Avcrb::VERSION
  s.authors     = ["Ethan Soutar-Rau"]
  s.email       = ["ethan.soutar.rau@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{ffmpeg tools}
  s.description = %q{Wrappers for common operations on videos using ffmpeg}

  s.rubyforge_project = "avcrb"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
