keyboard config files can be found in
```
/usr/share/X11/xkb/
```

## 1

Copy the contents in the `symbols` file into the `us` file in the
`../xkb/symbols/` directory as one of the sections. I put mine under the "English
(Colemak)" section for organization.

## 2

In `evdev.xml` file under `../xkb/rules/` directory, add the contents in the
`rules` file as one of the variants for the `us` layout. Search for `colemak`
and add the new variant under it.

Make sure the indentations are correct for both files.
After restarting, `English (Prime Colemak)` should be available in the input
sources settings.
