{ pkgs, ... }:
{
  programs.bat = {
    enable = true;
    config = {
      pager = "less -FR";
      theme = "ayu-dark";
    };
    extraPackages = with pkgs.bat-extras; [
      batman
      batpipe
      batgrep
      # batdiff
    ];
  };
}
