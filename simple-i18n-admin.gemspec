# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{simple-i18n-admin}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["luigibyte"]
  s.date = %q{2011-04-14}
  s.email = %q{luigibyte@gmail.com}
  s.extra_rdoc_files = [
    "README.md"
  ]
  s.files = [
    "app/controllers/simple_i18n_admin/application_controller.rb",
    "app/controllers/simple_i18n_admin/translations_controller.rb",
    "app/models/simple_i18n_admin/translation.rb",
    "app/views/layouts/simple_i18n_admin.html.haml",
    "app/views/simple_i18n_admin/translations/_form.html.haml",
    "app/views/simple_i18n_admin/translations/_search.html.haml",
    "app/views/simple_i18n_admin/translations/edit.html.haml",
    "app/views/simple_i18n_admin/translations/index.html.haml",
    "app/views/simple_i18n_admin/translations/new.html.haml",
    "config/initializers/i18n_backend.rb",
    "config/routes.rb",
    "lib/simple_i18n_admin.rb",
    "lib/tasks/import.rake"
  ]
  s.homepage = %q{http://github.com/llopez/simple-i18n-admin}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Admin tool for i18n translations}
  s.test_files = [
    "test/performance/browsing_test.rb",
    "test/test_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, ["~> 3.0.0"])
      s.add_runtime_dependency(%q<haml>, [">= 0"])
      s.add_runtime_dependency(%q<redis>, [">= 0"])
      s.add_runtime_dependency(%q<will_paginate>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
    else
      s.add_dependency(%q<rails>, ["~> 3.0.0"])
      s.add_dependency(%q<haml>, [">= 0"])
      s.add_dependency(%q<redis>, [">= 0"])
      s.add_dependency(%q<will_paginate>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>, ["~> 3.0.0"])
    s.add_dependency(%q<haml>, [">= 0"])
    s.add_dependency(%q<redis>, [">= 0"])
    s.add_dependency(%q<will_paginate>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
  end
end

