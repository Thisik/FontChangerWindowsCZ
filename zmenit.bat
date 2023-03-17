@echo off
title Menic pisma
echo Jdete do nastaveni a zkopirujte nazev pisma, ktery se vam bude libit - napr. Jokerman.
echo Az budes mit vybrano a zkopirovano, stiskni zde libovolnou klavesu
pause > nul
set /p pismo=Jake chces pismo?
echo Stiskni cokoliv pro zmeneni pisma.
pause > nul
echo Windows Registry Editor Version 5.00 > pismo.reg
echo. >> pismo.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts] >> pismo.reg
echo "Segoe UI (TrueType)"="" >> pismo.reg
echo "Segoe UI Bold (TrueType)"="" >> pismo.reg
echo "Segoe UI Bold Italic (TrueType)"="" >> pismo.reg
echo "Segoe UI Italic (TrueType)"="" >> pismo.reg
echo "Segoe UI Light (TrueType)"="" >> pismo.reg
echo "Segoe UI Semibold (TrueType)"="" >> pismo.reg
echo "Segoe UI Symbol (TrueType)"="" >> pismo.reg
echo. >> pismo.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\FontSubstitutes] >> pismo.reg
echo. >> pismo.reg
echo "Segoe UI"="%pismo%" >> pismo.reg
start pismo.reg
echo DOKONCENO! PO APLIKOVANI ZMEN JE POTREBA RESTART. SKISKNI LIBOVOLNOU KLAVESU PRO RESTART
shutdown -r -t 0
exit