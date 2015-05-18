###
# Compass
###

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy pages (https://middlemanapp.com/advanced/dynamic_pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
# configure :development do
#   activate :livereload
# end

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript

  # Enable cache buster
  # activate :asset_hash

  # Use relative URLs
  # activate :relative_assets

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
  activate :sync do |config|
    # config.verbose = false  # turn on verbose logging (defaults to false)
    # config.force = false  # force syncing of outdated_files (defaults to false)
    # config.run_on_build = true # when within a framework which `builds` assets, whether to sync afterwards (defaults to true)
    # config.sync_outdated_files = true # when an outdated file is found whether to replace it (defaults to true)
    # config.delete_abandoned_files = true # when an abandoned file is found whether to remove it (defaults to true)
    # config.upload_missing_files = true # when a missing file is found whether to upload it (defaults to true)
    # config.target_pool_size = 8 # how many threads you would like to open for each target (defaults to the amount of CPU core's your machine has)
    # config.max_sync_attempts = 3 # how many times a file should be retried if there was an error during sync (defaults to 3)
  end

  activate :deploy do |deploy|
    deploy.method = :git
    deploy.branch = 'master'
    deploy.build_before = true
  end

end
