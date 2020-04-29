lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |s|
    s.name        = 'jekyll-plantuml-base64'
    s.version     = '0.1.4.34'
    s.date        = '2020-04-28'
    s.homepage    = "http://github.com/RobbiNespu/jekyll-plantuml-base64"
    s.summary     = "Jekyll plantuml base64"
    s.description = "jekyll plugin to include plantuml diagram in jekyll website as base64 image"
    s.authors     = ["RobbiNespu"]
    s.email       = 'robbinespu@gmail.com'

    s.files       = Dir.glob("{lib}/*.rb") + %w(LICENSE.txt README.md)
    s.test_files  = Dir.glob("test/*.rb")

    s.license     = 'MIT'
    s.require_path = "lib"

    s.add_runtime_dependency('jekyll', '~> 4.0')
    s.add_development_dependency('rake', ["~> 0"])
    s.add_development_dependency('minitest', ["~> 5.4"])
end
