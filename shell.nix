{ pkgs ? import <nixpkgs> {} }:
let 
    glualint = pkgs.fetchzip {
        url = "https://github.com/FPtje/GLuaFixer/releases/download/1.26.0/glualint-1.26.0-x86_64-linux.zip";
        sha256 = "sha256-ujT2uKduohMHb7TWJJTo9CYuikRNiTS3OGut4Zu+MZw=";
    };
in pkgs.mkShell {
    name = "glualint-env";
    shellHook = ''
        PATH=${glualint}:$PATH
    '';
}