simple-i18n-admin
==============================================================================

*Simple I18n Admin*

simple-i18n-admin is a Rails Engine that adds and admin tool for i18n translations.

Requirements
------------------------------------------------------------------------------

  * Rails
  * Redis

Installation
------------------------------------------------------------------------------

Add to your Gemfile.

    gem 'simple-i18n-admin', :git => 'git@github.com:llopez/simple_i18n_admin.git', :require => 'simple_i18n_admin'

Then

    $ bundle
    
Then

    $ rake simple_i18n_admin:import

Configuration
------------------------------------------------------------------------------

In your config/application.rb

    config.simple_i18n_admin.db = 2 # this is the redis database number (default 0)

Usage
------------------------------------------------------------------------------

Go to "/simple_i18n_admin" and see the admin

TODO
------------------------------------------------------------------------------

  * Test
  * Redis more advance configuration
  * Better UI

People
------------------------------------------------------------------------------

  * Luis Lopez <http://github.com/llopez>  
    Author
  * Juan Schwindt <http://github.com/jschwindt>  
    Contributor    
