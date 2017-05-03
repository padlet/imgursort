# Imgursort

This is Padlet's developer take-home assignment. This example is in Ruby, but you should be able to do the same in pretty much any other language. _Note: please do not write Brainf*ck. We'll give you points for trying, but like umbrellas in a sandstorm, it's questionable how much they would be worth._


## Objectives

Write a script/command line executable that will do the following

1. Query Imgur's public API and fetch images from its [viral gallery](https://api.imgur.com/endpoints/gallery). (Feel free to use Flickr's API or the API of any public image hosting service for that matter). [You'll need to create an app on Imgur first and obtain a client ID](https://api.imgur.com/oauth2/addclient).

2. Find the dominant color for each image. 

3. Sort images returned from the API query in (1) by each image's dominant color. There are many ways to sort colors. Feel free to use gems/npm packages etc that can do this. You don't have to roll your own. 

4. Output the sorted images in sorted order in an HTML file. (Look at `example/imgursort.html` if you need a reference).


## Resources

1. Register an Imgur App to access their API: [https://api.imgur.com/oauth2/addclient](https://api.imgur.com/oauth2/addclient)

2. Declaring dependencies to be installed for a gem: [http://guides.rubygems.org/patterns/#declaring-dependencies](http://guides.rubygems.org/patterns/#declaring-dependencies)

## Ruby programmers

The scaffold for the Ruby version of this assignment is structured as a gem. It was created by running `bundle gem imgursort`. Dependencies that a gem require are specified in their gemspec, which in the case of this assignment is `imgursort.gemspec`. 

1. Use the `Image` class in `lib/imgursort/image.rb`. Feel free to add more classes/modules/files to achieve the objectives.

2. In `bin/imgursort` use the code you've written to generate `images_sorted_by_dominant_color`, an array of `ImgurSort::Image` objects. We've already written code that will use the array to generate the HTML file. You can change `OUTPUT_HTML_FILE_PATH` to decide where exactly the generated HTML should be written to.

3. Run `bundle exec ruby -Ilib bin/imgursort` to generate the HTML file. 

### Setup

Install [bundler](http://bundler.io).

```
gem install bundler

```

Add dependencies to `imgursort.gemspec` (read the __Dependencies__ section)

Then install the dependencies.


```
bundle install

# OR if you do not wish to pollute your system installation of Ruby

bundle install --path bundles/vendor

```

### Dependencies

You should add gems and other dependencies in `imgursort.gemspec`, e.g.

```
#gemspec

  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"

  # This gem doesn't exist
  spec.add_runtime_dependency "useful_gem", "~> 1.0"

```


### Usage

At the command line, use bundler to run 

```
bundle exec ruby -Ilib bin/imgursort

```
