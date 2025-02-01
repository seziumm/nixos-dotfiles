# { config, ... }:
{

  home.file.".vimrc" = {
    # Overwrite the file
    force = true;
    text = builtins.readFile ./.vimrc;
  };

}
