# RomZipper

A Windows batch script that uses [7-Zip](https://www.7-zip.org/) to batch compress all files in the current folder into individual `.zip` archives, saving them to a subfolder named after the current directory with " compressed" appended (e.g. `gba` → `gba compressed`).

## Requirements

- Windows
- [7-Zip](https://www.7-zip.org/) installed

## Usage

1. Place `RomZipper.bat` in the folder containing the files you want to zip
2. Open the script in a text editor and update the `zipExe` path if 7-Zip is not installed in the default location:
   ```bat
   set "zipExe=C:\Program Files\7-Zip\7z.exe"
   ```
3. Double-click the script to run it

The script will create a `[foldername] compressed` subfolder and save all zipped files there.

## Notes

- Skips any existing `.zip`, `.7z`, `.rar`, and `.bat` files
- Compression is set to level 1 (fastest) — ideal for files that are already compressed, such as ROM files
- Safe to use with filenames containing special characters like `!`

## Compression Levels

To change the compression level, edit this line in the script:

```bat
set "COMPRESSION_LEVEL=1"
```

| Level | Description |
|-------|-------------|
| 1 | Fastest (default) |
| 3 | Fast |
| 5 | Normal |
| 7 | Maximum |
| 9 | Ultra |
