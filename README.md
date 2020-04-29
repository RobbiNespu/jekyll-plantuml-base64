# jekyll-remote-plantuml

[![Build Status](https://travis-ci.org/robbinespu/jekyll-plantuml-embed.svg?branch=master)](https://travis-ci.org/robbinespu/jekyll-plantuml-embed)
[![Gem Version](https://badge.fury.io/rb/jekyll-plantuml-embed.svg)](https://badge.fury.io/rb/jekyll-plantuml-embed)
[![Maintainability](https://api.codeclimate.com/v1/badges/aafba8fb4df9ac92e485/maintainability)](https://codeclimate.com/github/RobbiNespu/jekyll-plantuml-embed/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/cd56b207f327603662a1/test_coverage)](https://codeclimate.com/github/robbinespu/jekyll-plantuml/test_coverage)
[![security](https://hakiri.io/github/Patouche/jekyll-remote-plantuml/master.svg)](https://hakiri.io/github/Patouche/jekyll-remote-plantuml/master) [![Build Status](https://travis-ci.org/Patouche/jekyll-remote-plantuml.svg)](https://travis-ci.org/Patouche/jekyll-remote-plantuml)

A Jekyll plugin to simplify the creation of diagrams and flowcharts in your posts and pages with PlantUML as base64 image.
forked from: [https://github.com/Patouche/jekyll-remote-plantuml](https://github.com/Patouche/jekyll-remote-plantuml)

A plugin for jekyll to use plantuml diagram inside your [Jekyll](http://jekyllrb.com/) for you website. This will use external resource to build plantuml diagram. Once created, the diagram is store on the filesystem to prevent any unnecessary diagram generation. So, using this plugin, provide a simple way to integrate plantuml diagramm without the [Graphiz](http://www.graphviz.org/) software or the using the [plantuml](http://sourceforge.net/projects/plantuml/files/plantuml.jar/download) jar file and convert that file into base64.

## Installation

To install this plugin on Jekyll, you just have to follow the guideline of Jekyll [documentation](http://jekyllrb.com/docs/plugins/)

## Usage

To use the jekyll-remote-plantuml plugin, you just have to wrap you text between `{% plantuml %}` and `{% endplantuml %}` tags.

For example, to create a basic shema between Bob and Alice, you can write the following code :

``` text
{% plantuml %}
Bob -> Alice : Hello 
{% endplantuml %}
```

This will retrieve the binary from a remote provider and add it into the folder defined in your configuration.

![Bob and Alice generated](./images/bob-alice.png)

The generated html will have be something like :

``` html
<img src="/assets/images/plantuml/765f88ab868d9706e797ff2c90c67a549a144c52adf0bf2e247d355cf981b9aa.png" />
```

and converted into base64
```html
<img src="data:image/png;base64, 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
 zxhdIJCj5gAAAABJRU5ErkJggg==
 ">
```

Any update of the uml will regenerated the image file using the remote. If the uml is not modified, no request will be made on the remote provider.

## Configuration

For now, the configuration is really poor. You can just change the remote provider and the location where are store the binary files.

``` yaml
plantuml:
  url:	 'http://www.plantuml.com/plantuml/png/{code}'
  assets:  '_images/plantuml/'
```
  
  check file plantuml-config.rb
  ```ruby
  DEFAULT = {
        :assets       => 'assets/img/plantuml/',
        :type         => 'png',
        :encode       => 'encode64',
        :url          => 'http://www.plantuml.com/plantuml/{type}/{code}'
    }
```

### Notes

I'm sorry if it's sad code for a ruby developper which I'm not. I tried to do my best and to share it with the community. So please be lenient.

If you have any request, please leave a message and don't hesitate for any pull request.

## License

This plugin is under the MIT license. See [LICENSE.txt](./LICENSE.txt) file for more details.
