local defaults_values = {
  config_home = vim.fn.stdpath('config') .. '/nlsp-settings',
  update_settings_on_save = true,
}


local config = {}
config.values = {}

config.set_default_values = function(opts)
  config.values = vim.tbl_deep_extend('force', defaults_values, opts or {})
end

config.get = function(key)
  return config.values[key] or nil
end

return config
