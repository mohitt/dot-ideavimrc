-- ~/.config/nvim/lua/config/options.lua
-- For windows  ~/AppData\Local\nvim\lua\config\options.lua

-- ... other LazyVim options ...

-- Set PowerShell as the default shell
if vim.fn.executable("pwsh") == 1 then
	vim.o.shell = "pwsh"
else
	-- Fallback to the older powershell.exe if pwsh isn't found
	vim.o.shell = "powershell.exe"
end

-- Configure shell command flags for PowerShell
-- These flags ensure proper command execution and UTF-8 encoding
vim.o.shellcmdflag =
	"-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;"
vim.o.shellredir = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode"
vim.o.shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode"
vim.o.shellquote = ""
vim.o.shellxquote = ""

-- You might also see LazyVim's own terminal setup helper.
-- If you see a line like this, ensure it's either commented out or
-- configured to use "pwsh" or "pwsh.exe":
-- LazyVim.terminal.setup("pwsh") -- or "pwsh.exe"

-- ... rest of your options.lua ...
