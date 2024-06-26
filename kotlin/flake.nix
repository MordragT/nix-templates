{
  description = "Kotlin development template using gradle";

  inputs = {
    utils.url = "github:numtide/flake-utils";
    gradle2nix = {
      url = "github:tadfisher/gradle2nix/v2";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    utils,
    gradle2nix,
    ...
  }:
    utils.lib.eachDefaultSystem (system: let
      javaVersion = 21;

      overlays = [
        (self: super: rec {
          jdk = pkgs."jdk${toString javaVersion}";
          gradle = super.gradle.override {
            java = jdk;
          };
          kotlin = super.kotlin.override {
            jre = jdk;
          };
        })
      ];

      pkgs = import nixpkgs {inherit overlays system;};
    in {
      # Executed by `nix build`
      # packages.default = gradle2nix.builders."${system}".buildGradlePackage {
      #   pname = "my-package";
      #   version = "1.0";

      #   src = ./.;
      #   lockFile = ./gradle.lock;

      #   gradleInstallFlags = ["installDist"];
      #   gradlePackage = pkgs.gradle;

      #   buildJdk = pkgs.jdk;
      # };

      # # Executed by `nix run`
      # apps.default = utils.lib.mkApp {drv = self.packages.default;};

      # Used by `nix develop`
      devShells.default = pkgs.mkShell {
        buildInputs = with pkgs; [
          kotlin
          gradle
          gradle2nix.packages."${system}".default
        ];

        shellHook = ''
          ${pkgs.kotlin}/bin/kotlin -version
        '';

        JAVA_HOME = pkgs.jdk.home;
      };
    });
}
