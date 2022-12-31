# LoveTemplate
LoveTemplate is a simple template and base for your Love games.  
It contains :
- all love2d settings in place.
- **localization** and **settings loading/saving** modules.
- game **build system** (build to bytecode and pack to zip archive) *(bash, zip and luajit utils required)*
- **offline documentation** for lua and Love2D.

# Repository structure

Root of this repository contains a **build system** - script file `build.sh`.  
`game` directory contains your game. Only this directory will be packed to your game archieve
`doc` directory contains *Love2D* and *Lua 5.4* **offline documenation**.

# Usage

You can run your game for debugging without compiling and packaging while it is in development :
```bash
 $ cd ./game/
 $ love .
```

And when the game is *ready* and/or *you want to share it*, run `./build.sh` in the root of this repository - the build system will start and the `game.love` file will appear here *(if no errors happened)*

# Game modules
## conf.lua
`conf.lua` is a **Love2D configuration** file. Here you can set the initial size of the window, included modules, and more. All available options are already set and documented.
## game info
`game-info.lua` is a file containing **basic information about the game**: version, name, ID, creators, etc.
## license
`license.txt` is a file containing a **license for your game and resources** used by it
## localization
`loc/` is a directory with **localization files**. See localization extra module. 
## extra modules
### localization
The main file of the **localization system** is `extra/locale.lua`. All strings, dialogues and texts in your game *should be* represented as *small identifiers*, which *will correspond to the text in the current localization table*.

Each localization table must be in a **separate AB.lua file** in `loc/` directory, where **AB is any two letters** *representing a specific localization abbreviation*. All these files *will be loaded into the system automatically* and in any quantity :)

Quick and dirty example : 
```lua
-- main.lua
local i18n = require "extra/locale"
i18n.setLocale("en") -- switch current locale
print(i18n('heloomessage'), i18n('dialog_peter_1')) -- get strings by ID
```
```lua
-- loc/en.lua
return {
    heloomessage = "Heloo User!",
    dialog_peter_1 = "What? Where am i!?"
}
```
### loadwithlove
Introduses proper `loadfile()` and `dofile()` work when running in zip archive. **Required by localization and settings module**.
### settings
Introduses a settings table serialization into `<DATADIR>/settings.lua` file and a **safe and sandboxed** loading from it.
You should specify **default values** in this *module table* before calling `reloadSettings()` global function. There *module* is a table, returned by `require('extra/settings.lua')`.
All settings will be saved automaticly when game closes!
# License for game, extra modules and build system

*The "MIT No Attribution" or "MIT-0" license is a modification to the usual MIT license that removes the requirement for attribution. It is roughly the same as an MIT license consisting of a sandwich of (paragraph, line, paragraph), but it is missing the middle line of the 'sandwich'.*

*This license has proven useful for code that is intended for developers* **to use as reference, teaching samples, examples, or templates** *that other developers* **may modify** *for their own purposes.*

*In many of these cases, the initial developer may not want to impose even the cost of attribution, or the use cases may not be conducive to attribution.*

*The CC0 and various "do what you want" licenses and various public domain dedications may be less attractive to the initial developer for various reasons (i.e., a license is preferable to a public domain dedication). The MIT license with all the attribution requirement language removed fills this need.*

```
MIT No Attribution

Copyright 2022 UtoECat

Permission is hereby granted, free of charge, to any person obtaining a copy of this
software and associated documentation files (the "Software"), to deal in the Software
without restriction, including without limitation the rights to use, copy, modify,
merge, publish, distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
```
