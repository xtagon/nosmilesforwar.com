# Asset paths
set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

# Templating
set :markdown_engine, :redcarpet

# Build-specific configuration
configure :build do
	# Assets
	activate :minify_css
	activate :minify_javascript
	activate :relative_assets
	# activate :asset_hash
end
