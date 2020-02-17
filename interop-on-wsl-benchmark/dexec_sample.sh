#!/bin/bash
    branch=$(reg.exe query "HKLM\\Software\\Microsoft\\Windows NT\\CurrentVersion" /v BuildBranch | tail -n 2 | head -n 1 | sed -e 's|\r||g')
    branch=${branch##* }