(NB: this project is kind of shelved for a bit. I started [a branch](https://github.com/sjml/dungen/tree/agent-work) to work on moving stuff over to agents so the various processes could interact, and the preliminary work is in there. I got distracted along the way and made it run on iOS and WebGL too. 😂 Agent stuff is almost done, and once it is, adding in the Age of Civilization shouldn't be too hard. Alas, that point of the semester has been reached where side projects get put away to wither, and odds are by the time I have free time again, I'll have another idea burning a hole in my text editor. It turns out, the real DunGen was the friends we made along the way.)

<p align="center"><img src="https://github.com/sjml/dungen/raw/main/art/DunGenLogo.png"></p>

# DunGen

[![Build Status](https://optimistpanda.visualstudio.com/DunGen/_apis/build/status/sjml.dungen2?branchName=main)](https://optimistpanda.visualstudio.com/DunGen/_build/latest?definitionId=1&branchName=main)

It seems like every summer I fall down a rabbit hole making some procedural generator system. This one is from summer of 2019, when I was otherwise busy doing refugee aid work and studying macroeconomics in South Africa. It was a welcome respite from the stress of the days.

DunGen is a narrative-driven procedural dungeon generator/simulator, inspired by the pen-and-paper game ["How to Host a Dungeon"](https://store.tonydowler.com/listing/591021523/how-to-host-a-dungeon-pdf) by Tony Dowler. I first started work on a version of this, with Tony's permission, about 7 years ago, but got caught up with life and some technical challenges and it withered. Recently, after a caving trip, I was inspired to start it up again. Before I used a somewhat heavy C++ prototyping framework; this time I rebuilt it from scratch using just plain C. 

Currently it simulates all of the Primordial Age and the Great Disaster. Implementing agents and civilizations is a bit trickier, and honestly, I might wander away as the semester gets going. But this was fun to make. 

It's more of a programmer's toy than a friendly simulation presentation, so the handles for playing with it can be a little archaic.

I've structured it something like a computer operating on the hex grid like a set of working memory cells. A sort of high-level virtual machine (HLVM), if you will. Look into the [simulation folder](https://github.com/sjml/dungen/tree/main/scripts/simulation) to see how the little programs (written in [Lua](https://www.lua.org/)) that manipulate that memory work. They get called and executed in a stack, exchanging data via registers that the base engine also uses. (Calling this a "VM" is definitely generous.) 

The simulation scripts are located in the `Resources/scripts/simulation` directory on Windows, and on the Mac they are in the .app directory's `Contents/Resources/scripts/simulation` (right-click --> "Show Package Contents").

## Downloading
Whatever latest version I've tagged is viewable in the [releases tab](https://github.com/sjml/dungen/releases). Downloadable versions for Mac and Windows, along with source. It builds and makes GitHub releases via [Azure Pipelines](https://azure.microsoft.com/en-us/services/devops/pipelines/) which was [kind of a pain](https://github.com/sjml/dungen/blob/main/azure-pipelines.yml) to get working, but I kinda like devops stuff and build pipelines, so ¯\\\_(ツ)\_/¯. 

## Building
I mostly develop on a Mac, but spend a non-trivial amount of time in Windows, too, so it gets checked there periodically. There's an Xcode project and a Visual Studio solution, and I try to keep them in sync. 

There's also a CMake configuration that I really only use to build it on Linux on those occasions when I do so. It might be out of sync with the other build systems. (Yes, I could just use CMake for everything but it makes some UGLY projects, so I kind of treat it as just a more readable [to me] Makefile.)
