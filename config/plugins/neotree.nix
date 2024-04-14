{
  config = {
    plugins.neo-tree.enable = true;
    keymaps = [
      {
        mode = "n";
        key = "<leader>t";
        options.silent = true;
        action = "<cmd>Neotree toggle<CR>";
      }
    ];
  };
}
