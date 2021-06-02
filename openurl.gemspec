# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{openurl}
  s.version = "1.0.0"

  s.authors = ["Jonathan Rochkind", "Ross Singer"]
  s.email = ["rochkind@jhu.edu", "rossfsinger@gmail.com"]
  s.extra_rdoc_files = [
    "README.md"
  ]
  s.files       =  Dir.glob("{lib,test}/**/*")
  s.test_files  =  Dir.glob("test/**/*")

  s.homepage = %q{https://github.com/openurl/openurl}
  s.require_paths = ["lib"]
  s.summary = %q{a Ruby library to create, parse and use NISO Z39.88 OpenURLs}

  s.add_development_dependency "bundler", "~> 2"
  s.add_development_dependency "rake"
  s.add_development_dependency "test-unit"

  # currently needs 'marc' becuase of it's inclusion
  # of the marc referent format, sorry.Should make
  # this optional.
  s.add_dependency "marc"

  s.add_dependency "rexml"

  # backfill of String#scrub -- for encoding safety in reading/parsing kev -- in ruby pre 2.1
  s.add_dependency "scrub_rb", "~> 1.0"
end
