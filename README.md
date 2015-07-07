## Raspberry Pi Media Center

This is a set of [Ansible](http://www.ansible.com/) scripts to install a _minimal_
[Raspberry Pi](https://www.raspberrypi.org/) Media Center.  This is a lightweight
alternative to complicated projects such as
[RetroPie](http://blog.petrockblock.com/retropie/), [OpenElec](http://openelec.tv/),
and [OSMC](http://osmc.tv/) built on top of [Raspbian](https://www.raspbian.org/).

**This is NOT a kitchen sink project!**

The primary goal of this project is to create a simple, focused, and highly reliable
media center, not a comprehensive one.

These scripts install a limited set of applications in standard locations with
minimal modifications to the underlying operating system.  These applications are
curated to work simply and reliably with no surprising changes to your system.

### Applications

Media center functionality is provided by installing and configuring the following
applications:

* [EmulationStation](http://emulationstation.org/) is used for the user interface
* [libretro](http://www.libretro.com/) provides the foundation for the included emulators
* [Genesis Plus GX](https://github.com/ekeeke/Genesis-Plus-GX) is the included Sega Genesis emulator
* [Snes9x Next](https://github.com/libretro/snes9x-next) is the included Super Nintendo emulator
* [omxplayer](https://github.com/popcornmix/omxplayer) is used for video playback
* The media center is pre-configured to support Sony Playstation 3 controllers by default
* [Plex Media Server](https://plex.tv/) is optionally installed to allow sharing
  videos stored on your raspberry pi with devices connected to the same network

### Installation

Clone this repo on a machine (not the Raspberry Pi!) that has Ansible installed and
then update the `raspberrypi-mediacenter/hosts` file to point to IP address of your
Raspberry Pi.  You should already have an up-to-date
[Raspbian Distribution](https://www.raspberrypi.org/documentation/installation/installing-images/)
installed on your Raspberry Pi.

```bash
~/$ git clone https://github.com/bmurphy1976/raspberrypi-mediacenter
~/$ cd raspberrypi-mediacenter
~/raspberrypi-mediacenter/$ vi hosts
~/raspberrypi-mediacenter/$ ansible-playbook -i hosts -s site.yml --ask-pass
```

Once installation has completed (it will about an hour), you can run the the media
center by logging in as the `pi` user and running `emulationstation`.  To add media to
your device, put them in the following locations:

* Movies: `/home/pi/movies`
* Sega Genesis Roms: `/home/pi/roms/genesis`
* Super Nintendo Roms: `/home/pi/roms/movies`

### TODO

These are features planned for the short-term future:

* disable terminal blanking
* automate rpi-update
* install default emulationstation theme
* add nes emulator
* add msx emulator
* add mame emulator
* optionally support auto start
* optionally install plex media server

### License

This is free and unencumbered software released into the public domain.

Anyone is free to copy, modify, publish, use, compile, sell, or
distribute this software, either in source code form or as a compiled
binary, for any purpose, commercial or non-commercial, and by any
means.

In jurisdictions that recognize copyright laws, the author or authors
of this software dedicate any and all copyright interest in the
software to the public domain. We make this dedication for the benefit
of the public at large and to the detriment of our heirs and
successors. We intend this dedication to be an overt act of
relinquishment in perpetuity of all present and future rights to this
software under copyright law.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.

For more information, please refer to <http://unlicense.org>
