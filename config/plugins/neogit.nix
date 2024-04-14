{
  config = {
    plugins.neogit.enable = true;
    keymaps = [
      {
        mode = "n";
        key = "<leader>ng";
        options.silent = true;
        action = "<cmd>Neogit<CR>";
      }
    ];
  };
}
