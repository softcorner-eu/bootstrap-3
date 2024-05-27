module Bootstrap3
  module Rails
    class Engine < ::Rails::Engine
      initializer 'bootstrap-sass.assets.precompile' do |app|
        %w(stylesheets javascripts fonts images).each do |sub|
          app.config.assets.paths << root.join('assets', sub)
        end
        %w(eot svg ttf woff).each do |ext|
          app.config.assets.precompile << "bootstrap-3/glyphicons-halflings-regular.#{ext}"
        end
      end
    end
  end
end
