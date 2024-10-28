return {
"rmagatti/auto-session",
  lazy = false,
config = function()
  local auto_session = require("auto-session")
  auto_session.setup({
    auto_restore_enabled = false,
  })
end,
}
