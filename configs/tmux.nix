{
  ...
}:

{

  programs.tmux = {
    enable = true;

    terminal = "tmux-256color";
    baseIndex = 1;
    mouse = true;

    extraConfig = ''
      set -g renumber-windows on
      set -g allow-passthrough on

      ### Leader Key
      set -g prefix M-Space
      unbind C-b
      bind M-Space send-prefix

      ### Splits
      bind | split-window -h
      bind - split-window -v
      unbind '"'
      unbind %

      ### Pane Navigation (IJKL)
      bind i select-pane -U
      bind j select-pane -L
      bind k select-pane -D
      bind l select-pane -R

      ### Pane Resizing (Shift+IJKL)
      bind -r I resize-pane -U 5
      bind -r J resize-pane -L 5
      bind -r K resize-pane -D 5
      bind -r L resize-pane -R 5

      ### Tabs
      bind n new-window
      bind w kill-window
      bind Tab next-window
      bind r command-prompt "rename-window %%"

      ### hocusfocus
      bind H new-window "hocusfocus"

      ### Statusline stuff
      set -g status-interval 5

      # Style
      set -g status-style "bg=#1e1e2e,fg=#cba6f7"
      set -g status-justify left

      # Remove default separators
      set -g window-status-separator ""

      # Left side length
      set -g status-left-length 40

      set -g status-left "\
      #[bg=#cba6f7] #[bg=#1e1e2e] \
      #[fg=#cba6f7,bold]#H \
      #[default] "

      set -g window-status-format "\
      #[bg=#1e1e2e,fg=#cba6f7] \
      #[bg=#313244,fg=#cba6f7] #I #W \
      #[bg=#1e1e2e,fg=#313224] "

      set -g window-status-current-format "\
      #[bg=#1e1e2e,fg=#1e1e2e,bold] \
      #[bg=#cba6f7,fg=#1e1e2e,bold] #I #W \
      #[bg=#1e1e2e,fg=#cba6f7] "
      set -g status-right-length 80

      set -g status-right "\
      #[bg=#b4befe, fg=#1e1e2e] #(while true; do hocusfocus currentsession --minimal; sleep 1; done) \
      #[default] \
      #[bg=#cba6f7,fg=#1e1e2e]  #(tmux display-message -p '#{pane_current_command}') \
      #[default] \
      #[bg=#a6e3a1,fg=#1e1e2e]  #S \
      #[default] \
      #[bg=#74c7ec,fg=#1e1e2e]  #(uptime | sed 's/^[^,]*up *//; s/, *[[:digit:]]* user.*//; s/ day.*, */d /; s/ hr\\(s*\\).*/h/; s/ min\\(s*\\).*/m/; s/ sec\\(s*\\).*/s/; s/\\([0-9]\\{1,2\\}\\):\\([0-9]\\{1,2\\}\\)/\\1h \\2m/') \
      #[default]"

      set -g status-style "bg=#{?client_prefix,#f38ba8,#1e1e2e},fg=#cdd6f4"
    '';
  };

}
