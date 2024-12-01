{ pkgs, ... }:
{
  boot.loader.grub.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.grub.configurationLimit = 10;
  boot.kernelPackages = pkgs.linuxPackages_latest;
}
