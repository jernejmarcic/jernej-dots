Vim�UnDo� $���Tւy����?���O��D(/��   '   					"typescript",            	       	   	   	    g��=    _�                     
   [    ����                                                                                                                                                                                                                                                                                                                                                             g��N     �   	            [        "c", "lua", "vim", "vimdoc", "elixir", "javascript", "html", "python", "typescript"5��    	   [                  !                     �    	   `                  &                     �    	   _                  %                     �    	   ^                  $                     �    	   ]                  #                     �    	   \                  "                     �    	   [                  !                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             g��T    �      %         $  "nvim-treesitter/nvim-treesitter",     build = ":TSUpdate",     config = function()   6    local configs = require("nvim-treesitter.configs")           configs.setup({         ensure_installed = {   [        "c", "lua", "vim", "vimdoc", "elixir", "javascript", "html", "python", "typescript"         },         sync_install = false,   $      highlight = { enable = true },   !      indent = { enable = true },       })     end   },   	  {       "williamboman/mason.nvim",       opts = {         ensure_installed = {           "stylua",           "shellcheck",           "shfmt",           "flake8",         },       },     },5��                 !             ;      6      5�_�                           ����                                                                                                                                                                                                                                                                                                                                      %          V       g�ۇ     �         %      "				highlight = { enable = true },5��                         �                     �                        �                    �                         �                     �                        �                     �                          �                     �                         �                     �                          �                     �                          �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                      '          V       g�ۓ     �         '      				vim5��                         �                     �                         �                     �                     (   �             (       5�_�                       +    ����                                                                                                                                                                                                                                                                                                                                      '          V       g�ۤ    �         '       				highlight = { enable = true,   ,				additional_vim_regex_highlighting = true   },5��                      *   �      .       *       5�_�                       B    ����                                                                                                                                                                                                                                                                                                                                      %          V       g�ۮ    �         %      L				highlight = { enable = true, additional_vim_regex_highlighting = true },�         %    5��       A                  �                     �       @                  �                     �       ?                  �                     �       >                  �                     �       =                  �                     �       <                  �                     �       ;                  �                     �       :                  �                     �       9                  �                     �       8                  �                     �       7                  �                     �       6                  �                     �       5                  �                     �       4                  �                     �       3                  �                     �       2                  �                     �       1                  �                     �       0                  �                     �       /                  �                     �       .                  �                     �       -                  �                     �       ,                  �                     �       +                  �                     �       *                  �                     �       )                  �                     �       (                  �                     �       '                  �                     �       &                  �                     �       %                  �                     �       $                  �                     �       #                  �                     �       "                  �                     �       !              !   �             !       5�_�                       I    ����                                                                                                                                                                                                                                                                                                                                      %          V       g��    �         %      L				highlight = { enable = true, additional_vim_regex_highlighting = true },5��       E                 �                    5�_�      	                     ����                                                                                                                                                                                                                                                                                                                                                             g��9     �         %      					"typescript",�         %    5��                     /   B              V       5�_�                  	          ����                                                                                                                                                                                                                                                                                                                                                             g��<    �         &      8					"typescript", "markdown",          -- Add this line   /          "markdown_inline",   -- Add this line5��                      B      E       :       5��