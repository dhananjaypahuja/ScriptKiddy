@echo off

@setlocal enabledelayedexpansion

echo Creating file list...

(for %%a in ("*.ts") do (
    @echo file '%%a'
)) > filelist.txt

echo Concatenating files...

ffmpeg -f concat -safe 0 -i filelist.txt -c copy output.mp4

echo.
echo Concatenation done...
echo.

echo.
echo.
echo Exit Script now to keep original files and txt...
echo.
echo.

echo.
echo.
echo Deleting all .ts and jpg files and txt file...
echo.
echo.

del filelist.txt
del storage.idx

for %%a in ("*.ts") do (
    del %%a
)

for %%a in ("*.jpg") do (
    del %%a
)

