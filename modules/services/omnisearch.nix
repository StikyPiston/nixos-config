{
  inputs,
  ...
}:

{

  containers.omnisearch = {
    autoStart = true;
    privateNetwork = false;

    specialArgs = {
      inherit inputs;
    };

    config =
      {
        inputs,
        ...
      }:
      {
        imports = [
          inputs.omnisearch.nixosModules.default
        ];

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

        system.stateVersion = "26.11";
      };
  };

}
