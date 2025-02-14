{
  boot.loader.grub.enable = true;
  boot.loader.grub.device = "/dev/nvme0n1p1";  # Sostituisci con il tuo disco principale
  boot.loader.grub.configurationLimit = 5; # Numero massimo di installazioni da mantenere
}
