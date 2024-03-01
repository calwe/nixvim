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
      lualine.enable = true;
      neo-tree.enable = true;
      nix.enable = true;
      lsp = {
        enable = true;
        servers = {
          rust-analyzer.enable = true;
        };
      };

      nvim-cmp = {
        enable = true;
        autoEnableSources = true;
        sources = [
          { name = "nvim_lsp"; }
          { name = "path"; }
          { name = "nuffer"; }
        ];

        mapping = {
          "<CR>" = "cmp.mapping.confirm({ select = true })";
          "<Tab>" = {
            action = ''
              function(fallback)
                if cmp.visible() then
                  cmp.select_next_item()
                elseif luasnip.expandable() then
                  luasnip.expand()
                elseif luasnip.expand_or_jumpable() then
                  luasnip.expand_or_jump()
                elseif check_backspace() then
                  fallback()
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
    ];
  };
}
