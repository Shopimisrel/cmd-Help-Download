# cmd-Help-Download
Will arrange the downloads folder for you


@echo off
chcp 1255>nul
color b
title מסדר ההורדות 5.0

echo.
echo.
choice /c 12 /m ">>> 2 שקה תורחא תויקיתל 1 שקה תודרוהה תייקית תא רדסל ןיינועמ התא םא"
if errorlevel 2 goto choice
if errorlevel 1 goto start
:choice
cls
echo.
echo.
echo ןולחה ךותל היוצר היקית רורג
set/p p=">>>"
goto start2
:start
cd /d "%userprofile%\downloads"
:start2
cd /d %p%
:go
::מסמכים
for %%i in (*.chm,*.cpp,*.pub,*.pubx,*.csv,*.cxx,*.doc,*.docm,*.docx,*.dot,*.dotm,*.dotx,*.h,*.hpp,*.htm,*.html,*.hxx,*.ini,*.java,*.lua,*.mht,*.mhtml,*.odt,*.pdf,*.potx,*.potm,*.ppam,*.ppsm,*.ppsx,*.pps,*.ppt,*.pptm,*.pptx,*.rtf,*.sldm,*.sldx,*.thmx,*.txt,*.vsd,*.wpd,*.wps,*.wri,*.xlam,*.xls,*.xlsb,*.xlsm,*.xlsx,*.xltm,*.xltx,*.xml) do if exist %%i md "מסמכים" & move "%%i" "מסמכים">>סיכום.txt & cls
::פונטים
for %%i in (*.ttf,*.fnt,*.otf) do md "קבצי הרצה/גופנים" & move "%%i" "קבצי הרצה/גופנים">>סיכום.txt & cls
::אדובי
for %%i in (*.ai,*.psd,*.indd) do md "מסמכים\קבצי אדוב" & move "%%i" "מסמכים\קבצי אדוב">>סיכום.txt & cls
::קבצי וידאו
for %%i in (*.3g2,*.3gp,*.3gp2,*.3gpp,*.amr,*.amv,*.asf,*.avi,*.bdmv,*.bik,*.d2v,*.divx,*.drc,*.dsa,*.dsm,*.dss,*.dsv,*.evo,*.f4v,*.flc,*.fli,*.flic,*.flv,*.hdmov,*.ifo,*.ivf,*.m1v,*.m2p,*.m2t,*.m2ts,*.m2v,*.m4b,*.m4p,*.m4v,*.mkv,*.mp2v,*.mp4,*.mp4v,*.mpe,*.mpeg,*.mpg,*.mpls,*.mpv2,*.mpv4,*.mov,*.mts,*.ogm,*.ogv,*.pss,*.pva,*.qt,*.ram,*.ratdvd,*.rm,*.rmm,*.rmvb,*.roq,*.rpm,*.smil,*.smk,*.swf,*.tp,*.tpr,*.ts,*.vob,*.vp6,*.webm,*.wm,*.wmp,*.wmv) do if exist %%i md "וידאו" & move "%%i" "וידאו">>סיכום.txt & cls
::קבצי שמע
for %%i in (*.aac,*.ac3,*.aif,*.aifc,*.aiff,*.au,*.cda,*.dts,*.fla,*.flac,it,*.m1a,*.m2a,*.m3u,*.m4a,*.mid,*.midi,*.mka,*.mod,*.mp2,*.mp3,*.mpa,*.ogg,*.ra,*.rmi,*.spc,*.rmi,*.snd,*.umx,*.voc,*.wav,*.wma) do if exist %%i md "אודיו" & move "%%i" "אודיו">>סיכום.txt & cls
::קבצי ארכיון
for %%i in (*.7z,*.ace,*.arj,*.bz2,*.cab,*.gz,*.gzip,*.jar,*.r00,*.r01,*.r02,*.r03,*.r04,*.r05,*.r06,*.r07,*.r08,*.r09,*.r10,*.r11,*.r12,*.r13,*.r14,*.r15,*.r16,*.r17,*.r18,*.r19,*.r20,*.r21,*.r22,*.r23,*.r24,*.r25,*.r26,*.r27,*.r28,*.r29,*.rar,*.tar,*.tgz,*.z,*.zip) do if exist %%i md "קבצי ארכיון" & move "%%i" "קבצי ארכיון" >>סיכום.txt & cls
::קבצי הרצה
for %%i in (*.exe,*.msi,*.msp,*.scr) do md "קבצי הרצה" & move "%%i" "קבצי הרצה">>סיכום.txt & cls
::אפליקציות
for %%i in (*.apk,*.apk) do md "קבצי הרצה\אפליקציות" & move "%%i" "קבצי הרצה\אפליקציות">>סיכום.txt & cls
::סקריפטים
for %%i in (*.bat,*.cmd,*.ps1,*.reg,*.py) do md "קבצי הרצה/סקריפטים" & move "%%i" "קבצי הרצה/סקריפטים">>סיכום.txt & cls
::קבצי איסו
for %%i in (*.img,*.iso) do md "קבצי הרצה/קבצי ISO" & move "%%i" "קבצי הרצה/קבצי ISO">>סיכום.txt & cls
::תמונות
for %%i in (*.bmp,*.gif,*.ico,*.jpe,*.jpeg,*.jpg,*.pcx,*.png,*.psd,*.tga,*.tif,*.tiff,*.wmf)  do md "תמונות" & move "%%i" "תמונות">>סיכום.txt & cls

echo 5.0 תודרוהה רדסמ
echo ================
if exist םוכיס (
echo :ורבעוהש םיצבקה רפסמ & find /c "1" סיכום.txt & del סיכום.txt
) else (
echo םיצבק ואצמנ אל! & del סיכום.txt
)
echo.
echo ...תינכותה תא רוגסל ידכ והשלכ שקמ לע ץחל & pause>nul 
exit

:exit
echo.
echo ...תוינש רפסמ ךות רגסית תינכותה
timeout 3 >nul
