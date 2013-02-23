# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "siriproxy-whut"
  s.version     = "0.1.2"
  s.authors     = ["NeMeSiS_tm"]
  s.email       = [""]
  s.homepage    = "https://github.com/Swimo/SiriProxy-Whut"
  s.summary     = %q{A plugin to open a url on SiriProxy}
  s.description = %q{FU.}

  s.rubyforge_project = "siriproxy-whereami"

  s.files         = `git ls-files 2> /dev/null`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/* 2> /dev/null`.split("\n")
  s.executables   = `git ls-files -- bin/* 2> /dev/null`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  s.add_runtime_dependency "httparty"
end
