{
  config = {
    globals.mapleader = " ";
    keymaps = [
      {
        key = " ";
        action = "<nop>";
      }
      {
        mode = "n";
        key = "<leader>h";
        options.silent = true;
        action = "<cmd>wincmd h<CR>";
      }
      {
        mode = "n";
        key = "<leader>j";
        options.silent = true;
        action = "<cmd>wincmd j<CR>";
      }
      {
        mode = "n";
        key = "<leader>k";
        options.silent = true;
        action = "<cmd>wincmd k<CR>";
      }
      {
        mode = "n";
        key = "<leader>l";
        options.silent = true;
        action = "<cmd>wincmd l<CR>";
      }
    ];
  };
}
