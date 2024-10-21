# This is your home-manager configuration file
# Use this to configure your home environment (it replaces ~/.config/nixpkgs/home.nix)
{
    inputs,
    outputs,
    lib,
    config,
    pkgs,
    ...
}: {
    # You can import other home-manager modules here
    imports = [
        # If you want to use modules your own flake exports (from modules/home-manager):
        # outputs.homeManagerModules.example

        # Or modules exported from other flakes (such as nix-colors):
        # inputs.nix-colors.homeManagerModules.default

        # You can also split up your configuration and import pieces of it here:
        ./desktop
        ./gui
        ./services
        ./terminal
        ./stylix.nix

        ../scripts
    ];

    nixpkgs = {
        # You can add overlays here
        overlays = [
            # Add overlays your own flake exports (from overlays and pkgs dir):
            outputs.overlays.additions
            outputs.overlays.modifications

            # You can also add overlays exported from other flakes:
            # neovim-nightly-overlay.overlays.default

            # Or define it inline, for example:
            # (final: prev: {
            #     hi = final.hello.overrideAttrs (oldAttrs: {
            #         patches = [ ./change-hello-to-hi.patch ];
            #     });
            # })
        ];
        # Configure your nixpkgs instance
        config = {
            # Disable if you don't want unfree packages
            allowUnfree = true;
        };
    };

    home = {
        username = "vortriz";
        homeDirectory = "/home/vortriz";
    };

    # Enable home-manager
    programs.home-manager.enable = true;

    systemd.user = {
        # Nicely reload system units when changing configs
        startServices = "sd-switch";

        # Fix for flameshot
        targets.tray = {
            Unit = {
                Description = "Home Manager System Tray";
                Requires = [ "graphical-session-pre.target" ];
            };
        };
    };

    # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
    home.stateVersion = "23.11";
}
