# fb-channel-file

Adds a /channel.html route to a Rails app. This fixes a IE7 problem with the Facebook JS SDK.

See http://developers.facebook.com/docs/reference/javascript/ and http://stackoverflow.com/questions/2955012/facebook-javascript-sdk-fb-xd-fragment for more info.

## Installation

Add this line to your application's Gemfile:

    gem 'fb-channel-file'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fb-channel-file

## Usage

Include the gem in your Gemfile. A route will automatically be added to your app.
With no extra config the locale will be inferred from what `I18n.locale` returns. If `I18n.locale` doesn't contain a language part, the locale will default to `en_US`
To configure something else, put this in an initializer in config/initializers:

```FbChannelFileApp.config[:infer_locale] = false
FbChannelFileApp.config[:locale] = 'your locale'
```

For a list of Facebook supported locales look here: https://www.facebook.com/translations/FacebookLocales.xml

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

