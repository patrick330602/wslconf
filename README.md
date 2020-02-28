# Scripting with WSL interoperability: Tips & Tricks

This is the tech resource page for everything talked about or not talked about in the Session **Scripting with WSL interoperability: Tips & Tricks** on **WSLconf**.

Powerpoint can be retrieved here: <>

## WSL Feature Availability on a different version

| | 1607 | 1703 | 1709 | 1803, 1809 | 1903, 1909 | 2004 |
|---:|:---:|:---:|:---:|:---:|:---:|:---:|
| lxrun.exe | ✓ | ✓ | ✓ | | | |
| bash.exe/wslconfig.exe | ✓ | ✓ | ✓\*1 | ✓\*1 | ✓\*1 | ✓\*1 |
| \<distro\>.exe | | |✓|✓|✓|✓|
| wsl.exe | | | ✓ | ✓ | ✓\*2 | ✓\*2 |
| WSL Interoperability | |✓|✓|✓|✓|✓|
| DrvFS Mounting| | |✓|✓|✓|✓|
|wsl.conf | | | | ✓ | ✓\*2|✓\*2|
| $WSL_DISTRO_NAME| | | | |✓|✓|
| $WSLENV| | | |✓|✓|✓|
| \\\\wsl\$\\ | | | | |✓|✓|
| WSL2| | | | | |✓|
| /mnt/wsl/| | | | | |✓|


## License
<img width="150" src="https://www.gnu.org/graphics/gplv3-with-text-136x68.png">

All scripts and/or contents here are released under [GPLv3](LICENSE) License.

