{ pkgs, ... }:
{
  imports = [
    ./lsp.nix
    ./cmp.nix
    ./bufferline.nix
    ./telescope.nix
    ./neotree.nix
    ./neogit.nix
  ];

  config = {
    plugins = {
      luasnip.enable = true;
      treesitter.enable = true;
      lualine.enable = true;
      nix.enable = true;
    };

    extraPlugins = with pkgs.vimPlugins; [
      vim-just
      neoconf-nvim
    ];
  };
}
