# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'baidu_ueditor/version'

Gem::Specification.new do |spec|
  spec.name          = "baidu_ueditor"
  spec.version       = BaiduUeditor::VERSION
  spec.authors       = ["yancheng"]
  spec.email         = ["zqalyc@163.com"]

  spec.summary       = %q{Ueditor integration on Rails}
  spec.description   = %q{Ueditor is a WYSIWYG editor adapt to Chinese habits, this gem is a easy way to integrate with Rails4, Rails5}
  spec.homepage      = "http://www.balawo.com"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "http://www.balawo.com"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
end
