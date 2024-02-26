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
}
