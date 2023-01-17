{
  description = "Kotlin development template using gradle";

  inputs = {
    utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, utils, ... }:

    utils.lib.eachDefaultSystem (system:
      let
        javaVersion = 19;

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

        pkgs = import nixpkgs { inherit overlays system; };
      in
      rec
      {
        # # Executed by `nix build`
        # packages.default = pkgs.stdenv.mkDerivation {
        #   pname = "template";
        #   version = "0.1.0";
        #   src = ./.;

        #   nativeBuildInputs = with pkgs; [
        #     kotlin
        #     gradle
        #   ];

        #   buildPhase = ''
        #     export GRADLE_USER_HOME=$(mktemp -d)
        #     export JAVA_HOME=${pkgs.jdk.home}

        #     $src/gradlew build --offline --no-daemon --no-build-cache --no-watch-fs \
        #       --info --full-stacktrace --warning-mode=all
        #   '';

        # };

        # # Executed by `nix run`
        # apps.default = utils.lib.mkApp { drv = packages.default; };

        # Used by `nix develop`
        devShells.default = pkgs.mkShell {
          buildInputs = with pkgs; [ kotlin gradle ];

          shellHook = ''
            ${pkgs.kotlin}/bin/kotlin -version
          '';

          JAVA_HOME = pkgs.jdk.home;
        };
      });
}
