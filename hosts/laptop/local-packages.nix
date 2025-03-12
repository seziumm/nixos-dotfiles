{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    netbeans
  ];
}
