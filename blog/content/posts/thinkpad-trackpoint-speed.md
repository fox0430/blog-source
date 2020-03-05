---
title: "Change TrackPoint speed on ThinkPad X1 Carbon 2018 (Gen 6) under the GNU/Linux"
date: 2020-03-06T02:57:12+09:00
draft: false
---

## Background

I installed Arch Linux on ThinkPad X1 Carbon 2018.

I edited ```/sys/devices/platform/i8042/serio1/``` the file as well as ThinkPad x240 because I wanted to speed up TrackPoint.

But did not works...

## Solution

Create the following file.

Path: ```/etc/libinput/local-overrides.quirks```

Content:
```
[Trackpoint Override]
MatchUdevType=pointingstick
AttrTrackpointMultiplier=2.5
```

TrackPoint is a really good pointing device!

## Reference
Change TrackPoint speed under Linux? https://www.reddit.com/r/thinkpad/comments/b5gqsv/change_trackpoint_speed_under_linux/
