# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, ... }:

{
  imports =
    [ <nixpkgs/nixos/modules/installer/scan/not-detected.nix>
    ];

  boot.initrd.availableKernelModules = [ "xhci_pci" "nvme" "rtsx_pci_sdmmc" ];
  boot.kernelModules = [ "kvm-intel" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    { device = "rpool/nixos";
      fsType = "zfs";
    };

  fileSystems."/nix" =
    { device = "rpool/nixos/nix";
      fsType = "zfs";
    };

  fileSystems."/home" =
    { device = "rpool/home";
      fsType = "zfs";
    };

  fileSystems."/home/svein" =
    { device = "rpool/home/svein";
      fsType = "zfs";
    };

  fileSystems."/boot" =
    { device = "/dev/nvme0n1p5";
      fsType = "vfat";
    };

  fileSystems."/home/svein/Anime" =
    { device = "rpool/home/svein/Anime";
      fsType = "zfs";
    };

  fileSystems."/home/svein/Music" =
    { device = "rpool/home/svein/Music";
      fsType = "zfs";
    };

  nix.maxJobs = lib.mkDefault 8;
}
