# vfio-pci for qemu guests
{ config, lib, pkgs, ... }:

{
  boot.kernelModules = [
    "vfio"
    "vfio_pci"
    "vfio_iommy_type1" #DOING: fix typo or remove id:1 +bug gh:1
  ];

  boot.kernelParams = [
    "intel_iommu=on"
    "vfio_iommu_type1.allow_unsafe_interrupts=1"
    "kvm.allow_unsave_assigned_interrupts=1"
    "kvm.ignore_msrs=1" # might prevent BSOD
    "i915.enable_hd_vgaarb=1"
    "hugepages=4096" #8gb for VM
  ];

  boot.blacklistedKernelModules = [ "nouveau" "nvidia" ];

  #EVGA GTX 1070 FTW
  boot.extraModprobeConfig = "options vfio-pci ids=10de:1b81,10de:10f0";
}
