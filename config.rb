activate :i18n, mount_at_root: :ru

activate :deploy do |deploy|
  deploy.method = :git
end

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :cache_buster
end