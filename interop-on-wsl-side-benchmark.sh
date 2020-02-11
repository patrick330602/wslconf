#!/bin/bash
# Get 
function cmd_version {
    branch=$((cd /mnt/c && cmd.exe /C "reg.exe query "HKLM\\Software\\Microsoft\\Windows NT\\CurrentVersion" /v BuildBranch") | tail -n 2 | head -n 1 | sed -e 's|\r||g')
    branch=${branch##* }
    echo "$branch"
}

function dexec_version {
    branch=$(reg.exe query "HKLM\\Software\\Microsoft\\Windows NT\\CurrentVersion" /v BuildBranch | tail -n 2 | head -n 1 | sed -e 's|\r||g')
    branch=${branch##* }
    echo "$branch"
}

function psh_version {
    branch=$(powershell.exe -NonInteractive -NoProfile -Command "(Get-ItemProperty 'HKLM:\\Software\\Microsoft\\Windows NT\\CurrentVersion').'BuildBranch'" | cat)
    echo "$branch"
}

echo "Getting the branch name of the current build from "
echo "HKLM\\Software\\Microsoft\\Windows NT\\CurrentVersion\\BuildBranch"
echo
echo "cmd.exe method:"
time cmd_version
echo
echo "powershell method:"
time psh_version
echo
echo "direct exec method:"
time dexec_version
