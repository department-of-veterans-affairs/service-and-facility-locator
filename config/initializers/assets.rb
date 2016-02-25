# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )

Rails.application.config.assets.precompile += %w( application_split2.css)
Rails.application.config.assets.precompile += %w( html5shiv.min.js nwmatcher-1.2.5-min.js selectivizr-1.0.3b.js respond.min.js rem.min.js framework_and_overrides.css scaffolds.css search_pages.css site_wide_styles.css static_pages.css veterans.css jquery.dataTables.css )
