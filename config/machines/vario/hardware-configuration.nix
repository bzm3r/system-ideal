# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, ... }:

{
  imports =
    [ <nixpkgs/nixos/modules/installer/scan/not-detected.nix>
    ];

  boot.initrd.availableKernelModules = [ "xhci_pci" "ehci_pci" "ahci" "nvme" "usbhid" "usb_storage" "sd_mod" "sr_mod" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ "kvm-intel" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    { device = "tank2/root";
      fsType = "zfs";
    };

  fileSystems."/boot" =
    { device = "/dev/disk/by-uuid/0E52-3718";
      fsType = "vfat";
    };

  fileSystems."/nix" =
    { device = "tank2/root/nix";
      fsType = "zfs";
    };

  fileSystems."/home" =
    { device = "tank2/root/data/home";
      fsType = "zfs";
    };

  fileSystems."/var/lib" =
    { device = "tank2/root/data/varlib";
      fsType = "zfs";
    };

  fileSystems."/var/lib/docker" =
    { device = "tank2/root/docker";
      fsType = "zfs";
      options = [ "nofail" ];
    };

  fileSystems."/home/infinisil/music" =
    { device = "tank2/root/data/music";
      fsType = "zfs";
      options = [ "nofail" ];
    };

  fileSystems."/betty" =
    { device = "main/betty";
      fsType = "zfs";
      options = [ "nofail" ];
    };

  fileSystems."/home/infinisil/media" =
    { device = "tank2/root/data/media";
      fsType = "zfs";
      options = [ "nofail" ];
    };

  fileSystems."/home/infinisil/torrent" =
    { device = "main/current-torrents/tank/root/torrent/current";
      fsType = "zfs";
      options = [ "nofail" "ro" ];
    };

  fileSystems."/home/infinisil/noback" =
    { device = "tank2/root/noback";
      fsType = "zfs";
      options = [ "nofail" ];
    };

  swapDevices =
    [ { device = "/dev/disk/by-uuid/25b8d3ca-fd22-4099-9c31-2d24f3ccc6e6"; }
    ];

  nix.settings.max-jobs = lib.mkDefault 8;
  powerManagement.cpuFreqGovernor = lib.mkDefault "powersave";
}
