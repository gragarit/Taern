@echo off
@chcp 65001
echo.
title Taern Skin Changer
color 0a
echo ======================
echo   Taern Skin Changer
echo ======================
echo.

goto menu

:menu
echo.
echo   Aby przejść dalej skopiuj pliki
echo.
echo   1 - Nadaj Uprawnienia
echo   2 - Skopiuj Pliki
echo   3 - Przejście Dalej (jeśli skopiowałeś/aś pliki)
echo   4 - Wyjście
echo.
set /p wybieram:=Wybieram: 
if %wybieram:%==1 goto conf
if %wybieram:%==2 goto pliki
if %wybieram:%==3 goto eq
if %wybieram:%==4 goto exit

:conf
cls
echo.
echo Podaj dysk instalacyjny taerna (z dużej litery)
echo.
set /p dysk=Dysk: 
icacls "%dysk%:\Program Files (x86)\Whitemoon" /grant wszyscy:(f) /t /c
cls
echo.
goto menu

:pliki
cls
echo.
echo Podaj dysk instalacyjny taerna (z dużej litery)
echo.
set /p dysk:=Dysk: 
mkdir %dysk:%:\sprzet
xcopy "%dysk:%:\Program Files (x86)\Whitemoon\Taern\client\grafika\sprzet\"  %dysk:%:\sprzet\ /s /y
cls
echo.
echo Skopiowanie przeszło pomyślnie (Aby przejść dalej kliknij enter)
goto eq

:eq
cls
echo.
echo   1 - Ubiór
echo   2 - Broń
echo   3 - Otwarcie Pliku (Wygląd itemku w excelu)
echo   4 - Cofajnięcie zmian
echo   5 - Wyjście
echo.
set /p wybieram=Wybieram: 
echo.
if %wybieram%==1 goto ubior
if %wybieram%==2 goto bron
if %wybieram%==3 goto excel
if %wybieram%==4 goto cofanko
if %wybieram%==5 goto exit

:excel
cls
echo.
".\Taern Skin Changer.xlsx"
echo.
echo Plik otwarty (Kliknij enter aby powrócić)
echo.
pause>nul
goto eq

:cofanko
cls
echo.
echo Podaj dysk instalacyjny taerna
echo.
set /p Dysk:=Dysk: 
xcopy C:\sprzet "%Dysk:%:\Program Files (x86)\Whitemoon\Taern\client\grafika\sprzet\" /s /y
echo.
cls
echo.
echo Cofanie zaakceptowane (Kliknij enter aby powrócić do menu)
pause>nul
goto eq


:ubior
cls
echo.
echo Ubiór
echo.
echo   1 - Hełm
echo   2 - Zbroja
echo   3 - Spodnie
echo   4 - Buty
echo   5 - Peleryna
echo   6 - Cofajnięcie zmian
echo   7 - Powrót
echo.
set /p wybieram=Wybieram: 
echo.
if %wybieram%==1 goto helmy
if %wybieram%==2 goto zbroje
if %wybieram%==3 goto spodnie
if %wybieram%==4 goto buty
if %wybieram%==5 goto peleryny
if %wybieram%==6 goto cofanko
if %wybieram%==7 goto eq

:helmy
cls
echo.
echo Hełmy
echo.
echo Jaki Skin chcesz nałożyć (Podaj numerek przypisany w excelu do danego itemku)
echo.
set /p skin=Skin: 
echo.
echo Na jaki itemek chcesz nałożyć skin
echo.
set /p skinq=Skin: 
echo.
echo Podaj dysk instalacyjny Taerna
echo.
set /p dysk=Dysk: 
xcopy %dysk%:\sprzet\helmy\%skin% "%dysk%:\Program Files (x86)\Whitemoon\Taern\client\grafika\sprzet\helmy\%skinq%" /s /y
cls
echo.
echo Zamiana zaakceptowana (Kliknij enter aby powrócić do ubioru)
pause>nul
goto ubior

:zbroje
cls
echo.
echo Zbroje
echo.
echo Jaki Skin chcesz nałożyć (Podaj numerek przypisany w excelu do danego itemku)
echo.
set /p skin=Skin: 
echo.
echo Na jaki itemek chcesz nałożyć skin
echo.
set /p skinq=Skin: 
echo.
echo Podaj dysk instalacyjny Taerna
echo.
set /p dysk=Dysk: 
xcopy %dysk%:\sprzet\zbroje\%skin% "%dysk%:\Program Files (x86)\Whitemoon\Taern\client\grafika\sprzet\zbroje\%skinq%" /s /y
cls
echo.
echo Zamiana zaakceptowana (Kliknij enter aby powrócić do ubioru)
pause>nul
goto ubior

:spodnie
cls
echo.
echo Spodnie
echo.
echo Jaki Skin chcesz nałożyć (Podaj numerek przypisany w excelu do danego itemku)
echo.
set /p skin=Skin: 
echo.
echo Na jaki itemek chcesz nałożyć skin
echo.
set /p skinq=Skin: 
echo.
echo Podaj dysk instalacyjny Taerna
echo.
set /p dysk=Dysk: 
xcopy %dysk%:\sprzet\spodnie\%skin% "%dysk%:\Program Files (x86)\Whitemoon\Taern\client\grafika\sprzet\spodnie\%skinq%" /s /y
cls
echo.
echo Zamiana zaakceptowana (Kliknij enter aby powrócić do ubioru)
pause>nul
goto ubior

:buty
cls
echo.
echo Buty
echo.
echo Jaki Skin chcesz nałożyć (Podaj numerek przypisany w excelu do danego itemku)
echo.
set /p skin=Skin: 
echo.
echo Na jaki itemek chcesz nałożyć skin
echo.
set /p skinq=Skin: 
echo.
echo Podaj dysk instalacyjny Taerna
echo.
set /p dysk=Dysk: 
xcopy %dysk%:\sprzet\buty\%skin% "%dysk%:\Program Files (x86)\Whitemoon\Taern\client\grafika\sprzet\buty\%skinq%" /s /y
cls
echo.
echo Zamiana zaakceptowana (Kliknij enter aby powrócić do ubioru)
pause>nul
goto ubior

:peleryny
cls
echo.
echo Peleryny
echo.
echo Jaki Skin chcesz nałożyć (Podaj numerek przypisany w excelu do danego itemku)
echo.
set /p skin=Skin: 
echo.
echo Na jaki itemek chcesz nałożyć skin
echo.
set /p skinq=Skin: 
echo.
echo Podaj dysk instalacyjny Taerna
echo.
set /p dysk=Dysk: 
xcopy %dysk%:\sprzet\plaszcze\%skin% "%dysk%:\Program Files (x86)\Whitemoon\Taern\client\grafika\sprzet\plaszcze\%skinq%" /s /y
cls
echo.
echo Zamiana zaakceptowana (Kliknij enter aby powrócić do ubioru)
pause>nul
goto ubior

:bron
cls
echo.
echo Broń
echo   1 - Miecze
echo   2 - Miecze Dwuręczne
echo   3 - Tarcze
echo   4 - Laski
echo   5 - Topory
echo   6 - Topory Dwuręczne
echo   7 - Młoty
echo   8 - Młoty Dwuręczne
echo   9 - Łuki
echo   10 - Powrót
echo.
echo Wybierz broń
echo.
set /p bron=Broń: 
if %bron%==1 goto miecze
if %bron%==2 goto md
if %bron%==3 goto tarcze
if %bron%==4 goto laski
if %bron%==5 goto topory
if %bron%==6 goto td
if %bron%==7 goto mloty
if %bron%==8 goto mld
if %bron%==9 goto luki
if %bron%==10 goto ubior

:miecze
cls
echo.
echo Miecze
echo.
echo Jaki Skin chcesz nałożyć (Podaj numerek przypisany w excelu do danego itemku)
echo.
set /p skin=Skin: 
echo.
echo Na jaki itemek chcesz nałożyć skin
echo.
set /p skinq=Skin: 
echo.
echo Podaj dysk instalacyjny Taerna
echo.
set /p dysk=Dysk: 
xcopy %dysk%:\sprzet\miecze\%skin% "%dysk%:\Program Files (x86)\Whitemoon\Taern\client\grafika\sprzet\miecze\%skinq%" /s /y
cls
echo.
echo Zamiana zaakceptowana (Kliknij enter aby powrócić do ubioru)
pause>nul
goto bron

:md
cls
echo.
echo Miecze Dwuręczne
echo.
echo Jaki Skin chcesz nałożyć (Podaj numerek przypisany w excelu do danego itemku)
echo.
set /p skin=Skin: 
echo.
echo Na jaki itemek chcesz nałożyć skin
echo.
set /p skinq=Skin: 
echo.
echo Podaj dysk instalacyjny Taerna
echo.
set /p dysk=Dysk: 
xcopy %dysk%:\sprzet\miecze_dwureczne\%skin% "%dysk%:\Program Files (x86)\Whitemoon\Taern\client\grafika\sprzet\miecze_dwureczne\%skinq%" /s /y
cls
echo.
echo Zamiana zaakceptowana (Kliknij enter aby powrócić do ubioru)
pause>nul
goto bron

:tarcze
cls
echo.
echo Tarcze
echo.
echo Jaki Skin chcesz nałożyć (Podaj numerek przypisany w excelu do danego itemku)
echo.
set /p skin=Skin: 
echo.
echo Na jaki itemek chcesz nałożyć skin
echo.
set /p skinq=Skin: 
echo.
echo Podaj dysk instalacyjny Taerna
echo.
set /p dysk=Dysk: 
xcopy %dysk%:\sprzet\tarcze\%skin% "%dysk%:\Program Files (x86)\Whitemoon\Taern\client\grafika\sprzet\tarcze\%skinq%" /s /y
cls
echo.
echo Zamiana zaakceptowana (Kliknij enter aby powrócić do ubioru)
pause>nul
goto bron

:laski
cls
echo.
echo Laski
echo.
echo Jaki Skin chcesz nałożyć (Podaj numerek przypisany w excelu do danego itemku)
echo.
set /p skin=Skin: 
echo.
echo Na jaki itemek chcesz nałożyć skin
echo.
set /p skinq=Skin: 
echo.
echo Podaj dysk instalacyjny Taerna
echo.
set /p dysk=Dysk: 
xcopy %dysk%:\sprzet\kije\%skin% "%dysk%:\Program Files (x86)\Whitemoon\Taern\client\grafika\sprzet\kije\%skinq%" /s /y
cls
echo.
echo Zamiana zaakceptowana (Kliknij enter aby powrócić do ubioru)
pause>nul
goto bron

:topory
cls
echo.
echo Topory
echo.
echo Jaki Skin chcesz nałożyć (Podaj numerek przypisany w excelu do danego itemku)
echo.
set /p skin=Skin: 
echo.
echo Na jaki itemek chcesz nałożyć skin
echo.
set /p skinq=Skin: 
echo.
echo Podaj dysk instalacyjny Taerna
echo.
set /p dysk=Dysk: 
xcopy %dysk%:\sprzet\topory\%skin% "%dysk%:\Program Files (x86)\Whitemoon\Taern\client\grafika\sprzet\topory\%skinq%" /s /y
cls
echo.
echo Zamiana zaakceptowana (Kliknij enter aby powrócić do ubioru)
pause>nul
goto bron

:td
cls
echo.
echo Topory Dwuręczne
echo.
echo Jaki Skin chcesz nałożyć (Podaj numerek przypisany w excelu do danego itemku)
echo.
set /p skin=Skin: 
echo.
echo Na jaki itemek chcesz nałożyć skin
echo.
set /p skinq=Skin: 
echo.
echo Podaj dysk instalacyjny Taerna
echo.
set /p dysk=Dysk: 
xcopy %dysk%:\sprzet\topory_dwureczne\%skin% "%dysk%:\Program Files (x86)\Whitemoon\Taern\client\grafika\sprzet\topory_dwureczne\%skinq%" /s /y
cls
echo.
echo Zamiana zaakceptowana (Kliknij enter aby powrócić do ubioru)
pause>nul
goto bron

:mloty
cls
echo.
echo Młoty
echo.
echo Jaki Skin chcesz nałożyć (Podaj numerek przypisany w excelu do danego itemku)
echo.
set /p skin=Skin: 
echo.
echo Na jaki itemek chcesz nałożyć skin
echo.
set /p skinq=Skin: 
echo.
echo Podaj dysk instalacyjny Taerna
echo.
set /p dysk=Dysk: 
xcopy %dysk%:\sprzet\mloty\%skin% "%dysk%:\Program Files (x86)\Whitemoon\Taern\client\grafika\sprzet\mloty\%skinq%" /s /y
cls
echo.
echo Zamiana zaakceptowana (Kliknij enter aby powrócić do ubioru)
pause>nul
goto bron

:mld
cls
echo.
echo Młoty Dwuręczne
echo.
echo Jaki Skin chcesz nałożyć (Podaj numerek przypisany w excelu do danego itemku)
echo.
set /p skin=Skin: 
echo.
echo Na jaki itemek chcesz nałożyć skin
echo.
set /p skinq=Skin: 
echo.
echo Podaj dysk instalacyjny Taerna
echo.
set /p dysk=Dysk: 
xcopy %dysk%:\sprzet\mloty_dwureczne\%skin% "%dysk%:\Program Files (x86)\Whitemoon\Taern\client\grafika\sprzet\mloty_dwureczne\%skinq%" /s /y
cls
echo.
echo Zamiana zaakceptowana (Kliknij enter aby powrócić do ubioru)
pause>nul
goto bron

:luki
cls
echo.
echo Łuki
echo.
echo Jaki Skin chcesz nałożyć (Podaj numerek przypisany w excelu do danego itemku)
echo.
set /p skin=Skin: 
echo.
echo Na jaki itemek chcesz nałożyć skin
echo.
set /p skinq=Skin: 
echo.
echo Podaj dysk instalacyjny Taerna
echo.
set /p dysk=Dysk: 
xcopy %dysk%:\sprzet\luki\%skin% "%dysk%:\Program Files (x86)\Whitemoon\Taern\client\grafika\sprzet\luki\%skinq%" /s /y
cls
echo.
echo Zamiana zaakceptowana (Kliknij enter aby powrócić do ubioru)
pause>nul
goto bron

