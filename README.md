# Browser Syncing for Rails

Use [Browser Sync](https://browsersyncing.io) with Rails. This gem provides installers to get you going with live reloading and browser syncing.

Browser Syncing for Rails works beautifully with [cssbundling-rails](https://github.com/rails/cssbundling-rails) and [jsbundling-rails](https://github.com/rails/jsbundling-rails).

Whenever Browser Sync detects changes to any assets or views, it will trigger a browser reload. You can configure Browser Sync via the generated `bs-config.js` — it's preconfigured to inject into `head` rather than `body`, due to turbo's body replacement.


## Installation

You must already have node and yarn installed on your system, then:

1. Add `browsersyncing-rails` to your Gemfile with `gem 'browsersyncing-rails'`
2. Run `./bin/bundle install`
3. Run `./bin/rails browsersyncing:install`


## Usage

Just run `./bin/dev` and visit `localhost:3001` to access your Rails instance via the Browser Sync proxy, and `localhost:3002` to access the Browser Sync UI; Rails runs on `localhost:3000` as usual.


## License

Browser Syncing for Rails is released under the [MIT License](https://opensource.org/licenses/MIT).
