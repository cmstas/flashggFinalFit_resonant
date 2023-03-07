#!/bin/bash

cd /home/users/iareed/CMSSW_10_2_13/src/flashggFinalFit/Combine

eval `scramv1 runtime -sh`

text2workspace.py Datacard.txt -o Datacard_2HDM_M250.root -m 125 higgsMassRange=122,128 -P HiggsAnalysis.CombinedLimit.PhysicsModel:multiSignalModel   --PO "map=.*/2HDMbbM250.*:r[1,0,2]"   --PO "map=.*/2HDMWWM250.*:r[1,0,2]"   --PO "map=.*/2HDMTAUTAUM250.*:r[1,0,2]"