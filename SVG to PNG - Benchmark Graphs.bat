@ECHO off
SET argPath=%1
MODE 65,30 | ECHO off
SET argPath=%1
    FOR %%f IN (%argPath%) DO (
        ECHO - %%~nf%%~xf
        C:\Programas\Scripts\GraphicsMagick-1.3.36-Q16\gm.exe convert -size 3884x2160 %argPath% -resize 1887x1080 -define png "%%~df%%~pf%%~nf.png"
    )