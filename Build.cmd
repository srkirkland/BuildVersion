set config=%1
if "%config%" == "" (
   set config=debug
)
set version=%2
if "%version%" == "" (
   set version=2.3.4.5
)
%WINDIR%\Microsoft.NET\Framework\v4.0.30319\msbuild Build.proj /p:Configuration="%config%" /p:build_number="%version%"