return
{
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.nvim' },
    opts = {
	    enabled = true,
	    heading = {
		    atx = false,
		    setext = false,
		    sign = false,
		    border = true,
		    width = 'block',
	    },
	    pipe_table = { 
		    preset = 'double',
		    cell = 'trimmed',

	    },
    },
}

