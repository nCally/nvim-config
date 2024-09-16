-- local status, _ = pcall(vim.cmd, "colorscheme tokyonight")
local status, _ = pcall(vim.cmd, "colorscheme PaperColor")
-- local status, _ = pcall(vim.cmd, "colorscheme everforest")
-- local status, _ = pcall(vim.cmd, "colorscheme gruvbox")
-- local status, _ = pcall(vim.cmd, "colorscheme melange")
if not status then
	print("Colorscheme not found")
	return
end
