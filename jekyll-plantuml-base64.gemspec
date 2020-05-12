lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |s|
    s.name        = 'jekyll-plantuml-base64'
    s.version     = '0.1.4.36.1'
    s.date        = '2020-04-28'
    s.homepage    = 'https://robbinespu.gitlab.io/blog/2020/05/11/jekyll-features-plantuml-base64/'
    s.metadata    = { 
                      "source_code_uri" => "http://github.com/RobbiNespu/jekyll-plantuml-base64",
                      "bug_tracker_uri"   => "http://github.com/RobbiNespu/jekyll-plantuml-base64/issues"
                    }
    s.summary     = "Jekyll plugin for plantuml base64 image format"
    s.description = "jekyll plugin to include plantuml diagram in jekyll website as base64 image"
    s.authors     = ["Robbi Nespu"]
    s.email       = 'robbinespu@gmail.com'

    s.files       = Dir.glob("{lib}/*.rb") + %w(LICENSE.txt README.md)
    s.test_files  = Dir.glob("test/*.rb")

    s.license     = 'MIT'
    s.require_path = "lib"

    s.add_runtime_dependency('jekyll', '~> 4.0')
    s.add_development_dependency('rake', ["~> 0"])
    s.add_development_dependency('minitest', ["~> 5.4"])

    s.post_install_message = "Thanks for installing!"
end
