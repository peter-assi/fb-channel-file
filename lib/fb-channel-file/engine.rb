class FbChannelFileApp
  class << self
    def config
      @@config ||= default_config.dup
    end

    def default_config
      { :locale => "en_US",
        :infer_locale => true }
    end

    def call(env)
      puts I18n.locale
      [
        200,
        { "Pragma" => "public", "Cache-Control" => "max-age=#{60*60*24*365}", "Expires" => CGI.rfc1123_date(1.year.from_now), "Content-Type" => "text/html" },
        ["<script src='//connect.facebook.net/#{locale}/all.js'></script>"]
      ]
    end

    def locale
      config[:infer_locale] ? infer_locale : config[:locale]
    end

    def infer_locale
      # a list of supported locales are here https://www.facebook.com/translations/FacebookLocales.xml
      # default to en_US if locale not set with language
      locale = I18n.locale.to_s.sub(/-/, "_")
      locale.index(/_/) ? locale : default_config[:locale]
    end
  end
end

module FbChannelFileEngine
  class Engine < Rails::Engine
    initializer "fb-channel-file.configure_router", :before => :add_routing_paths do |app|
      app.routes.prepend do
        match "/channel.html" => FbChannelFileApp
      end
    end
  end
end


