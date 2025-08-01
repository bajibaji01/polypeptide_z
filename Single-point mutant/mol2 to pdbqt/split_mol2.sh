#!/bin/bash
csplit -f ligand_ -b "%03d.mol2" Spmps.mol2 '/@<TRIPOS>MOLECULE/' '{*}'
