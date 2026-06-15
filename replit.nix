{pkgs}: {
  deps = [
    pkgs.nodejs_20
    pkgs.gnumake
    pkgs.gcc
    pkgs.pkg-config
    pkgs.vips
    pkgs.ffmpeg
    pkgs.python3
  ];
}
