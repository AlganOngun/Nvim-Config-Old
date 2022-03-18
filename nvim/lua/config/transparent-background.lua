require("transparent").setup({
  enable = false,
  extra_groups = {
	  "nvim-tree",
	  "lualine"
  },
  exclude = {
    "BufferLineTabClose",
    "BufferlineBufferSelected",
    "BufferLineFill",
    "BufferLineBackground",
    "BufferLineIndicatorSelected"
  },
})
