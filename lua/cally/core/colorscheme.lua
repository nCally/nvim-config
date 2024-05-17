-- local status, _ = pcall(vim.cmd, "colorscheme tokyonight")
-- local status, _ = pcall(vim.cmd, "colorscheme PaperColor")
local status, _ = pcall(vim.cmd, "colorscheme everforest")
if not status then
	print("Colorscheme not found")
	return
end
