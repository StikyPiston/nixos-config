{
  ...
}:

{

  programs.gh-dash = {
    enable = true;
    settings = {
      prSections = [
        {
          title = "Open Pull Requests";
          filters = "is:open is:pr org:StikyPiston";
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
