---
title: "Cannot start xmonad and recompile configuration file"
date: 2020-05-16T01:32:03+09:00
draft: false
---

I tried starting the xmonad after upgrading Arch linux with pacman. But could not start.
And, I tried to recompile the config file but I couldn't.

## Log
```
$ xmonad --recompile

xmonad.hs:3:1: error:
Could not load module ‘XMonad’
It is a member of the package ‘xmonad-0.15-INNaRsi8viXHVTtHIZOWoU’
which is unusable due to missing dependencies:
X11-1.9.1-AFcCYyNZny21u722BShhIc data-default-0.7.1.1-KwmPSgEEmCp4io60ICryCw extensible-exceptions-0.1.1.4-4QtxTJe11myLMCZi4yvSzl setlocale-1.0.0.9-GbloffBFEmGB4tdjuaGaib utf8-string-1.0.1.1-IRxNMq5AVf036EceEkASq3
Use -v (or `:set -v` in ghci) to see a list of the files searched for.
|
3 | import XMonad
| ^^^^^^^^^^^^^

xmonad.hs:4:1: error:
Could not load module ‘XMonad.ManageHook’
It is a member of the package ‘xmonad-0.15-INNaRsi8viXHVTtHIZOWoU’
which is unusable due to missing dependencies:
X11-1.9.1-AFcCYyNZny21u722BShhIc data-default-0.7.1.1-KwmPSgEEmCp4io60ICryCw extensible-exceptions-0.1.1.4-4QtxTJe11myLMCZi4yvSzl setlocale-1.0.0.9-GbloffBFEmGB4tdjuaGaib utf8-string-1.0.1.1-IRxNMq5AVf036EceEkASq3
Use -v (or `:set -v` in ghci) to see a list of the files searched for.
|
4 | import XMonad.ManageHook
| ^^^^^^^^^^^^^^^^^^^^^^^^

xmonad.hs:6:1: error:
Could not load module ‘XMonad.StackSet’
It is a member of the package ‘xmonad-0.15-INNaRsi8viXHVTtHIZOWoU’
which is unusable due to missing dependencies:
X11-1.9.1-AFcCYyNZny21u722BShhIc data-default-0.7.1.1-KwmPSgEEmCp4io60ICryCw extensible-exceptions-0.1.1.4-4QtxTJe11myLMCZi4yvSzl setlocale-1.0.0.9-GbloffBFEmGB4tdjuaGaib utf8-string-1.0.1.1-IRxNMq5AVf036EceEkASq3
Use -v (or `:set -v` in ghci) to see a list of the files searched for.
|
6 | import qualified XMonad.StackSet as W
| ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

xmonad.hs:8:1: error:
Could not load module ‘XMonad.Actions.FlexibleResize’
It is a member of the package ‘xmonad-contrib-0.16-A7dmBm5XHoA3cJakmPiBG’
which is unusable due to missing dependencies:
X11-1.9.1-AFcCYyNZny21u722BShhIc X11-xft-0.3.1-2yyNIlUDHyp6mq4MnwEIH9 extensible-exceptions-0.1.1.4-4QtxTJe11myLMCZi4yvSzl old-locale-1.0.0.7-KOGgqu8HfWChZyQBUEp1c old-time-1.1.0.3-LFCo3WvTzIJ9XV4spupeM9 random-1.1-CUqV1zxrwrE4K5XCdTZSYy utf8-string-1.0.1.1-IRxNMq5AVf036EceEkASq3 xmonad-0.15-INNaRsi8viXHVTtHIZOWoU
Use -v (or `:set -v` in ghci) to see a list of the files searched for.
|
8 | import qualified XMonad.Actions.FlexibleResize as Flex
| ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

xmonad.hs:9:1: error:
Could not load module ‘XMonad.Hooks.ManageDocks’
It is a member of the package ‘xmonad-contrib-0.16-A7dmBm5XHoA3cJakmPiBG’
which is unusable due to missing dependencies:
X11-1.9.1-AFcCYyNZny21u722BShhIc X11-xft-0.3.1-2yyNIlUDHyp6mq4MnwEIH9 extensible-exceptions-0.1.1.4-4QtxTJe11myLMCZi4yvSzl old-locale-1.0.0.7-KOGgqu8HfWChZyQBUEp1c old-time-1.1.0.3-LFCo3WvTzIJ9XV4spupeM9 random-1.1-CUqV1zxrwrE4K5XCdTZSYy utf8-string-1.0.1.1-IRxNMq5AVf036EceEkASq3 xmonad-0.15-INNaRsi8viXHVTtHIZOWoU
Use -v (or `:set -v` in ghci) to see a list of the files searched for.
|
9 | import XMonad.Hooks.ManageDocks
| ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

xmonad.hs:10:1: error:
Could not load module ‘XMonad.Hooks.DynamicLog’
It is a member of the package ‘xmonad-contrib-0.16-A7dmBm5XHoA3cJakmPiBG’
which is unusable due to missing dependencies:
X11-1.9.1-AFcCYyNZny21u722BShhIc X11-xft-0.3.1-2yyNIlUDHyp6mq4MnwEIH9 extensible-exceptions-0.1.1.4-4QtxTJe11myLMCZi4yvSzl old-locale-1.0.0.7-KOGgqu8HfWChZyQBUEp1c old-time-1.1.0.3-LFCo3WvTzIJ9XV4spupeM9 random-1.1-CUqV1zxrwrE4K5XCdTZSYy utf8-string-1.0.1.1-IRxNMq5AVf036EceEkASq3 xmonad-0.15-INNaRsi8viXHVTtHIZOWoU
Use -v (or `:set -v` in ghci) to see a list of the files searched for.
|
10 | import XMonad.Hooks.DynamicLog
| ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

xmonad.hs:11:1: error:
Could not load module ‘XMonad.Hooks.EwmhDesktops’
It is a member of the package ‘xmonad-contrib-0.16-A7dmBm5XHoA3cJakmPiBG’
which is unusable due to missing dependencies:
X11-1.9.1-AFcCYyNZny21u722BShhIc X11-xft-0.3.1-2yyNIlUDHyp6mq4MnwEIH9 extensible-exceptions-0.1.1.4-4QtxTJe11myLMCZi4yvSzl old-locale-1.0.0.7-KOGgqu8HfWChZyQBUEp1c old-time-1.1.0.3-LFCo3WvTzIJ9XV4spupeM9 random-1.1-CUqV1zxrwrE4K5XCdTZSYy utf8-string-1.0.1.1-IRxNMq5AVf036EceEkASq3 xmonad-0.15-INNaRsi8viXHVTtHIZOWoU
Use -v (or `:set -v` in ghci) to see a list of the files searched for.
|
11 | import XMonad.Hooks.EwmhDesktops
| ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

xmonad.hs:12:1: error:
Could not load module ‘XMonad.Hooks.SetWMName’
It is a member of the package ‘xmonad-contrib-0.16-A7dmBm5XHoA3cJakmPiBG’
which is unusable due to missing dependencies:
X11-1.9.1-AFcCYyNZny21u722BShhIc X11-xft-0.3.1-2yyNIlUDHyp6mq4MnwEIH9 extensible-exceptions-0.1.1.4-4QtxTJe11myLMCZi4yvSzl old-locale-1.0.0.7-KOGgqu8HfWChZyQBUEp1c old-time-1.1.0.3-LFCo3WvTzIJ9XV4spupeM9 random-1.1-CUqV1zxrwrE4K5XCdTZSYy utf8-string-1.0.1.1-IRxNMq5AVf036EceEkASq3 xmonad-0.15-INNaRsi8viXHVTtHIZOWoU
Use -v (or `:set -v` in ghci) to see a list of the files searched for.
|
12 | import XMonad.Hooks.SetWMName
| ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

xmonad.hs:13:1: error:
Could not load module ‘XMonad.Actions.FloatKeys’
It is a member of the package ‘xmonad-contrib-0.16-A7dmBm5XHoA3cJakmPiBG’
which is unusable due to missing dependencies:
X11-1.9.1-AFcCYyNZny21u722BShhIc X11-xft-0.3.1-2yyNIlUDHyp6mq4MnwEIH9 extensible-exceptions-0.1.1.4-4QtxTJe11myLMCZi4yvSzl old-locale-1.0.0.7-KOGgqu8HfWChZyQBUEp1c old-time-1.1.0.3-LFCo3WvTzIJ9XV4spupeM9 random-1.1-CUqV1zxrwrE4K5XCdTZSYy utf8-string-1.0.1.1-IRxNMq5AVf036EceEkASq3 xmonad-0.15-INNaRsi8viXHVTtHIZOWoU
Use -v (or `:set -v` in ghci) to see a list of the files searched for.
|
13 | import XMonad.Actions.FloatKeys
| ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

xmonad.hs:14:1: error:
Could not load module ‘XMonad.Layout’
It is a member of the package ‘xmonad-0.15-INNaRsi8viXHVTtHIZOWoU’
which is unusable due to missing dependencies:
X11-1.9.1-AFcCYyNZny21u722BShhIc data-default-0.7.1.1-KwmPSgEEmCp4io60ICryCw extensible-exceptions-0.1.1.4-4QtxTJe11myLMCZi4yvSzl setlocale-1.0.0.9-GbloffBFEmGB4tdjuaGaib utf8-string-1.0.1.1-IRxNMq5AVf036EceEkASq3
Use -v (or `:set -v` in ghci) to see a list of the files searched for.
|
14 | import XMonad.Layout
| ^^^^^^^^^^^^^^^^^^^^

xmonad.hs:15:1: error:
Could not load module ‘XMonad.Layout.DragPane’
It is a member of the package ‘xmonad-contrib-0.16-A7dmBm5XHoA3cJakmPiBG’
which is unusable due to missing dependencies:
X11-1.9.1-AFcCYyNZny21u722BShhIc X11-xft-0.3.1-2yyNIlUDHyp6mq4MnwEIH9 extensible-exceptions-0.1.1.4-4QtxTJe11myLMCZi4yvSzl old-locale-1.0.0.7-KOGgqu8HfWChZyQBUEp1c old-time-1.1.0.3-LFCo3WvTzIJ9XV4spupeM9 random-1.1-CUqV1zxrwrE4K5XCdTZSYy utf8-string-1.0.1.1-IRxNMq5AVf036EceEkASq3 xmonad-0.15-INNaRsi8viXHVTtHIZOWoU
Use -v (or `:set -v` in ghci) to see a list of the files searched for.
|
15 | import XMonad.Layout.DragPane
| ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

xmonad.hs:16:1: error:
Could not load module ‘XMonad.Layout.Gaps’
It is a member of the package ‘xmonad-contrib-0.16-A7dmBm5XHoA3cJakmPiBG’
which is unusable due to missing dependencies:
X11-1.9.1-AFcCYyNZny21u722BShhIc X11-xft-0.3.1-2yyNIlUDHyp6mq4MnwEIH9 extensible-exceptions-0.1.1.4-4QtxTJe11myLMCZi4yvSzl old-locale-1.0.0.7-KOGgqu8HfWChZyQBUEp1c old-time-1.1.0.3-LFCo3WvTzIJ9XV4spupeM9 random-1.1-CUqV1zxrwrE4K5XCdTZSYy utf8-string-1.0.1.1-IRxNMq5AVf036EceEkASq3 xmonad-0.15-INNaRsi8viXHVTtHIZOWoU
Use -v (or `:set -v` in ghci) to see a list of the files searched for.
|
16 | import XMonad.Layout.Gaps
| ^^^^^^^^^^^^^^^^^^^^^^^^^

xmonad.hs:17:1: error:
Could not load module ‘XMonad.Layout.ResizableTile’
It is a member of the package ‘xmonad-contrib-0.16-A7dmBm5XHoA3cJakmPiBG’
which is unusable due to missing dependencies:
X11-1.9.1-AFcCYyNZny21u722BShhIc X11-xft-0.3.1-2yyNIlUDHyp6mq4MnwEIH9 extensible-exceptions-0.1.1.4-4QtxTJe11myLMCZi4yvSzl old-locale-1.0.0.7-KOGgqu8HfWChZyQBUEp1c old-time-1.1.0.3-LFCo3WvTzIJ9XV4spupeM9 random-1.1-CUqV1zxrwrE4K5XCdTZSYy utf8-string-1.0.1.1-IRxNMq5AVf036EceEkASq3 xmonad-0.15-INNaRsi8viXHVTtHIZOWoU
Use -v (or `:set -v` in ghci) to see a list of the files searched for.
|
17 | import XMonad.Layout.ResizableTile
| ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

xmonad.hs:18:1: error:
Could not load module ‘XMonad.Layout.SimplestFloat’
It is a member of the package ‘xmonad-contrib-0.16-A7dmBm5XHoA3cJakmPiBG’
which is unusable due to missing dependencies:
X11-1.9.1-AFcCYyNZny21u722BShhIc X11-xft-0.3.1-2yyNIlUDHyp6mq4MnwEIH9 extensible-exceptions-0.1.1.4-4QtxTJe11myLMCZi4yvSzl old-locale-1.0.0.7-KOGgqu8HfWChZyQBUEp1c old-time-1.1.0.3-LFCo3WvTzIJ9XV4spupeM9 random-1.1-CUqV1zxrwrE4K5XCdTZSYy utf8-string-1.0.1.1-IRxNMq5AVf036EceEkASq3 xmonad-0.15-INNaRsi8viXHVTtHIZOWoU
Use -v (or `:set -v` in ghci) to see a list of the files searched for.
|
18 | import XMonad.Layout.SimplestFloat
| ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

xmonad.hs:19:1: error:
Could not load module ‘XMonad.Layout.NoBorders’
It is a member of the package ‘xmonad-contrib-0.16-A7dmBm5XHoA3cJakmPiBG’
which is unusable due to missing dependencies:
X11-1.9.1-AFcCYyNZny21u722BShhIc X11-xft-0.3.1-2yyNIlUDHyp6mq4MnwEIH9 extensible-exceptions-0.1.1.4-4QtxTJe11myLMCZi4yvSzl old-locale-1.0.0.7-KOGgqu8HfWChZyQBUEp1c old-time-1.1.0.3-LFCo3WvTzIJ9XV4spupeM9 random-1.1-CUqV1zxrwrE4K5XCdTZSYy utf8-string-1.0.1.1-IRxNMq5AVf036EceEkASq3 xmonad-0.15-INNaRsi8viXHVTtHIZOWoU
Use -v (or `:set -v` in ghci) to see a list of the files searched for.
|
19 | import XMonad.Layout.NoBorders
| ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

xmonad.hs:20:1: error:
Could not load module ‘XMonad.Layout.ToggleLayouts’
It is a member of the package ‘xmonad-contrib-0.16-A7dmBm5XHoA3cJakmPiBG’
which is unusable due to missing dependencies:
X11-1.9.1-AFcCYyNZny21u722BShhIc X11-xft-0.3.1-2yyNIlUDHyp6mq4MnwEIH9 extensible-exceptions-0.1.1.4-4QtxTJe11myLMCZi4yvSzl old-locale-1.0.0.7-KOGgqu8HfWChZyQBUEp1c old-time-1.1.0.3-LFCo3WvTzIJ9XV4spupeM9 random-1.1-CUqV1zxrwrE4K5XCdTZSYy utf8-string-1.0.1.1-IRxNMq5AVf036EceEkASq3 xmonad-0.15-INNaRsi8viXHVTtHIZOWoU
Use -v (or `:set -v` in ghci) to see a list of the files searched for.
|
20 | import XMonad.Layout.ToggleLayouts
| ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

xmonad.hs:21:1: error:
Could not load module ‘XMonad.Layout.PerWorkspace’
It is a member of the package ‘xmonad-contrib-0.16-A7dmBm5XHoA3cJakmPiBG’
which is unusable due to missing dependencies:
X11-1.9.1-AFcCYyNZny21u722BShhIc X11-xft-0.3.1-2yyNIlUDHyp6mq4MnwEIH9 extensible-exceptions-0.1.1.4-4QtxTJe11myLMCZi4yvSzl old-locale-1.0.0.7-KOGgqu8HfWChZyQBUEp1c old-time-1.1.0.3-LFCo3WvTzIJ9XV4spupeM9 random-1.1-CUqV1zxrwrE4K5XCdTZSYy utf8-string-1.0.1.1-IRxNMq5AVf036EceEkASq3 xmonad-0.15-INNaRsi8viXHVTtHIZOWoU
Use -v (or `:set -v` in ghci) to see a list of the files searched for.
|
21 | import XMonad.Layout.PerWorkspace
| ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

xmonad.hs:22:1: error:
Could not load module ‘XMonad.Layout.Spacing’
It is a member of the package ‘xmonad-contrib-0.16-A7dmBm5XHoA3cJakmPiBG’
which is unusable due to missing dependencies:
X11-1.9.1-AFcCYyNZny21u722BShhIc X11-xft-0.3.1-2yyNIlUDHyp6mq4MnwEIH9 extensible-exceptions-0.1.1.4-4QtxTJe11myLMCZi4yvSzl old-locale-1.0.0.7-KOGgqu8HfWChZyQBUEp1c old-time-1.1.0.3-LFCo3WvTzIJ9XV4spupeM9 random-1.1-CUqV1zxrwrE4K5XCdTZSYy utf8-string-1.0.1.1-IRxNMq5AVf036EceEkASq3 xmonad-0.15-INNaRsi8viXHVTtHIZOWoU
Use -v (or `:set -v` in ghci) to see a list of the files searched for.
|
22 | import XMonad.Layout.Spacing
| ^^^^^^^^^^^^^^^^^^^^^^^^^^^^

xmonad.hs:23:1: error:
Could not load module ‘XMonad.Layout.ThreeColumns’
It is a member of the package ‘xmonad-contrib-0.16-A7dmBm5XHoA3cJakmPiBG’
which is unusable due to missing dependencies:
X11-1.9.1-AFcCYyNZny21u722BShhIc X11-xft-0.3.1-2yyNIlUDHyp6mq4MnwEIH9 extensible-exceptions-0.1.1.4-4QtxTJe11myLMCZi4yvSzl old-locale-1.0.0.7-KOGgqu8HfWChZyQBUEp1c old-time-1.1.0.3-LFCo3WvTzIJ9XV4spupeM9 random-1.1-CUqV1zxrwrE4K5XCdTZSYy utf8-string-1.0.1.1-IRxNMq5AVf036EceEkASq3 xmonad-0.15-INNaRsi8viXHVTtHIZOWoU
Use -v (or `:set -v` in ghci) to see a list of the files searched for.
|
23 | import XMonad.Layout.ThreeColumns
| ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

xmonad.hs:24:1: error:
Could not load module ‘XMonad.Util.SpawnOnce’
It is a member of the package ‘xmonad-contrib-0.16-A7dmBm5XHoA3cJakmPiBG’
which is unusable due to missing dependencies:
X11-1.9.1-AFcCYyNZny21u722BShhIc X11-xft-0.3.1-2yyNIlUDHyp6mq4MnwEIH9 extensible-exceptions-0.1.1.4-4QtxTJe11myLMCZi4yvSzl old-locale-1.0.0.7-KOGgqu8HfWChZyQBUEp1c old-time-1.1.0.3-LFCo3WvTzIJ9XV4spupeM9 random-1.1-CUqV1zxrwrE4K5XCdTZSYy utf8-string-1.0.1.1-IRxNMq5AVf036EceEkASq3 xmonad-0.15-INNaRsi8viXHVTtHIZOWoU
Use -v (or `:set -v` in ghci) to see a list of the files searched for.
|
24 | import XMonad.Util.SpawnOnce
| ^^^^^^^^^^^^^^^^^^^^^^^^^^^^

xmonad.hs:25:1: error:
Could not load module ‘XMonad.Util.Run’
It is a member of the package ‘xmonad-contrib-0.16-A7dmBm5XHoA3cJakmPiBG’
which is unusable due to missing dependencies:
X11-1.9.1-AFcCYyNZny21u722BShhIc X11-xft-0.3.1-2yyNIlUDHyp6mq4MnwEIH9 extensible-exceptions-0.1.1.4-4QtxTJe11myLMCZi4yvSzl old-locale-1.0.0.7-KOGgqu8HfWChZyQBUEp1c old-time-1.1.0.3-LFCo3WvTzIJ9XV4spupeM9 random-1.1-CUqV1zxrwrE4K5XCdTZSYy utf8-string-1.0.1.1-IRxNMq5AVf036EceEkASq3 xmonad-0.15-INNaRsi8viXHVTtHIZOWoU
Use -v (or `:set -v` in ghci) to see a list of the files searched for.
|
25 | import XMonad.Util.Run
| ^^^^^^^^^^^^^^^^^^^^^^

xmonad.hs:26:1: error:
Could not load module ‘XMonad.Util.Run’
It is a member of the package ‘xmonad-contrib-0.16-A7dmBm5XHoA3cJakmPiBG’
which is unusable due to missing dependencies:
X11-1.9.1-AFcCYyNZny21u722BShhIc X11-xft-0.3.1-2yyNIlUDHyp6mq4MnwEIH9 extensible-exceptions-0.1.1.4-4QtxTJe11myLMCZi4yvSzl old-locale-1.0.0.7-KOGgqu8HfWChZyQBUEp1c old-time-1.1.0.3-LFCo3WvTzIJ9XV4spupeM9 random-1.1-CUqV1zxrwrE4K5XCdTZSYy utf8-string-1.0.1.1-IRxNMq5AVf036EceEkASq3 xmonad-0.15-INNaRsi8viXHVTtHIZOWoU
Use -v (or `:set -v` in ghci) to see a list of the files searched for.
|
26 | import XMonad.Util.Run(spawnPipe)
| ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

xmonad.hs:27:1: error:
Could not load module ‘XMonad.Util.EZConfig’
It is a member of the package ‘xmonad-contrib-0.16-A7dmBm5XHoA3cJakmPiBG’
which is unusable due to missing dependencies:
X11-1.9.1-AFcCYyNZny21u722BShhIc X11-xft-0.3.1-2yyNIlUDHyp6mq4MnwEIH9 extensible-exceptions-0.1.1.4-4QtxTJe11myLMCZi4yvSzl old-locale-1.0.0.7-KOGgqu8HfWChZyQBUEp1c old-time-1.1.0.3-LFCo3WvTzIJ9XV4spupeM9 random-1.1-CUqV1zxrwrE4K5XCdTZSYy utf8-string-1.0.1.1-IRxNMq5AVf036EceEkASq3 xmonad-0.15-INNaRsi8viXHVTtHIZOWoU
Use -v (or `:set -v` in ghci) to see a list of the files searched for.
|
27 | import XMonad.Util.EZConfig (additionalKeys)
| ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

xmonad.hs:28:1: error:
Could not load module ‘XMonad.Util.EZConfig’
It is a member of the package ‘xmonad-contrib-0.16-A7dmBm5XHoA3cJakmPiBG’
which is unusable due to missing dependencies:
X11-1.9.1-AFcCYyNZny21u722BShhIc X11-xft-0.3.1-2yyNIlUDHyp6mq4MnwEIH9 extensible-exceptions-0.1.1.4-4QtxTJe11myLMCZi4yvSzl old-locale-1.0.0.7-KOGgqu8HfWChZyQBUEp1c old-time-1.1.0.3-LFCo3WvTzIJ9XV4spupeM9 random-1.1-CUqV1zxrwrE4K5XCdTZSYy utf8-string-1.0.1.1-IRxNMq5AVf036EceEkASq3 xmonad-0.15-INNaRsi8viXHVTtHIZOWoU
Use -v (or `:set -v` in ghci) to see a list of the files searched for.
|
28 | import XMonad.Util.EZConfig
| ^^^^^^^^^^^^^^^^^^^^^^^^^^^

xmonad.hs:29:1: error:
Could not load module ‘XMonad.Util.NamedScratchpad’
It is a member of the package ‘xmonad-contrib-0.16-A7dmBm5XHoA3cJakmPiBG’
which is unusable due to missing dependencies:
X11-1.9.1-AFcCYyNZny21u722BShhIc X11-xft-0.3.1-2yyNIlUDHyp6mq4MnwEIH9 extensible-exceptions-0.1.1.4-4QtxTJe11myLMCZi4yvSzl old-locale-1.0.0.7-KOGgqu8HfWChZyQBUEp1c old-time-1.1.0.3-LFCo3WvTzIJ9XV4spupeM9 random-1.1-CUqV1zxrwrE4K5XCdTZSYy utf8-string-1.0.1.1-IRxNMq5AVf036EceEkASq3 xmonad-0.15-INNaRsi8viXHVTtHIZOWoU
Use -v (or `:set -v` in ghci) to see a list of the files searched for.
|
29 | import XMonad.Util.NamedScratchpad
| ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

xmonad.hs:30:1: error:
Could not find module ‘Graphics.X11.ExtraTypes.XF86’
Use -v (or `:set -v` in ghci) to see a list of the files searched for.
|
30 | import Graphics.X11.ExtraTypes.XF86
| ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
```

The Haskell module seems to get lost...

## Solution
I tried installing/removing ghc, reinstalling from haskell-core, etc.

```
pacman -Qq | grep haskell | xargs pacman --noconfirm -R
pacman -R ghc
pacman -Syu haskell-xmonad haskell-xmonad-contrib
```

The xmonad config file can be recompiled.

## Reference
https://bbs.archlinux.org/viewtopic.php?id=195366
