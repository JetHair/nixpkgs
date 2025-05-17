{ lib
, stdenv
, fetchFromGitHub
, cmake
, ansilove
,
}:

stdenv.mkDerivation rec {
  pname = "ansilove";
  version = "4.2.1";

  src = fetchFromGitHub {
    owner = "ansilove";
    repo = "ansilove";
    rev = version;
    hash = "sha256-13v2NLVJt11muwocBiQYz/rxQkte/W6LXwB/H/E9Nvk=";
  };

  nativeBuildInputs = [
    cmake
  ];

  buildInputs = [ ansilove ];

  meta = {
    description = "ANSI and ASCII art to PNG converter in C";
    homepage = "https://github.com/ansilove/ansilove";
    changelog = "https://github.com/ansilove/ansilove/blob/${src.rev}/ChangeLog";
    license = lib.licenses.bsd2;
    maintainers = with lib.maintainers; [ jethair ];
    mainProgram = "ansilove";
    platforms = lib.platforms.all;
  };
}
