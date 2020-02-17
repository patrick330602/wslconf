#!/bin/bash
branch=$(powershell.exe -NonInteractive -NoProfile -Command "(Get-ItemProperty 'HKLM:\\Software\\Microsoft\\Windows NT\\CurrentVersion').'BuildBranch'" | cat)