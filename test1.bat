@echo off
if not defined TAG (
    set TAG=1
    start wt -p "cmd" %0
    :: Windows Terminal 中 cmd 的配置名，我这里是“cmd”
    exit
)

chcp 65001
:: 用 vscode 写的，默认编码是 utf-8
cd %userprofile%/desktop
echo cd /d %~dp0
python school.py
dir
pause

