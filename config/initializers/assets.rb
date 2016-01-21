# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path
#Rails.application.config.assets.paths << File.join(Rails.root,'app','assets','images')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.

Rails.application.config.assets.precompile += %w( admin.css )
Rails.application.config.assets.precompile += %w( details.css )
Rails.application.config.assets.precompile += %w( index.css )
Rails.application.config.assets.precompile += %w( results.css )
Rails.application.config.assets.precompile += %w( topicdetail.css )
Rails.application.config.assets.precompile += %w( usermain.css )
Rails.application.config.assets.precompile += %w( courseforum.css )
Rails.application.config.assets.precompile += %w( fileinput.min.css )
Rails.application.config.assets.precompile += %w( bootstrap-datepicker3.css )

Rails.application.config.assets.precompile += %w( bootstrap-datepicker.min.js )
Rails.application.config.assets.precompile += %w( fileinput.min.js )
Rails.application.config.assets.precompile += %w( fileinput_locale_zh.js )
Rails.application.config.assets.precompile += %w( jquery.tags.min.js )

