---
title: "The mouse cursor size makes huge only when the cursor is on the GTK applications"
date: 2020-10-02T00:27:34+09:00
draft: false
---

A few days ago, suddenly changed mouse cursor size. The mouse cursor size makes huge only when the cursor is on the GTK applications.

## Solution

Add this line in the GTK setting (```~/.config/gtk-3.0/settings.ini```). You can set the size to your liking.

```
gtk-cursor-theme-size = 16
```
