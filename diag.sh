#!/bin/bash
echo "--- SYSTEM DIAGNOSTICS ---"
echo "Ubuntu Version:"
cat /etc/os-release | grep PRETTY_NAME
echo ""
echo "CPU Info:"
lscpu | grep -E '^CPU\(s\)|^Model name'
echo ""
echo "Memory Info:"
free -h
echo ""
echo "Disk Info:"
df -h /
echo ""
echo "--- DEPENDENCY CHECKS ---"
for cmd in gcc g++ gfortran cmake make git curl wget python3 conda aws mpirun ncdump; do
    if command -v $cmd >/dev/null 2>&1; then
        echo "$cmd: FOUND ($($cmd --version | head -n 1))"
    else
        echo "$cmd: NOT FOUND"
    fi
done

echo ""
echo "--- ENV VARS ---"
echo "CC: $CC"
echo "CXX: $CXX"
echo "FC: $FC"
echo "NETCDF_HOME: $NETCDF_HOME"
