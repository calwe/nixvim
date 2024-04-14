{
  config = {
    plugins.bufferline.enable = true;
    keymaps = [
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
