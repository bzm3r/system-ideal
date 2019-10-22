# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, ... }:

{
  imports =
    [ <nixpkgs/nixos/modules/installer/scan/not-detected.nix>
    ];

  boot.initrd.availableKernelModules = [ "xhci_pci" "ehci_pci" "ahci" "usb_storage" "usbhid" "uas" "sd_mod" "sr_mod" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ "kvm-intel" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    { device = "tank/root";
      fsType = "zfs";
    };

  fileSystems."/boot" =
    { device = "/dev/disk/by-uuid/1333-7E5C";
      fsType = "vfat";
    };

  fileSystems."/nix" =
    { device = "tank/root/nix";
      fsType = "zfs";
    };

  fileSystems."/home" =
    { device = "tank/root/data/home";
      fsType = "zfs";
    };

  fileSystems."/var/lib" =
    { device = "tank/root/data/varlib";
      fsType = "zfs";
    };

  #fileSystems."/home/infinisil/music" =
  #  { device = "tank/root/music";
  #    fsType = "zfs";
  #  };

  fileSystems."/betty" =
    { device = "main/betty";
      fsType = "zfs";
    };

  fileSystems."/home/infinisil/media" =
    { device = "tank/root/data/media";
      fsType = "zfs";
    };

  swapDevices =
    [ { device = "/dev/disk/by-uuid/6a18286a-8e58-4edf-bf3b-3ab8ebb29211"; }
    ];

  nix.maxJobs = lib.mkDefault 8;
  powerManagement.cpuFreqGovernor = lib.mkDefault "powersave";
}
