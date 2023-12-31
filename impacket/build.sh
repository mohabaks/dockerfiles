#!/bin/sh
pip install pyinstaller impacket
pip install -r requirements.txt

for i in examples/*
do
    pyinstaller -F $i
done