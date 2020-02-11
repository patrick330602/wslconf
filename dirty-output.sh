#!/bin/bash

echo "execution result of the command"
echo "\`reg.exe query \"HKLM\\Software\\Microsoft\\Windows NT\\CurrentVersion\" /v BuildBranch\`:"
echo
reg.exe query "HKLM\\Software\\Microsoft\\Windows NT\\CurrentVersion" /v BuildBranch | cat -A
echo
echo "execution result of the command"
echo "\`powershell.exe -NonInteractive -NoProfile -Command \"(Get-ItemProperty 'HKLM:\\Software\\Microsoft\\Windows NT\\CurrentVersion').'BuildBranch'\"\`:"
echo
powershell.exe -NonInteractive -NoProfile -Command "(Get-ItemProperty 'HKLM:\\Software\\Microsoft\\Windows NT\\CurrentVersion').'BuildBranch'" | cat -A