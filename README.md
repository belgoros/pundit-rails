##  Rails app using Pundit

This is a simple Rails `5.2.3` app using authorization with [Pundit](https://github.com/varvet/pundit) gem.
It aslo implements the field level authorization using [strong parameters](https://github.com/varvet/pundit#strong-parameters) control in the policy class as well as in the view template by disabling a field based on the current User role.

The current User is implemented by using fake methods in `ApplicationController`.

### Install

- install Ruby `2.6.5`
- install `bundler` gem with `gem install bundler`
- clone the project
- run `bundle` to install gems
- run `rails db:setup` to setup the database
- run `rails db:seed`  to populate the DB with some fake data (see `seeds.rb` for more details).
- start up the server with `rails s`
- point your browser to `localhost:3000`

See `PostPolicy` for more information about Post related authorizations.

That's it.
