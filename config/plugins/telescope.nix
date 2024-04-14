{
  config = {
    plugins.telescope.enable = true;
    keymaps = [
      {
        mode = "n";
        key = "<leader>g";
        options.silent = true;
        action = "<cmd>Telescope live_grep<CR>";
      }
      {
        mode = "n";
        key = "<leader>f";
        options.silent = true;
        action = "<cmd>Telescope find_files<CR>";
      }
    ];
  };
}
