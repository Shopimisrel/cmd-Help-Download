:home
@echo off
chcp 1255>nul
color b
title Assistant Downloads Folder 1.0

echo.
echo. 
choice /c 123 /m ">>> Start arranging the downloads folder press 1 other folders press 2 adout press 3"
if errorlevel 3 goto about
if errorlevel 2 goto choice
if errorlevel 1 goto start

echo.
echo. 
:about
echo Created by: @ NH.LOCAL
echo mitmachim.top
echo https://tinyurl.com/28t4y3gy
pause
cls
goto home
:choice
cls
echo.
echo.
echo Drag a desired folder into the window
set/p p=">>>"
goto start2
:start
cd /d "%userprofile%\downloads"
:start2
cd /d %p%
:go
::Documents
for %%i in (*.chm,*.cpp,*.pub,*.pubx,*.csv,*.cxx,*.doc,*.docm,*.docx,*.dot,*.dotm,*.dotx,*.h,*.hpp,*.htm,*.html,*.hxx,*.ini,*.java,*.lua,*.mht,*.mhtml,*.odt,*.pdf,*.potx,*.potm,*.ppam,*.ppsm,*.ppsx,*.pps,*.ppt,*.pptm,*.pptx,*.rtf,*.sldm,*.sldx,*.thmx,*.txt,*.vsd,*.wpd,*.wps,*.wri,*.xlam,*.xls,*.xlsb,*.xlsm,*.xlsx,*.xltm,*.xltx,*.xml) do if exist %%i md "Documents" & move "%%i" "Documents">>Actions-performed.txt & cls
::Fonts
for %%i in (*.ttf,*.fnt,*.otf) do md "Execution files/Fonts" & move "%%i" "Execution files/Fonts">>Actions-performed.txt & cls
::Adobe
for %%i in (*.ai,*.psd,*.indd) do md "Documents\Adobe files" & move "%%i" "Documents\Adobe files">>Actions-performed.txt & cls
::Video files
for %%i in (*.3g2,*.3gp,*.3gp2,*.3gpp,*.amr,*.amv,*.asf,*.avi,*.bdmv,*.bik,*.d2v,*.divx,*.drc,*.dsa,*.dsm,*.dss,*.dsv,*.evo,*.f4v,*.flc,*.fli,*.flic,*.flv,*.hdmov,*.ifo,*.ivf,*.m1v,*.m2p,*.m2t,*.m2ts,*.m2v,*.m4b,*.m4p,*.m4v,*.mkv,*.mp2v,*.mp4,*.mp4v,*.mpe,*.mpeg,*.mpg,*.mpls,*.mpv2,*.mpv4,*.mov,*.mts,*.ogm,*.ogv,*.pss,*.pva,*.qt,*.ram,*.ratdvd,*.rm,*.rmm,*.rmvb,*.roq,*.rpm,*.smil,*.smk,*.swf,*.tp,*.tpr,*.ts,*.vob,*.vp6,*.webm,*.wm,*.wmp,*.wmv) do if exist %%i md "Video" & move "%%i" "Video">>Actions-performed.txt & cls
::Audio files
for %%i in (*.aac,*.ac3,*.aif,*.aifc,*.aiff,*.au,*.cda,*.dts,*.fla,*.flac,it,*.m1a,*.m2a,*.m3u,*.m4a,*.mid,*.midi,*.mka,*.mod,*.mp2,*.mp3,*.mpa,*.ogg,*.ra,*.rmi,*.spc,*.rmi,*.snd,*.umx,*.voc,*.wav,*.wma) do if exist %%i md "אודיו" & move "%%i" "אודיו">>Actions-performed.txt & cls
::Archive files
for %%i in (*.7z,*.ace,*.arj,*.bz2,*.cab,*.gz,*.gzip,*.jar,*.r00,*.r01,*.r02,*.r03,*.r04,*.r05,*.r06,*.r07,*.r08,*.r09,*.r10,*.r11,*.r12,*.r13,*.r14,*.r15,*.r16,*.r17,*.r18,*.r19,*.r20,*.r21,*.r22,*.r23,*.r24,*.r25,*.r26,*.r27,*.r28,*.r29,*.rar,*.tar,*.tgz,*.z,*.zip) do if exist %%i md "Archive files" & move "%%i" "Archive files" >>Actions-performed.txt & cls
::Execution files
for %%i in (*.exe,*.msi,*.msp,*.scr) do md "Execution files" & move "%%i" "Execution files">>Actions-performed.txt & cls
::Applications
for %%i in (*.apk,*.apk) do md "Execution files\אפליקציות" & move "%%i" "Execution files\Applications">>Actions-performed.txt & cls
::Scripts
for %%i in (*.bat,*.cmd,*.ps1,*.reg,*.py) do md "Execution files/Scripts" & move "%%i" "Execution files/Scripts">>Actions-performed.txt & cls
::file iso
for %%i in (*.img,*.iso) do md "Execution files/file ISO" & move "%%i" "Execution files/file ISO">>Actions-performed.txt & cls
::photo
for %%i in (*.bmp,*.gif,*.ico,*.jpe,*.jpeg,*.jpg,*.pcx,*.png,*.psd,*.tga,*.tif,*.tiff,*.wmf)  do md "photo" & move "%%i" "photo">>Actions-performed.txt & cls

Version 1
echo ================
if exist Actions-performed (
echo :Number of files transferred & find /c "1" Actions performed.txt & del Actions-performed.txt
) else (
echo No files found! & del Actions-performed.txt
)
echo.
echo ...Click something to exit & pause>nul 
exit

:exit
echo.
echo ...The program will close in a few seconds
timeout 3 >nul