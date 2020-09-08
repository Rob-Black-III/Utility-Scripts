@echo off
SET nvcachepath="%ALLUSERSPROFILE%\NVIDIA Corporation\NV_Cache\*.*"
SET d3dspath="%USERPROFILE%\AppData\Local\D3DSCache\*.*"
SET glpath="%USERPROFILE%\AppData\Local\NVIDIA\GLCache\*.*"
SET temppath="%USERPROFILE%\AppData\Local\Temp\*.*"

echo Paths to Caches:
echo ----------------

echo %nvcachepath%
echo %d3dspath%
echo %glpath%
echo %temppath%

echo.
echo Deleting Files...
echo ----------------

echo Deleting NVCACHE...
del /q /f /s %nvcachepath%
echo Deleting D3DS CACHE...
del /q /f /s %d3dspath%
echo Deleting GL CACHE...
del /q /f /s %glpath%
echo Deleting TEMP CACHE...
del /q /f /s %temppath%

echo.

set /p=Hit ENTER to finish...