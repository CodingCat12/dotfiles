{
  boot.loader.grub = {
    enable = true;
    devices = ["nodev"];
    efiSupport = true;
  };

  boot.loader.efi.canTouchEfiVariables = true;

  catppuccin.grub.enable = true;
}
