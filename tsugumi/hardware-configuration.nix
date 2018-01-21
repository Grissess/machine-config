# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, ... }:

{
  imports =
    [ <nixpkgs/nixos/modules/installer/scan/not-detected.nix>
    ];

  boot.initrd.availableKernelModules = [ "ehci_pci" "ahci" "mvsas" "usb_storage" "usbhid" "sd_mod" ];
  boot.kernelModules = [ "kvm-intel" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    { device = "stash/nixos";
      fsType = "zfs";
    };

  fileSystems."/nix" =
    { device = "stash/nixos/nix";
      fsType = "zfs";
    };

  fileSystems."/var" =
    { device = "stash/nixos/var";
      fsType = "zfs";
    };

  fileSystems."/home" =
    { device = "stash/home";
      fsType = "zfs";
    };

  fileSystems."/home/aquagon" =
    { device = "stash/home/aquagon";
      fsType = "zfs";
    };

  fileSystems."/home/svein" =
    { device = "stash/svein";
      fsType = "zfs";
    };

  fileSystems."/home/svein/Documents" =
    { device = "stash/svein/Documents";
      fsType = "zfs";
    };

  fileSystems."/home/svein/backups" =
    { device = "stash/svein/backups";
      fsType = "zfs";
    };

  fileSystems."/home/svein/web" =
    { device = "stash/svein/web";
      fsType = "zfs";
    };

  fileSystems."/home/svein/Anime" =
    { device = "stash/svein/Anime";
      fsType = "zfs";
    };

  fileSystems."/home/svein/Games" =
    { device = "stash/svein/Games";
      fsType = "zfs";
    };

  fileSystems."/home/svein/dcc" =
    { device = "stash/svein/dcc";
      fsType = "zfs";
    };

  fileSystems."/home/svein/secure-encfs" =
    { device = "stash/svein/secure-encfs";
      fsType = "zfs";
    };

  fileSystems."/boot" =
    { device = "/dev/disk/by-uuid/F574-FE8E";
      fsType = "vfat";
    };

  swapDevices = [ ];

  nix.maxJobs = lib.mkDefault 8;
}
