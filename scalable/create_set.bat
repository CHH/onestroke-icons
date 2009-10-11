@echo off
cls


echo Exporting files to 48x48 png images...

if not exist %1\48x48 mkdir %1\48x48
for %%X in (*.svg) do C:\Inkscape\inkscape.exe -e %1\48x48\%%X.png %1\scalable\%%X

echo Done.
echo Exporting files to 32x32 png images...

if not exist %1\32x32 mkdir %1\32x32
for %%X in (*.svg) do C:\Inkscape\inkscape.exe  -w 32 -h 32 -e %1\32x32\%%X.png %1\scalable\%%X 

echo Done.

echo Exporting files to 22x22 png images...

if not exist %1\22x22 mkdir %1\22x22
for %%X in (*.svg) do C:\Inkscape\inkscape.exe  -w 22 -h 22 -e %1\22x22\%%X.png %1\scalable\%%X

echo Done.

echo Exporting files to 16x16 png images...

if not exist %1\16x16 mkdir %1\16x16
for %%X in (*.svg) do C:\Inkscape\inkscape.exe  -w 16 -h 16 -e %1\16x16\%%X.png %1\scalable\%%X

echo Some housekeeping (boring stuff)...

rename %1\48x48\*svg.png *.
rename %1\48x48\*.svg *.png

rename %1\32x32\*svg.png *.
rename %1\32x32\*.svg *.png

rename %1\22x22\*svg.png *.
rename %1\22x22\*.svg *.png

rename %1\16x16\*svg.png *.
rename %1\16x16\*.svg *.png

echo All done.