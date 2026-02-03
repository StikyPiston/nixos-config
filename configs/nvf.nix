{
  config,
  pkgs,
  inputs,
  ...
}:

{
  vim = {

    theme.enable = true;
    theme.name = "catppuccin";
    theme.style = "mocha";
    theme.transparent = true;

    lsp.enable = true;

    globals = {
      mapleader = " ";
    };

    languages = {
      enableTreesitter = true;
      lua.enable = true;
      ruby.enable = true;
      go.enable = true;
      markdown.enable = true;
      nix.enable = true;
      typst.enable = true;
    };

    statusline.lualine.enable = true;
    telescope.enable = true;
    autocomplete.nvim-cmp.enable = true;
    lazy.enable = true;

    keymaps = [
      # Disable arrow keys
      {
        mode = [
          "n"
          "v"
          "o"
        ];
        key = "<Up>";
        action = "<Nop>";
      }
      {
        mode = [
          "n"
          "v"
          "o"
        ];
        key = "<Down>";
        action = "<Nop>";
      }
      {
        mode = [
          "n"
          "v"
          "o"
        ];
        key = "<Left>";
        action = "<Nop>";
      }
      {
        mode = [
          "n"
          "v"
          "o"
        ];
        key = "<Right>";
        action = "<Nop>";
      }

      # Normal-mode v → visual block
      {
        mode = "n";
        key = "v";
        action = "<C-v>";
      }

      # Disable hjkli
      {
        mode = [
          "n"
          "v"
          "o"
        ];
        key = "h";
        action = "<Nop>";
      }
      {
        mode = [
          "n"
          "v"
          "o"
        ];
        key = "j";
        action = "<Nop>";
      }
      {
        mode = [
          "n"
          "v"
          "o"
        ];
        key = "k";
        action = "<Nop>";
      }
      {
        mode = [
          "n"
          "v"
          "o"
        ];
        key = "l";
        action = "<Nop>";
      }
      {
        mode = [
          "n"
          "v"
          "o"
        ];
        key = "i";
        action = "<Nop>";
      }

      # IJKL movement
      {
        mode = [
          "n"
          "v"
          "o"
        ];
        key = "i";
        action = "k";
      }
      {
        mode = [
          "n"
          "v"
          "o"
        ];
        key = "k";
        action = "j";
      }
      {
        mode = [
          "n"
          "v"
          "o"
        ];
        key = "j";
        action = "h";
      }
      {
        mode = [
          "n"
          "v"
          "o"
        ];
        key = "l";
        action = "l";
      }

      # Core bindings
      {
        mode = "n";
        key = ";";
        action = "i";
      }
      {
        mode = "n";
        key = "tT";
        action = ":Oil<CR>";
      }

      {
        mode = "n";
        key = "fF";
        action = "require('telescope.builtin').find_files";
        lua = true;
      }
      {
        mode = "n";
        key = "fG";
        action = "require('telescope.builtin').live_grep";
        lua = true;
      }

      {
        mode = "n";
        key = "pP";
        action = ":RenderMarkdown toggle<CR>";
      }

      {
        mode = "n";
        key = "hH";
        action = ":tabNext<CR>";
      }
      {
        mode = "n";
        key = "hE";
        action = ":tabnew<CR>";
      }
      {
        mode = "n";
        key = "hK";
        action = "vim.cmd.split";
        lua = true;
      }
      {
        mode = "n";
        key = "hL";
        action = "vim.cmd.vsplit";
        lua = true;
      }

      # Window navigation
      {
        mode = "n";
        key = "<C-Up>";
        action = "<C-w>k";
      }
      {
        mode = "n";
        key = "<C-Down>";
        action = "<C-w>j";
      }
      {
        mode = "n";
        key = "<C-Left>";
        action = "<C-w>h";
      }
      {
        mode = "n";
        key = "<C-Right>";
        action = "<C-w>l";
      }

      # Plugins & utilities
      {
        mode = "n";
        key = "<C-i>";
        action = ":FzfNerdfont<CR>";
      }
      {
        mode = "n";
        key = "<leader>ow";
        action = "require('neowiki').open_wiki";
        lua = true;
      }
      {
        mode = "n";
        key = "<leader>oW";
        action = "require('neowiki').open_wiki_floating";
        lua = true;
      }

      {
        mode = "n";
        key = "<leader>tp";
        action = ":Triforce profile<CR>";
      }

      {
        mode = "n";
        key = "<leader>lg";
        action = "Snacks.lazygit";
        lua = true;
      }

      {
        mode = "n";
        key = "<leader>w";
        action = ":w<CR>";
      }
      {
        mode = "n";
        key = "<leader>q";
        action = ":q<CR>";
      }
      {
        mode = "n";
        key = "<leader>so";
        action = ":so<CR>";
      }

      {
        mode = "n";
        key = "<leader>lf";
        action = "vim.lsp.buf.format";
        lua = true;
      }

      {
        mode = "n";
        key = "<leader>mo";
        action = ":MarkmapOpen";
      }
      {
        mode = "n";
        key = "<leader>ms";
        action = ":MarkmapSave";
      }

      {
        mode = "n";
        key = "<leader>r";
        action = ":%s/";
      }

      {
        mode = "n";
        key = "<leader>sp";
        action = ":StudytoolsPomodoro 25 5<CR>";
      }
      {
        mode = "n";
        key = "<leader>sP";
        action = ":StudytoolsPomodoroStatus<CR>";
      }
      {
        mode = "n";
        key = "<leader>sb";
        action = ":StudytoolsBlurt<CR>";
      }

      # Multicursor
      {
        mode = "n";
        key = "<A-Up>";
        action = "require('multicursor-nvim').lineAddCursor(-1)";
        lua = true;
      }
      {
        mode = "n";
        key = "<A-Down>";
        action = "require('multicursor-nvim').lineAddCursor(1)";
        lua = true;
      }
      {
        mode = "n";
        key = ",";
        action = "require('multicursor-nvim').clearCursors";
        lua = true;
      }

      # Misc
      {
        mode = "n";
        key = "<leader>cs";
        action = ":Cheaty<CR>";
      }
      {
        mode = "n";
        key = "<leader>lz";
        action = ":Lazy<CR>";
      }
      {
        mode = "n";
        key = "<leader>ld";
        action = ":Trouble diagnostics<CR>";
      }

      {
        mode = "n";
        key = "<leader>ot";
        action = "Snacks.terminal.open";
        lua = true;
      }
      {
        mode = "n";
        key = "<leader>os";
        action = "Snacks.scratch";
        lua = true;
      }
    ];

  };

}
