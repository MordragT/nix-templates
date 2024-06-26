{
  description = "Kotlin development template using gradle";

  inputs = {
    utils.url = "github:numtide/flake-utils";
  };

  outputs = {
    self,
    nixpkgs,
    utils,
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

      pkgs = import nixpkgs {
        inherit overlays system;
        config = {
          android_sdk.accept_license = true;
        };
      };
    in {
      # Used by `nix develop`
      devShells.default = let
        buildToolsVersion = "34.0.0";
        platformVersion = "34";

        android-composition = pkgs.androidenv.composeAndroidPackages {
          buildToolsVersions = [buildToolsVersion];
          platformVersions = [platformVersion];
        };
        android-sdk = android-composition.androidsdk;
        # emulator = pkgs.androidenv.emulateApp {
        #   inherit platformVersion;
        #   name = "emulator";
        #   abiVersion = "x86";
        #   #systemImageType = "google_apis_playstore";
        #   systemImageType = "default";
        #   app = ./app.apk;
        #   package = "MyApp";
        #   activity = "MainActivity";
        # };
      in
        pkgs.mkShell rec {
          buildInputs = with pkgs; [
            kotlin
            android-tools
            android-sdk
            #emulator
          ];

          shellHook = ''
            ${pkgs.kotlin}/bin/kotlin -version
          '';

          JAVA_HOME = pkgs.jdk.home;
          ANDROID_SDK_ROOT = "${android-sdk}/libexec/android-sdk";
          ANDROID_NDK_ROOT = "${ANDROID_SDK_ROOT}/ndk-bundle";
          ANDROID_HOME = ANDROID_SDK_ROOT;
          GRADLE_OPTS = "-Dorg.gradle.project.android.aapt2FromMavenOverride=${ANDROID_SDK_ROOT}/build-tools/${buildToolsVersion}/aapt2";
        };
    });
}
