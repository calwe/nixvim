{ pkgs, ... }:
{
  # Import all your configuration modules here
  imports = [
    ./bufferline.nix
  ];

  config = {
    colorschemes.catppuccin.enable = true;

    options = {
      number = true;
      relativenumber = true;

      expandtab = true;
      shiftwidth = 4;
      tabstop = 4;
    };

    plugins = {
      luasnip.enable = true;
      treesitter.enable = true;
      lualine.enable = true;
      telescope.enable = true;
      neo-tree.enable = true;
      nix.enable = true;
      lsp = {
        enable = true;
        servers = {
          rust-analyzer = {
            enable = true;
            installCargo = false;
            installRustc = false;
          };
        };
      };

      nvim-cmp = {
        enable = true;
        autoEnableSources = true;
        sources = [
          { name = "nvim_lsp"; }
          { name = "path"; }
          { name = "buffer"; }
          { name = "luasnip"; }
        ];

        snippet.expand = "luasnip";

        mapping = {
          "<CR>" = "cmp.mapping.confirm({ select = true })";
          "<Tab>" = {
            action = ''
              function(fallback)
                luasnip = require("luasnip")
                if cmp.visible() then
                  cmp.select_next_item()
                elseif luasnip.expandable() then
                  luasnip.expand()
                elseif luasnip.expand_or_jumpable() then
                  luasnip.expand_or_jump()
                else
                  fallback()
                end
              end
            '';
            modes = [ "i" "s" ];
          };
        };
      };
    };

    extraPlugins = with pkgs.vimPlugins; [
      vim-just
    ];

    globals.mapleader = " ";
    keymaps = [
      {
        key = " ";
        action = "<nop>";
      }
      {
        mode = "n";
        key = "<leader>t";
        options.silent = true;
        action = "<cmd>Neotree toggle<CR>";
      }
      {
        mode = "n";
        key = "<Tab>";
        options.silent = true;
        action = "<cmd>BufferLineCycleNext<CR>";
      }
      {
        mode = "n";
        key = "<S-Tab>";
        options.silent = true;
        action = "<cmd>BufferLineCyclePrev<CR>";
      }
      {
        mode = "n";
        key = "<leader>g";
        options.silent = true;
        action = "<cmd>Telescope live_grep<CR>";
      }
    ];
  };
}
