@echo off
setlocal enabledelayedexpansion
cd /d "C:\Users\zh86z\Desktop\dock"
wsl.exe bash -lc "cd /mnt/c/Users/zh86z/Desktop/dock && bash split_mol2.sh"
for %%f in (ligand_*.mol2) do (
  echo Processing %%f
  "D:\PyRx\python.exe" ^
    "C:\Users\zh86z\Desktop\dock\prepare_ligand4.py" ^
    -l "%%f" -o "%%~nf.pdbqt" -v
)

endlocal
pause
