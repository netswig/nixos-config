{ config, pkgs, ... }:
{
# Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.netswig = {
    isNormalUser = true;
    description = "netswig";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      pkgs.firefox
      pkgs.thunderbird
      pkgs.git
      pkgs.nmap
    ];
  };

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };
}
