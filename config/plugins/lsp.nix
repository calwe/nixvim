{
  config.plugins.lsp = {
    preConfig = "require('neoconf').setup()";
    enable = true;
    servers = {
      rust-analyzer = {
        enable = true;
        installCargo = false;
        installRustc = false;
      };
    };
  };
}
