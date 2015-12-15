# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'spreadsheet/version'

Gem::Specification.new do |spec|
  spec.name          = "spreadsheet"
  spec.version       = Spreadsheet::VERSION
  spec.summary     = "The Spreadsheet Library is designed to read and write Spreadsheet Documents"
  spec.description = "As of version 0.6.0, only Microsoft Excel compatible spreadsheets are supported"
  spec.author      = "Masaomi Hatakeyama, Zeno R.R. Davatz"
  spec.email       = "mhatakeyama@ywesee.com, zdavatz@ywesee.com"
  spec.platform    = Gem::Platform::RUBY
  spec.license     = "GPLv3"
  spec.homepage  = "https://github.com/zdavatz/spreadsheet/"

  spec.metadata['allowed_push_host'] = 'RubyGems.org'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  if RUBY_VERSION.to_f > 2.0
    spec.add_development_dependency "test-unit"
    spec.add_development_dependency "minitest"
  end
  spec.add_dependency "ruby-ole", '~> 1.0'
  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end

