module Bootstrap3
  module Rails
    class Engine < ::Rails::Engine
      initializer 'bootstrap-sass.assets.precompile' do |app|
        %w(stylesheets javascripts fonts images).each do |sub|
          app.config.assets.paths << root.join('assets', sub)
        end
        app.config.assets.precompile << %r(bootstrap-3/glyphicons-halflings-regular\.(?:eot|svg|ttf|woff)$)
      end
    end
  end
end
