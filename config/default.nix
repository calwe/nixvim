{ pkgs, ... }:
{
  # Import all your configuration modules here
  imports = [
    ./bufferline.nix
  ];

  colorschemes.catppuccin.enable = true;

  plugins = {
    lualine.enable = true;
    neo-tree.enable = true;
    nix.enable = true;
    lsp = {
      enable = true;
      servers = {
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
}
