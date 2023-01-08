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

	    use('nvim-lualine/lualine.nvim')	

	    ----------------
        -- Navigation --
        ----------------
        use {
          'nvim-tree/nvim-tree.lua',
          'nvim-tree/nvim-web-devicons',
        }

	    -----------------------------------
        -- Treesitter: Better Highlights --
        -----------------------------------

        use('nvim-treesitter/nvim-treesitter')
	
        -----------
	    -- Color --
	    -----------
	
    	use('ellisonleao/gruvbox.nvim')

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
        use {
            'nvim-telescope/telescope.nvim', tag = '0.1.0',
            requires = { {'nvim-lua/plenary.nvim'} }
        }

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
