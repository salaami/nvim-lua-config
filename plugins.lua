-- Automatically run :PackerCompile whenever plugins.lua is updated with an autocommand:
vim.api.nvim_create_autocmd('BufWritePost', {
    group = vim.api.nvim_create_augroup('PACKER', { clear = true }),
    pattern = 'plugins.lua',
    command = 'source <afile> | PackerCompile',
})

return require('packer').startup({
    function(use)
        ---------------------
        -- Package Manager --
        ---------------------

        use('wbthomason/packer.nvim')

        ----------------------
        -- Required plugins --
        ----------------------

        use('nvim-lua/plenary.nvim')

        ----------------------------------------
        -- Theme, Icons, Statusbar, Bufferbar --
        ----------------------------------------

        use({
            'kyazdani42/nvim-web-devicons',
            config = function()
                require('nvim-web-devicons').setup()
            end,
        })

	use {
	    'nvim-lualine/lualine.nvim',
 	    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}	
        -----------------------------------
        -- Treesitter: Better Highlights --
        -----------------------------------

        --------------------------
        -- Editor UI Niceties --
        --------------------------

        use({
            'norcalli/nvim-colorizer.lua',
            event = 'CursorHold',
            config = function()
                require('colorizer').setup()
            end,
        })

        ---------------
        -- Git Stuff --
        ---------------

        ---------------------------------
        -- Navigation and Fuzzy Search --
        ---------------------------------

        use({
            'karb94/neoscroll.nvim',
            event = 'WinScrolled',
            config = function()
                require('neoscroll').setup({ hide_cursor = false })
            end,
        })

        -------------------------
        -- Editing to the MOON --
        -------------------------

        use({
            'tpope/vim-surround',
            event = 'BufRead',
            requires = {
                {
                    'tpope/vim-repeat',
                    event = 'BufRead',
                },
            },
        })

        use({
            'wellle/targets.vim',
            event = 'BufRead',
        })

        --------------
        -- Terminal --
        --------------

        -----------------------------------
        -- LSP, Completions and Snippets --
        -----------------------------------

        end,
 	config = {
        	display = {
            		open_fn = function()
                		return require('packer.util').float({ border = 'single' })
            		end,
        	},
    	},
})
