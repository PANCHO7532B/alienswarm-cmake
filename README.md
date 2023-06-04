# Alien Swarm SDK (CMake edition)
This is the original Alien Swarm SDK direct from Steam, untouched* and ported to the CMake build system for your enjoyment.

## Why is this a thing
The objective is to enable the Alien Swarm SDK to compile on modern toolchains/compilers in Windows, Mac**, and Linux. 

## How to use
At this date (04/Jun/2023) this project is unusable and currently won't compile, when it reaches *some* maturity, instructions for an sample mod would be here in this README section, but for development purposes, and if you want to try anyways, it just boils down to:
1) Clone this repository
2) Open an terminal in the `src` directory
3) Execute `cmake . && make`
4) Compiled binaries will be on the folder `game/mod_swarm` outside the `src` folder
5) If you wanna try and play whatever was compiled as a mod, [install Alien Swarm](https://store.steampowered.com/app/630/Alien_Swarm/) on Steam (it's free!), then just copy the entire `mod_swarm` folder (with the compiled binaries) inside: `(your steam installation directory)/steamapps/sourcemods`, restart steam and execute your mod from your Steam library

## Reporting issues or submitting contributions
All issues and contributions to this project needs to be done on the correspondent [GitLab repository](https://gitlab.com/PANCHO7532/alienswarm-cmake), if you found this on my GitHub account, keep in mind that it's a mirror and thus, issues would be disabled and pull requests made there will be merged at my sole discretion (crediting you in such case), but it'll take longer since I'll be watching this project on GitLab and etc, etc, etc.

Also, I wont promise that I'll keep it always synced so make sure to always clone from GitLab to keep up with all the recent changes.

###### *: By "untouched", it means absolutely no features that adds some sort of new functionality not available in the SDK by default, however, an exception is made if there's some trivial modification that needs to be done in order for it to compile on modern toolchains or make it playable.
###### **: I don't have a Macintosh or any MacOS device but it shouldn't be too hard (for you) to make it work.