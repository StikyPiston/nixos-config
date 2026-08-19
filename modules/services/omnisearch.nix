{
  ...
}:

{

  services.omnisearch = {
    enable = true;
    settings = {
      server = {
        host = "0.0.0.0";
        port = 5000;
      };
      engines = {
        engines = "*,-yahoo,-yacy";
      };
    };
  };

}
