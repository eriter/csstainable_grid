Gem::Specification.new do |csss|
  csss.name        = 'csstainable_grid'
  csss.authors     = ["wardpenney"]
  csss.version     = '1.0.0'
  csss.summary     = "A sustainable SASS grid."
  csss.description = %q{A simple hello world gem}
  csss.files       = `git ls-files`.split("\n")
  csss.homepage    =
    'https://github.com/wardpenney/csstainable_grid'
  csss.license       = 'MIT'

  csss.add_dependency "thor"
  csss.add_dependency "linguistics"
  csss.executables   = csss.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
end