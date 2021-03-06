# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{devise_oauth2_facebook_mongoid}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Mooktakim Ahmed", "Hugo Rincon"]
  s.date = %q{2011-06-09}
  s.email = %q{hugo@bakedweb.net}
  s.extra_rdoc_files = [
    "README"
  ]
  s.files = [
    "README",
    "app/controllers/devise/facebook_consumer_controller.rb",
    "config/locales/en.yml",
    "lib/devise_oauth2_facebook.rb",
    "lib/devise_oauth2_facebook/engine.rb",
    "lib/devise_oauth2_facebook/facebook_consumer_helper.rb",
    "lib/devise_oauth2_facebook/model.rb",
    "lib/devise_oauth2_facebook/routes.rb"
  ]
  s.homepage = %q{https://github.com/hugoerg56/devise_oauth2_facebook_mongoid}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Devise OAuth2 Facebook extension for rails 3 and mongoid}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<devise>, [">= 1.1.1"])
      s.add_runtime_dependency(%q<fbgraph>, [">= 0"])
    else
      s.add_dependency(%q<devise>, [">= 1.1.1"])
      s.add_dependency(%q<fbgraph>, [">= 0"])
    end
  else
    s.add_dependency(%q<devise>, [">= 1.1.1"])
    s.add_dependency(%q<fbgraph>, [">= 0"])
  end
end

