//Maya ASCII 2017ff05 scene
//Name: Game Mine.ma
//Last modified: Sat, Feb 24, 2018 03:09:21 PM
//Codeset: 1252
requires maya "2017ff05";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2017";
fileInfo "version" "2017";
fileInfo "cutIdentifier" "201706020738-1017329";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "D9173DCE-4177-8551-8469-769AF404CA02";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 23.788582112739967 11.094520525003658 -2.9583208231567113 ;
	setAttr ".r" -type "double3" -18.93835273154604 -626.59999999988452 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "F2A505AB-4F11-D64E-49FB-0BA8C8B374F0";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 29.415892512594525;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 2.7584585845472613 0.038597090628072817 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "6074096B-4E03-9554-0326-24A66545E130";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "F6DA47AB-44C0-B188-7A20-9DA81F0CEA31";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "EFB648B5-4B42-3678-9A46-4782EC3F9B83";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 5.9604644775390625e-008 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "BEE1A57E-4A41-AFEF-CEFD-DABDBA81F6E0";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.0999999701977;
	setAttr ".ow" 14.102449818239297;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 5.9604644775390625e-008 0 2.9802322387695313e-008 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "064644D4-40DF-6493-8924-25A42BF2292A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "8463B0A0-430E-86BE-0A08-BBAD663F6739";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "Rocks";
	rename -uid "03EF6020-4F19-9C6A-6713-74B8E8382676";
	setAttr ".t" -type "double3" -5.591213063246891 0 0 ;
	setAttr ".r" -type "double3" 0 22.5 0 ;
	setAttr ".s" -type "double3" 5.7194718604927006 5.7194718604927006 5.7194718604927006 ;
createNode mesh -n "RocksShape" -p "Rocks";
	rename -uid "76F26AC7-4AE4-D115-7D5B-9AB7334D3793";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5000000074505806 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 134 ".uvst[0].uvsp[0:133]" -type "float2" 0 0.5 0.125 0.5 0.25
		 0.5 0.375 0.5 0.5 0.5 0.75 0.5 0.875 0.5 1 0.5 0 0.625 0.125 0.625 0.25 0.625 0.375
		 0.625 0.5 0.625 0.625 0.625 0.75 0.625 0.875 0.625 1 0.625 0 0.75 0.125 0.75 0.25
		 0.75 0.375 0.75 0.5 0.75 0.625 0.75 0.75 0.75 0.875 0.75 1 0.75 0 0.875 0.125 0.875
		 0.25 0.875 0.375 0.875 0.5 0.875 0.625 0.875 0.75 0.875 0.875 0.875 1 0.875 0.0625
		 1 0.1875 1 0.3125 1 0.4375 1 0.5625 1 0.6875 1 0.8125 1 0.9375 1 0.84841305 0.5 0.84841305
		 0.625 0.84841305 0.75 0.84841305 0.875 0.77407807 0.5 0.77407807 0.625 0.77407807
		 0.75 0.77407807 0.87499994 0.82779145 0.9694171 0.92220855 0.9694171 0 0 1 0 0.5
		 1 0 1 0 0 1 0 0.5 1 0 0 1 0 1 1 0 0.75 0.125 0.75 0.125 0.875 0.875 0.75 1 0.75 0.875
		 0.875 0.0625 1 0.9375 1 0.92220855 0.9694171 0.5 0.5 0.625 0.5 0.625 0.625 0.5 0.625
		 0.75 0.5 0.75 0.625 0.375 0.75 0.5 0.75 0.375 0.875 0.625 0.75 0.625 0.875 0.4375
		 1 0.5625 1 0 0.5 0.125 0.5 0.125 0.625 0 0.625 0.625 0.55350411 0.5 0.55350411 0.5
		 0.55350411 0.375 0.55350411 0.25 0.55350411 0.125 0.55350411 0.125 0.55350411 0 0.55350411
		 1 0.55350411 0 0.55350411 0.875 0.55350411 0.4280329 0 0.84841305 0.55350411 0.21401645
		 1 0.78598356 1 0.77407813 0.55350411 0.57196712 0 0.75 0.55350411 0.75 0.55350411
		 0.625 0.625 0.75 0.625 0.75 0.55350411 0.75 0.5 0.5 0.5 0.5 0.55350411 0.5 0.625
		 0 0.5 0 0.55350411 0 0.625 0.125 0.625 0.125 0.55350411 0.125 0.5 0.056809675 0.5
		 0.056809679 0.55350411 0.056809675 0.625 0.056809675 0.625 0.056809675 0.625 0.056809675
		 0.75 0.056809675 0.75 0.056809675 0.875 0.31325895 0.5 0.31325895 0.55350411 0.31325895
		 0.625 0.31325895 0.75 0.31325895 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 63 ".pt";
	setAttr ".pt[0]" -type "float3" -1.110223e-016 0 0.14225 ;
	setAttr ".pt[1]" -type "float3" 0.041389074 0 0.4586471 ;
	setAttr ".pt[2]" -type "float3" -1.110223e-016 0 0.19876912 ;
	setAttr ".pt[6]" -type "float3" -7.4505806e-009 2.646978e-023 -0.05587244 ;
	setAttr ".pt[7]" -type "float3" -1.110223e-016 -0.060546063 0.1313283 ;
	setAttr ".pt[8]" -type "float3" -1.110223e-016 -0.060546063 0.25993699 ;
	setAttr ".pt[9]" -type "float3" -1.110223e-016 0 0.18358096 ;
	setAttr ".pt[13]" -type "float3" -0.0081179142 -0.02812339 0.059777301 ;
	setAttr ".pt[14]" -type "float3" -4.4408921e-016 0 -0.063082725 ;
	setAttr ".pt[15]" -type "float3" 0.16289224 -6.6613381e-016 0.051806618 ;
	setAttr ".pt[16]" -type "float3" -0.014872827 0.10656071 0.1207421 ;
	setAttr ".pt[17]" -type "float3" -0.014872827 0.10656071 0.062301692 ;
	setAttr ".pt[21]" -type "float3" -0.086876944 0.085540444 0.27453011 ;
	setAttr ".pt[22]" -type "float3" 0.16289224 -6.6613381e-016 -0.093980446 ;
	setAttr ".pt[23]" -type "float3" -0.022815147 0.18996011 -0.0055475645 ;
	setAttr ".pt[24]" -type "float3" -0.014872827 0.10656071 -0.0024298476 ;
	setAttr ".pt[27]" -type "float3" 0.038973816 -0.035958119 0.068708889 ;
	setAttr ".pt[29]" -type "float3" -0.18276727 0.030636705 0.092277817 ;
	setAttr ".pt[31]" -type "float3" 0 0 -1.4901161e-008 ;
	setAttr ".pt[32]" -type "float3" 0.19167697 0.047813121 0.025284505 ;
	setAttr ".pt[33]" -type "float3" 0.093998052 -0.05388584 0.03893527 ;
	setAttr ".pt[36]" -type "float3" 0.11440514 0.047813121 -0.18631528 ;
	setAttr ".pt[38]" -type "float3" 0.064786516 0.091215089 0.019557625 ;
	setAttr ".pt[39]" -type "float3" -0.080935664 0 0.045493636 ;
	setAttr ".pt[40]" -type "float3" -0.027098805 0.03831958 0.065422304 ;
	setAttr ".pt[41]" -type "float3" 0.027098805 0.03831958 -0.065422304 ;
	setAttr ".pt[42]" -type "float3" -0.043736488 0 -0.044313107 ;
	setAttr ".pt[43]" -type "float3" 0.013667165 0.056260556 0.042928394 ;
	setAttr ".pt[44]" -type "float3" 0.013667165 0.056260556 0.071906947 ;
	setAttr ".pt[45]" -type "float3" 0.013667165 0.056260556 0.027454823 ;
	setAttr ".pt[46]" -type "float3" 0.013667165 0.056260556 0.014253577 ;
	setAttr ".pt[47]" -type "float3" 0.013667165 0.056260556 -0.025625009 ;
	setAttr ".pt[48]" -type "float3" 0.013667165 0.056260556 -0.024947602 ;
	setAttr ".pt[49]" -type "float3" 0.013667165 0.056260556 -0.020457948 ;
	setAttr ".pt[50]" -type "float3" 0.026752934 0.054752067 -0.0065708123 ;
	setAttr ".pt[58]" -type "float3" -0.05901143 -0.13851473 0.12097092 ;
	setAttr ".pt[61]" -type "float3" -0.013049876 -0.097269006 0.11966018 ;
	setAttr ".pt[64]" -type "float3" -1.110223e-016 0 0.3137643 ;
	setAttr ".pt[65]" -type "float3" -1.110223e-016 0 0.43729216 ;
	setAttr ".pt[66]" -type "float3" -1.110223e-016 0 0.33634597 ;
	setAttr ".pt[67]" -type "float3" -1.110223e-016 0 0.27015236 ;
	setAttr ".pt[72]" -type "float3" -1.110223e-016 0 0.1922681 ;
	setAttr ".pt[73]" -type "float3" 0.041389074 0 0.44945326 ;
	setAttr ".pt[74]" -type "float3" -1.110223e-016 0 0.41061518 ;
	setAttr ".pt[75]" -type "float3" -1.110223e-016 0 0.27883944 ;
	setAttr ".pt[76]" -type "float3" -1.110223e-016 0 0.13574898 ;
	setAttr ".pt[77]" -type "float3" -7.4505806e-009 0 -0.058958709 ;
	setAttr ".pt[79]" -type "float3" -0.046034984 0 0.018946482 ;
	setAttr ".pt[80]" -type "float3" -0.022195112 0 -0.038608015 ;
	setAttr ".pt[91]" -type "float3" -1.110223e-016 0 0.2099604 ;
	setAttr ".pt[92]" -type "float3" -1.110223e-016 0 0.20345938 ;
	setAttr ".pt[93]" -type "float3" -1.110223e-016 0 0.19903871 ;
	setAttr ".pt[94]" -type "float3" -1.110223e-016 0 0.30401471 ;
	setAttr ".pt[95]" -type "float3" -1.110223e-016 0 0.36432192 ;
	setAttr ".pt[96]" -type "float3" -1.110223e-016 0 0.40547293 ;
	setAttr ".pt[97]" -type "float3" -1.110223e-016 0 0.35305241 ;
	setAttr ".pt[98]" -type "float3" -1.110223e-016 0 0.3558948 ;
	setAttr ".pt[99]" -type "float3" -1.110223e-016 0 0.29583585 ;
	setAttr ".pt[100]" -type "float3" -1.110223e-016 0 0.24674794 ;
	setAttr ".pt[101]" -type "float3" -1.110223e-016 -0.060546063 0.18977806 ;
	setAttr ".pt[102]" -type "float3" 0.046917006 3.3306691e-016 -0.025509065 ;
	setAttr ".pt[103]" -type "float3" 0.013667165 0.056260556 0.056098476 ;
	setAttr ".pt[104]" -type "float3" 0.03843705 0.033498485 -0.033211667 ;
	setAttr -s 110 ".vt[0:109]"  0.83545983 -1.1920929e-007 -0.69198692 -0.17579855 -1.1920929e-007 -1.41158104
		 -0.81065041 -1.1920929e-007 -0.89228475 -1.066304088 1.4901161e-008 0.023098491 -0.84663427 -6.7055225e-008 0.71383941
		 0.73158348 -1.1920929e-007 0.71724534 1.024476528 -1.1920929e-007 0.010138601 0.65328133 0.50395453 -0.65328145
		 -0.1035437 0.56761336 -1.10905731 -0.75682515 0.38268343 -0.83845949 -0.98764521 0.41004905 0.012462148
		 -0.65328151 0.52594149 0.73254144 0 0.52594149 1.0031393766 0.60363948 0.61201072 0.70542216
		 1.010044932 0.50480521 0.035691082 0.49999994 0.70710677 -0.49999985 -1.1920929e-007 0.76501268 -0.70710671
		 -0.49999994 0.76501268 -0.49999997 -0.8662228 0.81841671 0.15357941 -0.65911609 0.81841671 0.65357924
		 -0.15911597 0.81841671 0.86068606 0.54020667 0.73406547 0.51665413 0.74731338 0.73406547 0.016654223
		 -5.9604645e-008 0.9238795 -0.38268337 -0.27059811 0.9238795 -0.27059802 -0.38268346 0.9238795 8.9406967e-008
		 0 0.9238795 0.38268343 0.27059805 0.9238795 0.27059805 0.38268328 0.9238795 2.9802322e-008
		 0 1 0 0.96217942 -1.1920929e-007 0.16053724 0.95249009 0.50480521 0.17464124 0.70326269 0.73406547 0.12300208
		 0.35884333 0.9238795 0.057555079 0.78800172 -1.1920929e-007 0.58103907 0.7915709 0.50480521 0.56313431
		 0.58010054 0.73406547 0.42034185 0.29218841 0.9238795 0.21847425 0.093628526 0.98137611 -2.9802322e-008
		 0.71176541 -1.1920929e-007 0.14833125 0.70445609 0.26094967 0.15668973 0.60332447 0.26094967 0.40084288
		 0.6023016 -1.1920929e-007 0.4126007 0.44679552 0.90289837 -0.39204428 0.2123509 0.90204352 -0.49474117
		 0.20798331 1.0053431988 -0.33720753 0.34538305 1.029478788 -0.2904236 0.56675327 0.91596788 -0.14909813
		 0.39273596 1.0061981678 -0.15149865 0.20707756 1.044916391 -0.14981541 0.25296038 1.036478281 -0.14635357
		 -0.69071752 -1.8626451e-008 1.26346016 5.9604645e-008 -1.1920929e-007 1.5369556 -0.00019364727 0.35130638 1.35320377
		 -0.58327562 0.32190758 1.059227943 0.65177935 -7.6601282e-008 1.21495068 0.51242304 0.38764176 1.0078189373
		 -0.59921461 1.20511162 0.27999392 -0.51829296 1.20511162 0.44588014 -0.44070178 1.28061688 0.36828911
		 -0.48230189 1.27898979 0.27054921 -0.35240668 1.20511162 0.52680194 -0.34296173 1.27898979 0.40988934
		 -0.341003 1.31206644 0.26859027 0.77852643 1.1175871e-007 -1.29981577 0.27520326 9.4994903e-008 -1.73758554
		 0.28714582 0.31035808 -1.379843 0.65328133 0.30421051 -1.1452595 1.110223e-016 0.1638011 1.50437343
		 -0.70032758 0.19722062 1.24809456 -0.85624427 0.25314307 0.73239976 -1.033722043 0.17698979 0.02309861
		 -0.78761131 0.1638011 -0.86924577 -0.17579867 0.21570912 -1.37899911 0.29191738 0.1638011 -1.64304531
		 0.68406767 0.1638011 -1.17604566 0.81242085 0.21570912 -0.66894794 1.018299222 0.21607323 0.021075875
		 0.95803207 0.21607323 0.16657418 0.7086367 0.11169504 0.15190893 0.60273945 0.11169504 0.40756798
		 0.78952938 0.21607323 0.57337523 0.78264385 0.27845025 0.74618125 0.70283973 0.22069842 1.20996082
		 5.9604645e-008 0.45859104 1.18035483 0.60363948 0.54466021 0.88263768 0.78264385 0.24962206 0.94470984
		 0.73158348 -1.1920929e-007 0.93172359 -0.84663427 -6.7055225e-008 0.92831779 -0.85624439 0.22431491 0.93092841
		 -0.65328139 0.45859104 0.9097569 0.83545983 -1.0794209e-007 -0.93194544 0.81242085 0.19039138 -0.90890652
		 0.65328133 0.44480544 -0.89324009 0.081095852 0.44480544 -1.26526427 0.097997457 0.19039138 -1.47898686
		 0.0021842048 9.8720193e-008 -1.62482166 0.58215094 1.1175871e-007 -1.43904877 0.57076252 0.1638011 -1.44912195
		 0.45277119 0.37397718 -1.23627925 0.39323595 0.51962501 -1.062316656 0.30932146 0.64243293 -0.8604213
		 0.2727612 0.73342371 -0.59412521 0.34024572 0.90250981 -0.43871769 0.28293794 1.018509626 -0.31168583
		 -1.22559261 -1.1920929e-007 -0.44072494 -1.1977241 0.1638011 -0.42934528 -0.9800449 0.49124819 -0.45602527
		 -0.68533486 0.79203892 -0.16924214 -0.32732129 0.9238795 -0.13365605;
	setAttr -s 208 ".ed";
	setAttr ".ed[0:165]"  1 2 0 2 105 0 3 4 0 5 34 0 6 0 0 7 101 0 8 9 0 9 107 0
		 10 11 0 11 12 0 12 13 0 13 35 0 14 7 0 15 102 0 16 17 0 17 108 0 18 19 0 19 20 0
		 20 21 0 21 36 0 22 15 0 23 24 0 24 109 0 26 27 0 27 37 0 0 76 0 1 73 0 2 72 0 3 71 0
		 4 70 0 5 82 0 6 77 0 7 15 0 8 16 0 9 17 0 10 18 0 11 19 0 12 20 0 13 21 0 14 22 0
		 16 23 0 17 24 0 18 25 0 20 26 0 21 27 0 22 28 0 23 29 0 24 29 0 25 29 0 26 29 0 27 29 0
		 28 38 0 30 6 0 31 14 0 30 78 0 32 22 0 31 32 0 33 28 0 32 33 0 35 31 0 34 81 0 36 32 0
		 35 36 0 37 33 0 36 37 0 38 29 0 37 38 0 30 39 0 31 40 0 39 79 0 35 41 0 41 40 0 34 42 0
		 42 80 0 39 42 0 15 43 0 16 44 0 43 103 0 23 45 0 44 45 0 46 104 0 43 46 0 22 47 0
		 47 43 0 28 48 0 48 46 0 47 48 0 29 49 0 45 49 0 46 49 0 38 50 0 50 49 0 48 50 0 4 88 0
		 51 52 0 12 84 0 52 68 0 11 90 0 54 53 0 51 69 0 5 87 0 52 55 0 13 85 0 55 83 0 53 56 0
		 18 57 0 19 58 0 57 58 0 58 59 0 25 60 0 60 59 0 57 60 0 20 61 0 58 61 0 26 62 0 61 62 0
		 59 62 0 29 63 0 60 63 0 62 63 0 0 91 0 1 96 0 64 97 0 8 94 0 65 74 0 7 93 0 67 99 0
		 64 75 0 68 53 0 69 54 0 68 69 0 70 11 0 69 89 0 71 10 0 70 71 0 72 9 0 71 106 0 73 8 0
		 72 73 0 74 66 0 73 95 0 75 67 0 74 98 0 76 7 0 75 92 0 77 14 0 76 77 0 78 31 0 77 78 0
		 79 40 0 78 79 0 80 41 0 79 80 0 81 35 0 80 81 0 82 13 0 81 82 0 83 56 0 82 86 0 83 68 0
		 84 53 0 85 56 0 84 85 0 86 83 0 85 86 0 87 55 0;
	setAttr ".ed[166:207]" 86 87 0 88 51 0 89 70 0 88 89 0 90 54 0 89 90 0 90 84 0
		 91 64 0 92 76 0 91 92 0 93 67 0 92 93 0 94 66 0 93 100 0 95 74 0 94 95 0 96 65 0
		 95 96 0 97 65 0 98 75 0 97 98 0 99 66 0 98 99 0 100 94 0 99 100 0 101 8 0 100 101 0
		 102 16 0 101 102 0 103 44 0 102 103 0 104 45 0 103 104 0 105 3 0 106 72 0 105 106 0
		 107 10 0 106 107 0 108 18 0 107 108 0 109 25 0 108 109 0;
	setAttr -s 99 -ch 394 ".fc[0:98]" -type "polyFaces" 
		f 4 122 186 185 -128
		mu 0 4 85 121 122 96
		f 4 0 27 138 -27
		mu 0 4 1 2 93 94
		f 4 1 201 200 -28
		mu 0 4 2 129 130 93
		f 4 2 29 134 -29
		mu 0 4 3 4 91 92
		f 4 94 96 130 -100
		mu 0 4 72 73 89 90
		f 4 101 103 159 -97
		mu 0 4 73 76 107 89
		f 4 3 60 156 -31
		mu 0 4 5 47 104 106
		f 4 4 25 146 -32
		mu 0 4 6 7 97 99
		f 4 5 194 -14 -33
		mu 0 4 8 125 126 17
		f 4 6 34 -15 -34
		mu 0 4 9 10 19 18
		f 4 7 205 -16 -35
		mu 0 4 10 131 132 19
		f 4 8 36 -17 -36
		mu 0 4 11 12 21 20
		f 4 9 37 -18 -37
		mu 0 4 12 13 22 21
		f 4 10 38 -19 -38
		mu 0 4 13 14 23 22
		f 4 11 62 -20 -39
		mu 0 4 14 48 49 23
		f 4 12 32 -21 -40
		mu 0 4 15 16 25 24
		f 4 77 198 -81 -82
		mu 0 4 63 127 128 26
		f 4 14 41 -22 -41
		mu 0 4 18 19 28 27
		f 4 15 207 -23 -42
		mu 0 4 19 132 133 28
		f 4 107 108 -111 -112
		mu 0 4 78 79 30 80
		f 4 113 115 -117 -109
		mu 0 4 79 81 82 30
		f 4 18 44 -24 -44
		mu 0 4 22 23 32 31
		f 4 19 64 -25 -45
		mu 0 4 23 49 50 32
		f 4 83 81 -86 -87
		mu 0 4 66 67 34 68
		f 4 80 197 88 -90
		mu 0 4 26 128 65 69
		f 3 21 47 -47
		mu 0 3 27 28 36
		f 4 22 206 48 -48
		mu 0 4 28 133 29 37
		f 4 -119 110 116 119
		mu 0 4 83 80 30 82
		f 3 23 50 -50
		mu 0 3 31 32 40
		f 4 24 66 65 -51
		mu 0 4 32 50 51 41
		f 4 85 89 -92 -93
		mu 0 4 68 34 70 71
		f 4 52 31 148 -55
		mu 0 4 43 6 99 101
		f 4 -57 53 39 -56
		mu 0 4 45 44 15 24
		f 4 -59 55 45 -58
		mu 0 4 46 45 24 33
		f 4 -63 59 56 -62
		mu 0 4 49 48 44 45
		f 4 -65 61 58 -64
		mu 0 4 50 49 45 46
		f 4 -67 63 57 51
		mu 0 4 51 50 46 33
		f 4 54 150 -70 -68
		mu 0 4 53 100 102 56
		f 4 -60 70 71 -69
		mu 0 4 57 58 59 55
		f 4 -61 72 73 154
		mu 0 4 105 61 62 103
		f 4 69 152 -74 -75
		mu 0 4 56 102 103 62
		f 4 13 196 -78 -76
		mu 0 4 17 126 127 63
		f 4 40 78 -80 -77
		mu 0 4 18 27 65 64
		f 4 20 75 -84 -83
		mu 0 4 24 25 67 66
		f 4 -46 82 86 -85
		mu 0 4 33 24 66 68
		f 4 46 87 -89 -79
		mu 0 4 27 35 69 65
		f 4 -66 90 91 -88
		mu 0 4 42 52 71 70
		f 4 -52 84 92 -91
		mu 0 4 52 33 68 71
		f 4 -10 97 172 -96
		mu 0 4 13 12 114 108
		f 4 -30 93 169 168
		mu 0 4 91 4 112 113
		f 4 30 158 166 -101
		mu 0 4 5 106 110 111
		f 4 -11 95 162 -103
		mu 0 4 14 13 108 109
		f 4 16 106 -108 -106
		mu 0 4 20 21 79 78
		f 4 -43 105 111 -110
		mu 0 4 29 20 78 80
		f 4 17 112 -114 -107
		mu 0 4 21 22 81 79
		f 4 43 114 -116 -113
		mu 0 4 22 31 82 81
		f 4 -49 109 118 -118
		mu 0 4 38 29 80 83
		f 4 49 117 -120 -115
		mu 0 4 31 39 84 82
		f 4 26 140 183 -122
		mu 0 4 1 94 119 120
		f 4 -6 125 179 192
		mu 0 4 125 8 117 124
		f 4 -26 120 175 174
		mu 0 4 98 0 115 116
		f 4 -131 128 -99 -130
		mu 0 4 90 89 74 75
		f 4 -132 -169 171 -98
		mu 0 4 12 91 113 114
		f 4 -135 131 -9 -134
		mu 0 4 92 91 12 11
		f 4 -201 203 -8 -136
		mu 0 4 93 130 131 10
		f 4 -139 135 -7 -138
		mu 0 4 94 93 10 9
		f 4 -141 137 123 181
		mu 0 4 119 94 9 118
		f 4 -186 188 -127 -142
		mu 0 4 96 122 123 88
		f 4 -144 -175 177 -126
		mu 0 4 8 98 116 117
		f 4 -147 143 -13 -146
		mu 0 4 99 97 16 15
		f 4 -149 145 -54 -148
		mu 0 4 101 99 15 44
		f 4 -151 147 68 -150
		mu 0 4 102 100 54 55
		f 4 -153 149 -72 -152
		mu 0 4 103 102 55 59
		f 4 -154 -155 151 -71
		mu 0 4 60 105 103 59
		f 4 -157 153 -12 -156
		mu 0 4 106 104 48 14
		f 4 -159 155 102 164
		mu 0 4 110 106 14 109
		f 4 -160 157 -105 -129
		mu 0 4 89 107 77 74
		f 4 -164 -165 161 -158
		mu 0 4 107 110 109 77
		f 4 -167 163 -104 -166
		mu 0 4 111 110 107 76
		f 4 -170 167 99 132
		mu 0 4 113 112 72 90
		f 4 -172 -133 129 -171
		mu 0 4 114 113 90 75
		f 4 -173 170 98 -161
		mu 0 4 108 114 75 74
		f 4 104 -162 -163 160
		mu 0 4 74 77 109 108
		f 4 -176 173 127 144
		mu 0 4 116 115 85 96
		f 4 -178 -145 141 -177
		mu 0 4 117 116 96 88
		f 4 -180 176 126 190
		mu 0 4 124 117 88 123
		f 4 -181 -182 178 -140
		mu 0 4 95 119 118 87
		f 4 -184 180 -125 -183
		mu 0 4 120 119 95 86
		f 4 184 124 142 -187
		mu 0 4 121 86 95 122
		f 4 -189 -143 139 -188
		mu 0 4 123 122 95 87
		f 4 -190 -191 187 -179
		mu 0 4 118 124 123 87
		f 4 -192 -193 189 -124
		mu 0 4 9 125 124 118
		f 4 -195 191 33 -194
		mu 0 4 126 125 9 18
		f 4 -197 193 76 -196
		mu 0 4 127 126 18 64
		f 4 -199 195 79 -198
		mu 0 4 128 127 64 65
		f 4 199 28 136 -202
		mu 0 4 129 3 92 130
		f 4 -204 -137 133 -203
		mu 0 4 131 130 92 11
		f 4 -206 202 35 -205
		mu 0 4 132 131 11 20
		f 4 -208 204 42 -207
		mu 0 4 133 132 20 29;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "Mine_Entrance";
	rename -uid "17069768-48D8-8FC0-0B3D-9BBD2C85D05B";
	setAttr ".t" -type "double3" 0 0.5 1.3056183090985516 ;
	setAttr ".s" -type "double3" 0.40719439632222432 2.7973870041913398 0.40719439632222432 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode mesh -n "Mine_EntranceShape" -p "Mine_Entrance";
	rename -uid "20C96E8B-4732-9C0C-8465-F9881983530A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder1";
	rename -uid "C321C160-40B2-EAC5-2F59-FBA7ACC6DBA8";
	setAttr ".t" -type "double3" 1.5118632920673223 1 0 ;
	setAttr ".rp" -type "double3" 0 -1 0 ;
	setAttr ".sp" -type "double3" 0 -1 0 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	rename -uid "7FEB1C41-4F57-EE88-C928-C2B038DC5ACF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 84 ".uvst[0].uvsp[0:83]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-008
		 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.10796608
		 0.34374997 0.15625 0.3513974 0.20453392 0.37359107 0.24809146 0.40815854 0.28265893
		 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893
		 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998
		 0.3125 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.68843985 0.38749999
		 0.68843985 0.39999998 0.68843985 0.41249996 0.68843985 0.42499995 0.68843985 0.43749994
		 0.68843985 0.44999993 0.68843985 0.46249992 0.68843985 0.4749999 0.68843985 0.48749989
		 0.68843985 0.49999988 0.68843985 0.51249987 0.68843985 0.52499986 0.68843985 0.53749985
		 0.68843985 0.54999983 0.68843985 0.56249982 0.68843985 0.57499981 0.68843985 0.5874998
		 0.68843985 0.59999979 0.68843985 0.61249977 0.68843985 0.62499976 0.68843985 0.64860266
		 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5
		 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974
		 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854
		 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893
		 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 42 ".vt[0:41]"  0.47552857 -1 -0.15450859 0.40450877 -1 -0.2938928
		 0.2938928 -1 -0.40450874 0.15450858 -1 -0.47552851 0 -1 -0.50000024 -0.15450858 -1 -0.47552848
		 -0.29389274 -1 -0.40450865 -0.40450862 -1 -0.29389271 -0.47552839 -1 -0.15450853
		 -0.50000012 -1 0 -0.47552839 -1 0.15450853 -0.40450859 -1 0.29389268 -0.29389268 -1 0.40450856
		 -0.15450853 -1 0.47552833 -1.4901161e-008 -1 0.50000006 0.15450849 -1 0.4755283 0.29389262 -1 0.40450853
		 0.4045085 -1 0.29389265 0.47552827 -1 0.1545085 0.5 -1 0 0.47552857 1 -0.15450859
		 0.40450877 1 -0.2938928 0.2938928 1 -0.40450874 0.15450858 1 -0.47552851 0 1 -0.50000024
		 -0.15450858 1 -0.47552848 -0.29389274 1 -0.40450865 -0.40450862 1 -0.29389271 -0.47552839 1 -0.15450853
		 -0.50000012 1 0 -0.47552839 1 0.15450853 -0.40450859 1 0.29389268 -0.29389268 1 0.40450856
		 -0.15450853 1 0.47552833 -1.4901161e-008 1 0.50000006 0.15450849 1 0.4755283 0.29389262 1 0.40450853
		 0.4045085 1 0.29389265 0.47552827 1 0.1545085 0.5 1 0 0 -1 0 0 1 0;
	setAttr -s 100 ".ed[0:99]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1 40 0 1 40 1 1 40 2 1
		 40 3 1 40 4 1 40 5 1 40 6 1 40 7 1 40 8 1 40 9 1 40 10 1 40 11 1 40 12 1 40 13 1
		 40 14 1 40 15 1 40 16 1 40 17 1 40 18 1 40 19 1 20 41 1 21 41 1 22 41 1 23 41 1 24 41 1
		 25 41 1 26 41 1 27 41 1 28 41 1 29 41 1 30 41 1 31 41 1 32 41 1 33 41 1 34 41 1 35 41 1
		 36 41 1 37 41 1 38 41 1 39 41 1;
	setAttr -s 60 -ch 200 ".fc[0:59]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 3 -1 -61 61
		mu 0 3 1 0 82
		f 3 -2 -62 62
		mu 0 3 2 1 82
		f 3 -3 -63 63
		mu 0 3 3 2 82
		f 3 -4 -64 64
		mu 0 3 4 3 82
		f 3 -5 -65 65
		mu 0 3 5 4 82
		f 3 -6 -66 66
		mu 0 3 6 5 82
		f 3 -7 -67 67
		mu 0 3 7 6 82
		f 3 -8 -68 68
		mu 0 3 8 7 82
		f 3 -9 -69 69
		mu 0 3 9 8 82
		f 3 -10 -70 70
		mu 0 3 10 9 82
		f 3 -11 -71 71
		mu 0 3 11 10 82
		f 3 -12 -72 72
		mu 0 3 12 11 82
		f 3 -13 -73 73
		mu 0 3 13 12 82
		f 3 -14 -74 74
		mu 0 3 14 13 82
		f 3 -15 -75 75
		mu 0 3 15 14 82
		f 3 -16 -76 76
		mu 0 3 16 15 82
		f 3 -17 -77 77
		mu 0 3 17 16 82
		f 3 -18 -78 78
		mu 0 3 18 17 82
		f 3 -19 -79 79
		mu 0 3 19 18 82
		f 3 -20 -80 60
		mu 0 3 0 19 82
		f 3 20 81 -81
		mu 0 3 80 79 83
		f 3 21 82 -82
		mu 0 3 79 78 83
		f 3 22 83 -83
		mu 0 3 78 77 83
		f 3 23 84 -84
		mu 0 3 77 76 83
		f 3 24 85 -85
		mu 0 3 76 75 83
		f 3 25 86 -86
		mu 0 3 75 74 83
		f 3 26 87 -87
		mu 0 3 74 73 83
		f 3 27 88 -88
		mu 0 3 73 72 83
		f 3 28 89 -89
		mu 0 3 72 71 83
		f 3 29 90 -90
		mu 0 3 71 70 83
		f 3 30 91 -91
		mu 0 3 70 69 83
		f 3 31 92 -92
		mu 0 3 69 68 83
		f 3 32 93 -93
		mu 0 3 68 67 83
		f 3 33 94 -94
		mu 0 3 67 66 83
		f 3 34 95 -95
		mu 0 3 66 65 83
		f 3 35 96 -96
		mu 0 3 65 64 83
		f 3 36 97 -97
		mu 0 3 64 63 83
		f 3 37 98 -98
		mu 0 3 63 62 83
		f 3 38 99 -99
		mu 0 3 62 81 83
		f 3 39 80 -100
		mu 0 3 81 80 83;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Mine_Entrance1";
	rename -uid "D8BAD37B-45C1-B230-54F0-58823B8AE6F2";
	setAttr ".t" -type "double3" 0 0.5 -1.2742673300682177 ;
	setAttr ".s" -type "double3" 0.40719439632222432 2.7973870041913398 0.40719439632222432 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode mesh -n "Mine_Entrance1Shape" -p "Mine_Entrance1";
	rename -uid "BC263751-43FE-651B-8E17-C28C10FA3FA9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Mine_Entrance2";
	rename -uid "2C00983B-414F-0C00-E2D5-69BB44CA87A6";
	setAttr ".t" -type "double3" 0 3.2584585845472609 -1.5635813356181558 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 0.40719439632222432 3.2043568524924573 0.40719439632222432 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode mesh -n "Mine_Entrance2Shape" -p "Mine_Entrance2";
	rename -uid "8E13D0B9-401A-DD70-E8D0-9A938172EC89";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "AB755D9A-4642-2F43-EE8B-4A894403E3B4";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "8330BC04-4CB4-BF85-7E1B-A1824DF9CD6E";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "CA0AF514-448C-4FFA-2D7B-87A3EAB6E6B0";
createNode displayLayerManager -n "layerManager";
	rename -uid "2B639B92-444B-6547-EFCD-2887E836D718";
createNode displayLayer -n "defaultLayer";
	rename -uid "D9CACEAE-4CEC-7E72-A5F1-48B4F3513BE5";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "A6BA06F4-49D2-2D01-90B1-789743622F49";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "FB925F4B-4B65-B54C-64D6-BE8EE64E3DE9";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "B8AC44CC-4FAD-6F82-6E52-B1A0AFF2D3D1";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n"
		+ "            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n"
		+ "            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1099\n            -height 718\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n"
		+ "            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n"
		+ "            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n"
		+ "            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n"
		+ "                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n"
		+ "                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n"
		+ "                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n"
		+ "                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n"
		+ "                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n"
		+ "                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n"
		+ "                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n"
		+ "                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1099\\n    -height 718\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1099\\n    -height 718\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "BBD82661-4C7E-2706-DEFB-5EB21BDE9F52";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "E01ED023-4B3A-F564-3D80-C3AF45651DD4";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -323.80951094248991 -330.95236780151544 ;
	setAttr ".tgi[0].vh" -type "double2" 324.99998708566085 330.95236780151544 ;
	setAttr ".tgi[0].ni[0].x" -91.428573608398437;
	setAttr ".tgi[0].ni[0].y" 97.142860412597656;
	setAttr ".tgi[0].ni[0].nvs" 1922;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 5 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "defaultRenderLayer.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "RocksShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Mine_EntranceShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Mine_Entrance1Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Mine_Entrance2Shape.iog" ":initialShadingGroup.dsm" -na;
// End of Game Mine.ma
