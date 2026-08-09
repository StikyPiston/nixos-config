{
  ...
}:

{

  xdg.mimeApps = {
    enable = true;

    defaultApplications = {
      # Web / URLs
      "text/html" = [ "librewolf.desktop" ];
      "application/xhtml+xml" = [ "librewolf.desktop" ];
      "x-scheme-handler/http" = [ "librewolf.desktop" ];
      "x-scheme-handler/https" = [ "librewolf.desktop" ];
      "x-scheme-handler/about" = [ "librewolf.desktop" ];
      "x-scheme-handler/unknown" = [ "librewolf.desktop" ];

      # Documents
      "application/pdf" = [ "org.pwmt.zathura.desktop" ];
      "application/epub+zip" = [ "org.pwmt.zathura.desktop" ];

      # Text / code
      "text/plain" = [ "Helix.desktop" ];
      "text/markdown" = [ "Helix.desktop" ];
      "application/json" = [ "Helix.desktop" ];
      "application/xml" = [ "Helix.desktop" ];
      "text/x-shellscript" = [ "Helix.desktop" ];

      # Images
      "image/png" = [ "org.gnome.Loupe.desktop" ];
      "image/jpeg" = [ "org.gnome.Loupe.desktop" ];
      "image/jpg" = [ "org.gnome.Loupe.desktop" ];
      "image/gif" = [ "org.gnome.Loupe.desktop" ];
      "image/webp" = [ "org.gnome.Loupe.desktop" ];
      "image/bmp" = [ "org.gnome.Loupe.desktop" ];
      "image/tiff" = [ "org.gnome.Loupe.desktop" ];
      "image/svg+xml" = [ "org.gnome.Loupe.desktop" ];

      # Audio
      "audio/mpeg" = [ "vlc.desktop" ];
      "audio/flac" = [ "vlc.desktop" ];
      "audio/ogg" = [ "vlc.desktop" ];
      "audio/wav" = [ "vlc.desktop" ];

      # Video
      "video/mp4" = [ "vlc.desktop" ];
      "video/x-matroska" = [ "vlc.desktop" ];
      "video/webm" = [ "vlc.desktop" ];
      "video/x-msvideo" = [ "vlc.desktop" ];

      # Archives
      "application/zip" = [ "org.gnome.FileRoller.desktop" ];
      "application/x-tar" = [ "org.gnome.FileRoller.desktop" ];
      "application/x-gzip" = [ "org.gnome.FileRoller.desktop" ];
      "application/x-bzip2" = [ "org.gnome.FileRoller.desktop" ];
      "application/x-7z-compressed" = [ "org.gnome.FileRoller.desktop" ];
      "application/x-rar" = [ "org.gnome.FileRoller.desktop" ];

      # File manager
      "inode/directory" = [ "nemo.desktop" ];

      # Email
      "x-scheme-handler/mailto" = [ "aerc.desktop" ];

      # Torrents
      "application/x-bittorrent" = [ "transmission-gtk.desktop" ];

      # Terminal apps
      "application/x-terminal-emulator" = [ "com.mitchellh.ghostty.desktop" ];
    };
  };

}
