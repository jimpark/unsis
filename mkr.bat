@echo off
if not exist .instdist goto scons
rm -rf .instdist
:scons
scons UNICODE=no NSIS_MAX_STRLEN=8196 NSIS_CONFIG_LOG=yes dist | tee mkr.out
if exist .instdist goto copyfiles
:copyfiles
