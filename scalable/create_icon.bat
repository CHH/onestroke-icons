@echo off

set export_path = J:\Designs\Icons\simple-theme
set input = J:\Designs\Icons\simple-theme\scalable

echo Exporting %1.svg...

if not exist ..\48x48 mkdir ..\48x48
C:\Inkscape\inkscape.exe -h 48 -w 48 -e J:\Designs\Icons\simple-theme\48x48\%1.png J:\Designs\Icons\simple-theme\scalable\%1.svg

if not exist ..\32x32 mkdir ..\32x32
C:\Inkscape\inkscape.exe -h 32 -w 32 -e J:\Designs\Icons\simple-theme\32x32\%1.png J:\Designs\Icons\simple-theme\scalable\%1.svg

if not exist ..\22x22 mkdir ..\22x22
C:\Inkscape\inkscape.exe -h 22 -w 22 -e J:\Designs\Icons\simple-theme\22x22\%1.png J:\Designs\Icons\simple-theme\scalable\%1.svg

if not exist ..\16x16 mkdir ..\16x16
C:\Inkscape\inkscape.exe -h 16 -w 16 -e J:\Designs\Icons\simple-theme\16x16\%1.png J:\Designs\Icons\simple-theme\scalable\%1.svg

echo Done.