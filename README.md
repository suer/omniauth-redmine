# OmniAuth Redmine

Strategy to authenticate with Redmine via OAuth in Redmine.
(https://github.com/suer/redmine_oauth_provider)

## Installation

Install by Rubygems

    $ gem install omniauth-redmine

Or write on your Gemfile

    gem "omniauth-redmine", "~> 0.0.3"

Build gem package:

    $ rake build

Unpack gem package in your application's root directory:

    $ gem unpack some/directory/pkg/omniauth-redmine-X.Y.Z.gem

Add this line to your application's Gemfile:

    gem 'omniauth-redmine', :path => 'omniauth-redmine-X.Y.Z'

And then execute:

    $ bundle install --path .bundle

Or install it yourself as:

    $ gem install pkg/omniauth-redmine-X.Y.Z.gem

## Usage

Here's an example, adding the middleware to a Rails app in config/initializers/omniauth.rb:

    Rails.application.config.middleware.use OmniAuth::Builder do
      provider :redmine, "consumer key", "consumer secret", :redmine_base_url => "http://redmine.base.url/"
    end

If you use devise, add this lines in config/initializers/devise.rb

    config.omniauth :redmine, "consumer key", "consumer secret", :redmine_base_url => "http://redmine.base.url/"

## License
The MIT License (MIT)
Copyright (c) 2013 suer

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
