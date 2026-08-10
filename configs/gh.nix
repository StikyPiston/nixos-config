{
  pkgs,
  ...
}:

{

  programs.gh = {
    enable = true;
    extensions = with pkgs; [
      gh-dash
    ];
  };

  programs.gh-dash = {
    enable = true;
    settings = {
      prSections = [
        {
          title = "Open Pull Requests";
          filters = "is:open is:pr org:indium114";
        }
        {
          title = "My Pull Requests";
          filters = "is:open is:pr author:@me";
        }
        {
          title = "Needs My Review";
          filters = "is:open is:pr review-requested:@me";
        }
        {
          title = "Involved";
          filters = "is:open is:pr involves:@me -author:@me";
        }
      ];
    };
  };

}
