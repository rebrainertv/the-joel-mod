# The Joel Mod for Friday Night Funkin
He started as an app to bring comfort. Now, Joel the Birb is back to bring funk! The Joel Mod for Friday Night Funkin will take you on a journey through the origins of our friend Joel the Birb, beginning from when he met a small blue-haired individual and his girlfriend who were out for a picnic. Be careful, though, because Joel isn't used to the idea of being beaten...

This mod is based of the Whitty mod and the Tricky mod, huge thanks to them!

# Features
- Kade input
- 4+ custom songs
- Remixes for most default FNF songs
- Funky charting
- Custom feather notes that do different things depending on the mood of your opponent
- Epic story dialogue
- A few new mechanics, including changing dialogue/music/effects/secrets depending on the difficulty you select
- A funky new title screen
- A really really really hard third song. Like good luck beating it.

Note: This mod *is* canon to the lore of the Joel app when played on Hard difficulty.

The original app, developed by the Joel team, is available on https://joel-online.web.app/

# Developers
### Mod Devs
- ReBrainerTV ([YouTube](https://www.youtube.com/channel/UCnwCOinP89LbzbhdFYyU7jg)) 
- Galactic Banana ([Soundcloud](https://soundcloud.com/galactic-banana-893039488), [Spotify](https://open.spotify.com/artist/1V2VWyMT1A0DVWyYNgWs5R?si=KFL_PbllTMegj2nB8gxKZA)) 
- ErikDaBaconator (Discord: epicmemer2345#1249)
- CanadianWaluigi ([YouTube](https://www.youtube.com/channel/UCLFM8s1t6q_Da_OdSpERQog))

### Friday Night Funkin
- [ninjamuffin99](https://twitter.com/ninja_muffin99) - Programmer
- [PhantomArcade3K](https://twitter.com/phantomarcade3k) and [Evilsk8r](https://twitter.com/evilsk8r) - Art
- [Kawaisprite](https://twitter.com/kawaisprite) - Musician

# Build Instructions from ninjamuffin

### Installing the Required Programs

First, you need to install Haxe and HaxeFlixel. I'm too lazy to write and keep updated with that setup (which is pretty simple). 
1. [Install Haxe 4.1.5](https://haxe.org/download/version/4.1.5/) (Download 4.1.5 instead of 4.2.0 because 4.2.0 is broken and is not working with gits properly...)
2. [Install HaxeFlixel](https://haxeflixel.com/documentation/install-haxeflixel/) after downloading Haxe

Other installations you'd need are the additional libraries, a fully updated list will be in `Project.xml` in the project root. Currently, these are all of the things you need to install:
```
flixel
flixel-addons
flixel-ui
hscript
newgrounds
```
So for each of those type `haxelib install [library]` so shit like `haxelib install newgrounds`

You'll also need to install a couple things that involve Gits. To do this, you need to do a few things first.
1. Download [git-scm](https://git-scm.com/downloads). Works for Windows, Mac, and Linux, just select your build.
2. Follow instructions to install the application properly.
3. Run `haxelib git polymod https://github.com/larsiusprime/polymod.git` to install Polymod.
4. Run `haxelib git discord_rpc https://github.com/Aidan63/linc_discord-rpc` to install Discord RPC.

You should have everything ready for compiling the game! Follow the guide below to continue!

At the moment, you can optionally fix the transition bug in songs with zoomed-out cameras.
- Run `haxelib git flixel-addons https://github.com/HaxeFlixel/flixel-addons` in the terminal/command-prompt.

### Ignored files

I gitignore the API keys for the game so that no one can nab them and post fake high scores on the leaderboards. But because of that the game
doesn't compile without it.

Just make a file in `/source` and call it `APIStuff.hx`, and copy & paste this into it

```haxe
package;

class APIStuff
{
	public static var API:String = "";
	public static var EncKey:String = "";
}

```

and you should be good to go there.

### Compiling game
NOTE: If you see any messages relating to deprecated packages, ignore them. They're just warnings that don't affect compiling

Once you have all those installed, it's pretty easy to compile the game. You just need to run `lime test html5 -debug` in the root of the project to build and run the HTML5 version. (command prompt navigation guide can be found here: [https://ninjamuffin99.newgrounds.com/news/post/1090480](https://ninjamuffin99.newgrounds.com/news/post/1090480))
To run it from your desktop (Windows, Mac, Linux) it can be a bit more involved. For Linux, you only need to open a terminal in the project directory and run `lime test linux -debug` and then run the executable file in export/release/linux/bin. For Windows, you need to install Visual Studio Community 2019. While installing VSC, don't click on any of the options to install workloads. Instead, go to the individual components tab and choose the following:
* MSVC v142 - VS 2019 C++ x64/x86 build tools
* Windows SDK (10.0.17763.0)

Once that is done you can open up a command line in the project's directory and run `lime test windows -debug`. Once that command finishes (it takes forever even on a higher end PC), you can run FNF from the .exe file under export\release\windows\bin
As for Mac, 'lime test mac -debug' should work, if not the internet surely has a guide on how to compile Haxe stuff for Mac.

### Additional guides

- [Command line basics](https://ninjamuffin99.newgrounds.com/news/post/1090480)
