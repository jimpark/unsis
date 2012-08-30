@echo off
if not exist .instdist goto scons
rm -rf .instdist
:scons
scons DISTSUFFIX="-watchtower" UNICODE=yes INTERNAL=yes NSIS_MAX_STRLEN=8196 NSIS_CONFIG_LOG=yes dist | tee mkwt.out
if exist .instdist goto copyfiles
:copyfiles
