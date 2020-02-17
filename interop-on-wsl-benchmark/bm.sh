#!/bin/bash
n=20

echo "Average time to get the branch name of the current build from "
echo "HKLM\\Software\\Microsoft\\Windows NT\\CurrentVersion\\BuildBranch;"
echo "unit in seconds."
echo

echo real,user,sys > "cmd_output.tmp" > "psh_output.tmp" > "dexec_output.tmp"
for i in $(seq $n); do
    /usr/bin/time --output "cmd_output.tmp" --append --format '%e,%U,%S' ./cmd_sample.sh  >/dev/null
    /usr/bin/time --output "psh_output.tmp" --append --format '%e,%U,%S' ./psh_sample.sh  >/dev/null
    /usr/bin/time --output "dexec_output.tmp" --append --format '%e,%U,%S' ./dexec_sample.sh  >/dev/null
done

echo
{
echo "type real user sys"
Rscript --vanilla -e "b=read.csv(file='cmd_output.tmp'); summary(b); options(digits=3); sapply(b, sd);" | grep Mean | sed -e 's/Mean\s*://g' -e 's/^ /cmd /g' | tr -s " "
Rscript --vanilla -e "b=read.csv(file='psh_output.tmp'); summary(b); options(digits=3); sapply(b, sd);" | grep Mean | sed -e 's/Mean\s*://g' -e 's/^ /powershell /g' | tr -s " "
Rscript --vanilla -e "b=read.csv(file='dexec_output.tmp'); summary(b); options(digits=3); sapply(b, sd);" | grep Mean | sed -e 's/Mean\s*://g' -e 's/^ /exec /g' | tr -s " "
} | column  -t


rm -rf "cmd_output.tmp" "psh_output.tmp" "dexec_output.tmp"