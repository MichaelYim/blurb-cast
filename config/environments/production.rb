Chapter3::Application.configure do
  config.cache_classes = true
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true
  config.serve_static_assets = true
  config.assets.compress = true
  config.assets.compile = false
  config.assets.digest = true
  config.log_level = :debug
  config.assets.precompile += %w( custom.css.scss )
  config.i18n.fallbacks = true
  config.active_support.deprecation = :notify


end
