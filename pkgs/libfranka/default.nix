{ stdenv, cmake, poco, eigen}:
stdenv.mkDerivation rec {
  pname = "libfranka";
  version = "0.9.0";

  src = builtins.fetchGit {
    url = "https://github.com/frankaemika/libfranka.git";
    ref = "refs/tags/${version}";
    submodules = true;
  };

  nativeBuildInputs = [ cmake ];

  buildInputs = [poco eigen];

  configurePhase = ''
    cmake . -DCMAKE_BUILD_TYPE=Release -DBUILD_TESTS=OFF -DCMAKE_INSTALL_PREFIX=$out
  '';
}
