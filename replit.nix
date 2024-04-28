{ pkgs }: {
  deps = [
    pkgs.miniserve
    pkgs.hugo
    pkgs.go
    pkgs.git
    pkgs.glab
  ];
}