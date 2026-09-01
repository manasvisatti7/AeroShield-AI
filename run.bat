@echo off
echo Starting AeroShield AI Server...
start python server.py
timeout /t 3
start index.html