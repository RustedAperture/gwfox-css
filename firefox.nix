{...}: {
  programs.firefox = {
    enable = true;
    profiles = {
      default = {
        id = 0;
        name = "default";
        isDefault = true;
        userChrome = builtins.readFile ./chrome/userChrome.css;
        userContent = builtins.readFile ./chrome/userContent.css;
        settings = {
          "toolkit.legacyUserProfileCustomizations.stylesheets" = true;
          "svg.context-properties.content.enabled" = true;
          "widget.windows.mica" = true;
          "widget.windows.mica.toplevel-backdrop" = 2;
          "sidebar.animation.enabled" = false;
        };
      };
    };
  };
}
