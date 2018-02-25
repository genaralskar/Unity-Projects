//Maya ASCII 2017ff05 scene
//Name: Game Farm House.ma
//Last modified: Mon, Feb 19, 2018 12:35:39 PM
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
	rename -uid "640A651D-4879-C0AA-4ADF-99A611EEDE97";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -17.603096757375276 10.344319270257547 28.130196264906356 ;
	setAttr ".r" -type "double3" -13.538352733008981 -1471.3999999999583 9.3156572860541821e-016 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "BD3525E5-4180-983F-20F9-238FE0126140";
	setAttr -k off ".v" no;
	setAttr ".pze" yes;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 31.830925954481039;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 5.3907883167266846 0.88574370741844177 16.680126190185547 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "3EA687E3-48C9-94C3-F544-DB984B912531";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.6439533468587904 1000.1000000000003 -1.4553029627928062 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "42415F7A-42A6-C2F4-3727-B8951EBDFCFA";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 994.66114162075382;
	setAttr ".ow" 29.618110298324751;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" 0 5.4388583792461631 0 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "C40B0FC0-45E1-2EB4-66DE-278A50091C5A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "FE18496F-4D10-FD4D-F42B-A0BA0AB25328";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "1DDA8506-45E8-1BDF-49DD-73BCB013BE45";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1187004135908 5.1318438599629133 -2.9644314559480698 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "E5676C2C-49D2-AE9C-CAFA-27A7D1C4B537";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 998.36633089645261;
	setAttr ".ow" 17.939685229562443;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 1.7523695171379687 5.1318438599629133 -2.9644314559482918 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "Person_Scale";
	rename -uid "536489B2-43C3-6272-1379-C3A0F95EBF6A";
	setAttr ".t" -type "double3" -9.5211451087933412 1.0000000000000004 -3.2654165174264094 ;
	setAttr ".rp" -type "double3" 0 -1 0 ;
	setAttr ".sp" -type "double3" 0 -1 0 ;
createNode mesh -n "Person_ScaleShape" -p "Person_Scale";
	rename -uid "4356BE1A-474D-1BC8-A311-3998E8FC78B6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Entire_thing";
	rename -uid "D9FCA9F1-41AE-6338-00C6-2FA41E9B5B68";
	setAttr ".t" -type "double3" 0 0 -6.6353164663606377 ;
	setAttr ".rp" -type "double3" 8.8817841970012523e-016 0 6.2715092061304407 ;
	setAttr ".sp" -type "double3" 8.8817841970012523e-016 0 6.2715092061304407 ;
createNode transform -n "Farm" -p "Entire_thing";
	rename -uid "F2DDD0AB-456D-829E-616A-9DA98DE6BF6B";
createNode transform -n "Dirt_Mound" -p "Farm";
	rename -uid "9EFC2F5D-4722-A4B8-B097-9BAA82A45365";
	setAttr ".t" -type "double3" -1.15761197859485 7.0997481469891062e-030 7.1383013614648982 ;
	setAttr ".s" -type "double3" 2.3908812482382333 0.43801735615620341 2.3908812482382333 ;
createNode mesh -n "Dirt_MoundShape" -p "Dirt_Mound";
	rename -uid "C499C8F9-48A0-F4B5-6E25-AE815108471D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Dirt_Mound1" -p "Farm";
	rename -uid "AD62331C-40C5-2CA7-88F6-15BF03A7ABB3";
	setAttr ".t" -type "double3" 1.4169681271483168 7.0997481469891062e-030 7.1383013614648982 ;
	setAttr ".s" -type "double3" 2.3908812482382333 0.43801735615620341 2.3908812482382333 ;
createNode mesh -n "Dirt_Mound1Shape" -p "Dirt_Mound1";
	rename -uid "E4588CDD-481D-D732-8BE1-B3BCF57FA77B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.375 0.30474663
		 0.375 0.44525337 0.32025337 0.1250125 0.32025337 0 0.42974669 0.1250125 0.625 0.30474663
		 0.57025331 0.1250125 0.57025331 0 0.375 0.62498748 0.42974669 0.75 0.375 0.75 0.42974669
		 0.44525337 0.57025331 0.44525337 0.625 0.62498748 0.625 0.75 0.42974669 0 0.42974669
		 0.30474663 0.57025331 0.30474663 0.42974672 0.62498748 0.57025331 0.62498748 0.57025331
		 0.75 0.67974663 0.1250125 0.67974663 0 0.82025337 0 0.82025337 0.1250125 0.17974663
		 0.1250125 0.17974663 0 0.625 0.44525337;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".vt[0:19]"  -0.5 5.0000002e-005 0.28101349 -0.28101322 5.0000002e-005 0.5
		 -0.28101322 0.5 0.28101349 0.28101322 0.5 0.28101349 0.28101322 5.0000002e-005 0.5
		 0.5 5.0000002e-005 0.28101349 -0.5 5.0000002e-005 -0.28101349 -0.28101322 0.5 -0.28101349
		 -0.28101322 5.0000002e-005 -0.5 0.28101322 5.0000002e-005 -0.5 0.28101322 0.5 -0.28101349
		 0.5 5.0000002e-005 -0.28101349 -0.28101322 -0.5 0.5 -0.5 -0.5 0.28101349 0.5 -0.5 0.28101349
		 0.28101322 -0.5 0.5 -0.5 -0.5 -0.28101349 -0.28101322 -0.5 -0.5 0.28101322 -0.5 -0.5
		 0.5 -0.5 -0.28101349;
	setAttr -s 36 ".ed[0:35]"  12 15 0 16 13 0 17 18 0 19 14 0 0 2 0 2 7 0
		 7 6 0 6 0 0 1 0 0 0 13 0 13 12 0 12 1 0 2 1 0 1 4 0 4 3 0 3 2 0 3 5 0 5 11 0 11 10 0
		 10 3 0 5 4 0 4 15 0 15 14 0 14 5 0 6 8 0 8 17 0 17 16 0 16 6 0 8 7 0 7 10 0 10 9 0
		 9 8 0 9 11 0 11 19 0 19 18 0 18 9 0;
	setAttr -s 17 -ch 64 ".fc[0:16]" -type "polyFaces" 
		f 4 4 5 6 7
		mu 0 4 0 16 11 1
		f 4 8 9 10 11
		mu 0 4 4 2 3 15
		f 4 12 13 14 15
		mu 0 4 16 4 6 17
		f 4 16 17 18 19
		mu 0 4 17 5 27 12
		f 4 20 21 22 23
		mu 0 4 21 6 7 22
		f 4 24 25 26 27
		mu 0 4 8 18 9 10
		f 4 28 29 30 31
		mu 0 4 18 11 12 19
		f 4 32 33 34 35
		mu 0 4 19 13 14 20
		f 4 -12 0 -22 -14
		mu 0 4 4 15 7 6
		f 4 -16 -20 -30 -6
		mu 0 4 16 17 12 11
		f 4 -32 -36 -3 -26
		mu 0 4 18 19 20 9
		f 4 -24 -4 -34 -18
		mu 0 4 21 22 23 24
		f 4 -28 1 -10 -8
		mu 0 4 25 26 3 2
		f 3 -9 -13 -5
		mu 0 3 2 4 16
		f 3 -15 -21 -17
		mu 0 3 17 6 21
		f 3 -7 -29 -25
		mu 0 3 1 11 18
		f 3 -31 -19 -33
		mu 0 3 19 12 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Dirt_Mound2" -p "Farm";
	rename -uid "2D78BB91-4352-F35A-9B1E-AB8FFAAE2F92";
	setAttr ".t" -type "double3" 3.978255251062202 7.0997481469891062e-030 7.1383013614649036 ;
	setAttr ".s" -type "double3" 2.3908812482382333 0.43801735615620341 2.3908812482382333 ;
createNode mesh -n "Dirt_Mound2Shape" -p "Dirt_Mound2";
	rename -uid "43940F98-4D7E-A63B-CE38-A1A9507181D9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.375 0.30474663
		 0.375 0.44525337 0.32025337 0.1250125 0.32025337 0 0.42974669 0.1250125 0.625 0.30474663
		 0.57025331 0.1250125 0.57025331 0 0.375 0.62498748 0.42974669 0.75 0.375 0.75 0.42974669
		 0.44525337 0.57025331 0.44525337 0.625 0.62498748 0.625 0.75 0.42974669 0 0.42974669
		 0.30474663 0.57025331 0.30474663 0.42974672 0.62498748 0.57025331 0.62498748 0.57025331
		 0.75 0.67974663 0.1250125 0.67974663 0 0.82025337 0 0.82025337 0.1250125 0.17974663
		 0.1250125 0.17974663 0 0.625 0.44525337;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".vt[0:19]"  -0.5 5.0000002e-005 0.28101349 -0.28101322 5.0000002e-005 0.5
		 -0.28101322 0.5 0.28101349 0.28101322 0.5 0.28101349 0.28101322 5.0000002e-005 0.5
		 0.5 5.0000002e-005 0.28101349 -0.5 5.0000002e-005 -0.28101349 -0.28101322 0.5 -0.28101349
		 -0.28101322 5.0000002e-005 -0.5 0.28101322 5.0000002e-005 -0.5 0.28101322 0.5 -0.28101349
		 0.5 5.0000002e-005 -0.28101349 -0.28101322 -0.5 0.5 -0.5 -0.5 0.28101349 0.5 -0.5 0.28101349
		 0.28101322 -0.5 0.5 -0.5 -0.5 -0.28101349 -0.28101322 -0.5 -0.5 0.28101322 -0.5 -0.5
		 0.5 -0.5 -0.28101349;
	setAttr -s 36 ".ed[0:35]"  12 15 0 16 13 0 17 18 0 19 14 0 0 2 0 2 7 0
		 7 6 0 6 0 0 1 0 0 0 13 0 13 12 0 12 1 0 2 1 0 1 4 0 4 3 0 3 2 0 3 5 0 5 11 0 11 10 0
		 10 3 0 5 4 0 4 15 0 15 14 0 14 5 0 6 8 0 8 17 0 17 16 0 16 6 0 8 7 0 7 10 0 10 9 0
		 9 8 0 9 11 0 11 19 0 19 18 0 18 9 0;
	setAttr -s 17 -ch 64 ".fc[0:16]" -type "polyFaces" 
		f 4 4 5 6 7
		mu 0 4 0 16 11 1
		f 4 8 9 10 11
		mu 0 4 4 2 3 15
		f 4 12 13 14 15
		mu 0 4 16 4 6 17
		f 4 16 17 18 19
		mu 0 4 17 5 27 12
		f 4 20 21 22 23
		mu 0 4 21 6 7 22
		f 4 24 25 26 27
		mu 0 4 8 18 9 10
		f 4 28 29 30 31
		mu 0 4 18 11 12 19
		f 4 32 33 34 35
		mu 0 4 19 13 14 20
		f 4 -12 0 -22 -14
		mu 0 4 4 15 7 6
		f 4 -16 -20 -30 -6
		mu 0 4 16 17 12 11
		f 4 -32 -36 -3 -26
		mu 0 4 18 19 20 9
		f 4 -24 -4 -34 -18
		mu 0 4 21 22 23 24
		f 4 -28 1 -10 -8
		mu 0 4 25 26 3 2
		f 3 -9 -13 -5
		mu 0 3 2 4 16
		f 3 -15 -21 -17
		mu 0 3 17 6 21
		f 3 -7 -29 -25
		mu 0 3 1 11 18
		f 3 -31 -19 -33
		mu 0 3 19 12 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Dirt_Mound3" -p "Farm";
	rename -uid "00C5C54E-43A0-D3AC-66D8-9E813713022F";
	setAttr ".t" -type "double3" 3.9782552510622002 7.0997481469891062e-030 9.7429001510202955 ;
	setAttr ".s" -type "double3" 2.3908812482382333 0.43801735615620341 2.3908812482382333 ;
createNode mesh -n "Dirt_Mound3Shape" -p "Dirt_Mound3";
	rename -uid "D0114B6A-4C4C-4785-08BD-8BBDBFDC23C8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.375 0.30474663
		 0.375 0.44525337 0.32025337 0.1250125 0.32025337 0 0.42974669 0.1250125 0.625 0.30474663
		 0.57025331 0.1250125 0.57025331 0 0.375 0.62498748 0.42974669 0.75 0.375 0.75 0.42974669
		 0.44525337 0.57025331 0.44525337 0.625 0.62498748 0.625 0.75 0.42974669 0 0.42974669
		 0.30474663 0.57025331 0.30474663 0.42974672 0.62498748 0.57025331 0.62498748 0.57025331
		 0.75 0.67974663 0.1250125 0.67974663 0 0.82025337 0 0.82025337 0.1250125 0.17974663
		 0.1250125 0.17974663 0 0.625 0.44525337;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".vt[0:19]"  -0.5 5.0000002e-005 0.28101349 -0.28101322 5.0000002e-005 0.5
		 -0.28101322 0.5 0.28101349 0.28101322 0.5 0.28101349 0.28101322 5.0000002e-005 0.5
		 0.5 5.0000002e-005 0.28101349 -0.5 5.0000002e-005 -0.28101349 -0.28101322 0.5 -0.28101349
		 -0.28101322 5.0000002e-005 -0.5 0.28101322 5.0000002e-005 -0.5 0.28101322 0.5 -0.28101349
		 0.5 5.0000002e-005 -0.28101349 -0.28101322 -0.5 0.5 -0.5 -0.5 0.28101349 0.5 -0.5 0.28101349
		 0.28101322 -0.5 0.5 -0.5 -0.5 -0.28101349 -0.28101322 -0.5 -0.5 0.28101322 -0.5 -0.5
		 0.5 -0.5 -0.28101349;
	setAttr -s 36 ".ed[0:35]"  12 15 0 16 13 0 17 18 0 19 14 0 0 2 0 2 7 0
		 7 6 0 6 0 0 1 0 0 0 13 0 13 12 0 12 1 0 2 1 0 1 4 0 4 3 0 3 2 0 3 5 0 5 11 0 11 10 0
		 10 3 0 5 4 0 4 15 0 15 14 0 14 5 0 6 8 0 8 17 0 17 16 0 16 6 0 8 7 0 7 10 0 10 9 0
		 9 8 0 9 11 0 11 19 0 19 18 0 18 9 0;
	setAttr -s 17 -ch 64 ".fc[0:16]" -type "polyFaces" 
		f 4 4 5 6 7
		mu 0 4 0 16 11 1
		f 4 8 9 10 11
		mu 0 4 4 2 3 15
		f 4 12 13 14 15
		mu 0 4 16 4 6 17
		f 4 16 17 18 19
		mu 0 4 17 5 27 12
		f 4 20 21 22 23
		mu 0 4 21 6 7 22
		f 4 24 25 26 27
		mu 0 4 8 18 9 10
		f 4 28 29 30 31
		mu 0 4 18 11 12 19
		f 4 32 33 34 35
		mu 0 4 19 13 14 20
		f 4 -12 0 -22 -14
		mu 0 4 4 15 7 6
		f 4 -16 -20 -30 -6
		mu 0 4 16 17 12 11
		f 4 -32 -36 -3 -26
		mu 0 4 18 19 20 9
		f 4 -24 -4 -34 -18
		mu 0 4 21 22 23 24
		f 4 -28 1 -10 -8
		mu 0 4 25 26 3 2
		f 3 -9 -13 -5
		mu 0 3 2 4 16
		f 3 -15 -21 -17
		mu 0 3 17 6 21
		f 3 -7 -29 -25
		mu 0 3 1 11 18
		f 3 -31 -19 -33
		mu 0 3 19 12 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Dirt_Mound4" -p "Farm";
	rename -uid "C541150E-4E26-8F59-025F-DBA05EE88210";
	setAttr ".t" -type "double3" 1.3549693460037837 7.0997481469891062e-030 9.7429001510202937 ;
	setAttr ".s" -type "double3" 2.3908812482382333 0.43801735615620341 2.3908812482382333 ;
createNode mesh -n "Dirt_Mound4Shape" -p "Dirt_Mound4";
	rename -uid "F59835CF-409D-FB06-7A03-A1AD0285D92A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.375 0.30474663
		 0.375 0.44525337 0.32025337 0.1250125 0.32025337 0 0.42974669 0.1250125 0.625 0.30474663
		 0.57025331 0.1250125 0.57025331 0 0.375 0.62498748 0.42974669 0.75 0.375 0.75 0.42974669
		 0.44525337 0.57025331 0.44525337 0.625 0.62498748 0.625 0.75 0.42974669 0 0.42974669
		 0.30474663 0.57025331 0.30474663 0.42974672 0.62498748 0.57025331 0.62498748 0.57025331
		 0.75 0.67974663 0.1250125 0.67974663 0 0.82025337 0 0.82025337 0.1250125 0.17974663
		 0.1250125 0.17974663 0 0.625 0.44525337;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".vt[0:19]"  -0.5 5.0000002e-005 0.28101349 -0.28101322 5.0000002e-005 0.5
		 -0.28101322 0.5 0.28101349 0.28101322 0.5 0.28101349 0.28101322 5.0000002e-005 0.5
		 0.5 5.0000002e-005 0.28101349 -0.5 5.0000002e-005 -0.28101349 -0.28101322 0.5 -0.28101349
		 -0.28101322 5.0000002e-005 -0.5 0.28101322 5.0000002e-005 -0.5 0.28101322 0.5 -0.28101349
		 0.5 5.0000002e-005 -0.28101349 -0.28101322 -0.5 0.5 -0.5 -0.5 0.28101349 0.5 -0.5 0.28101349
		 0.28101322 -0.5 0.5 -0.5 -0.5 -0.28101349 -0.28101322 -0.5 -0.5 0.28101322 -0.5 -0.5
		 0.5 -0.5 -0.28101349;
	setAttr -s 36 ".ed[0:35]"  12 15 0 16 13 0 17 18 0 19 14 0 0 2 0 2 7 0
		 7 6 0 6 0 0 1 0 0 0 13 0 13 12 0 12 1 0 2 1 0 1 4 0 4 3 0 3 2 0 3 5 0 5 11 0 11 10 0
		 10 3 0 5 4 0 4 15 0 15 14 0 14 5 0 6 8 0 8 17 0 17 16 0 16 6 0 8 7 0 7 10 0 10 9 0
		 9 8 0 9 11 0 11 19 0 19 18 0 18 9 0;
	setAttr -s 17 -ch 64 ".fc[0:16]" -type "polyFaces" 
		f 4 4 5 6 7
		mu 0 4 0 16 11 1
		f 4 8 9 10 11
		mu 0 4 4 2 3 15
		f 4 12 13 14 15
		mu 0 4 16 4 6 17
		f 4 16 17 18 19
		mu 0 4 17 5 27 12
		f 4 20 21 22 23
		mu 0 4 21 6 7 22
		f 4 24 25 26 27
		mu 0 4 8 18 9 10
		f 4 28 29 30 31
		mu 0 4 18 11 12 19
		f 4 32 33 34 35
		mu 0 4 19 13 14 20
		f 4 -12 0 -22 -14
		mu 0 4 4 15 7 6
		f 4 -16 -20 -30 -6
		mu 0 4 16 17 12 11
		f 4 -32 -36 -3 -26
		mu 0 4 18 19 20 9
		f 4 -24 -4 -34 -18
		mu 0 4 21 22 23 24
		f 4 -28 1 -10 -8
		mu 0 4 25 26 3 2
		f 3 -9 -13 -5
		mu 0 3 2 4 16
		f 3 -15 -21 -17
		mu 0 3 17 6 21
		f 3 -7 -29 -25
		mu 0 3 1 11 18
		f 3 -31 -19 -33
		mu 0 3 19 12 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Dirt_Mound5" -p "Farm";
	rename -uid "BE3C0688-4642-2BCD-8992-528CEC4991B8";
	setAttr ".t" -type "double3" -1.1849892411244551 7.0997481469891062e-030 9.7429001510202937 ;
	setAttr ".s" -type "double3" 2.3908812482382333 0.43801735615620341 2.3908812482382333 ;
createNode mesh -n "Dirt_Mound5Shape" -p "Dirt_Mound5";
	rename -uid "48213485-421B-325E-A45C-16BD09FB3E15";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.375 0.30474663
		 0.375 0.44525337 0.32025337 0.1250125 0.32025337 0 0.42974669 0.1250125 0.625 0.30474663
		 0.57025331 0.1250125 0.57025331 0 0.375 0.62498748 0.42974669 0.75 0.375 0.75 0.42974669
		 0.44525337 0.57025331 0.44525337 0.625 0.62498748 0.625 0.75 0.42974669 0 0.42974669
		 0.30474663 0.57025331 0.30474663 0.42974672 0.62498748 0.57025331 0.62498748 0.57025331
		 0.75 0.67974663 0.1250125 0.67974663 0 0.82025337 0 0.82025337 0.1250125 0.17974663
		 0.1250125 0.17974663 0 0.625 0.44525337;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".vt[0:19]"  -0.5 5.0000002e-005 0.28101349 -0.28101322 5.0000002e-005 0.5
		 -0.28101322 0.5 0.28101349 0.28101322 0.5 0.28101349 0.28101322 5.0000002e-005 0.5
		 0.5 5.0000002e-005 0.28101349 -0.5 5.0000002e-005 -0.28101349 -0.28101322 0.5 -0.28101349
		 -0.28101322 5.0000002e-005 -0.5 0.28101322 5.0000002e-005 -0.5 0.28101322 0.5 -0.28101349
		 0.5 5.0000002e-005 -0.28101349 -0.28101322 -0.5 0.5 -0.5 -0.5 0.28101349 0.5 -0.5 0.28101349
		 0.28101322 -0.5 0.5 -0.5 -0.5 -0.28101349 -0.28101322 -0.5 -0.5 0.28101322 -0.5 -0.5
		 0.5 -0.5 -0.28101349;
	setAttr -s 36 ".ed[0:35]"  12 15 0 16 13 0 17 18 0 19 14 0 0 2 0 2 7 0
		 7 6 0 6 0 0 1 0 0 0 13 0 13 12 0 12 1 0 2 1 0 1 4 0 4 3 0 3 2 0 3 5 0 5 11 0 11 10 0
		 10 3 0 5 4 0 4 15 0 15 14 0 14 5 0 6 8 0 8 17 0 17 16 0 16 6 0 8 7 0 7 10 0 10 9 0
		 9 8 0 9 11 0 11 19 0 19 18 0 18 9 0;
	setAttr -s 17 -ch 64 ".fc[0:16]" -type "polyFaces" 
		f 4 4 5 6 7
		mu 0 4 0 16 11 1
		f 4 8 9 10 11
		mu 0 4 4 2 3 15
		f 4 12 13 14 15
		mu 0 4 16 4 6 17
		f 4 16 17 18 19
		mu 0 4 17 5 27 12
		f 4 20 21 22 23
		mu 0 4 21 6 7 22
		f 4 24 25 26 27
		mu 0 4 8 18 9 10
		f 4 28 29 30 31
		mu 0 4 18 11 12 19
		f 4 32 33 34 35
		mu 0 4 19 13 14 20
		f 4 -12 0 -22 -14
		mu 0 4 4 15 7 6
		f 4 -16 -20 -30 -6
		mu 0 4 16 17 12 11
		f 4 -32 -36 -3 -26
		mu 0 4 18 19 20 9
		f 4 -24 -4 -34 -18
		mu 0 4 21 22 23 24
		f 4 -28 1 -10 -8
		mu 0 4 25 26 3 2
		f 3 -9 -13 -5
		mu 0 3 2 4 16
		f 3 -15 -21 -17
		mu 0 3 17 6 21
		f 3 -7 -29 -25
		mu 0 3 1 11 18
		f 3 -31 -19 -33
		mu 0 3 19 12 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Dirt_Mound6" -p "Farm";
	rename -uid "A9AED46A-4351-7BC9-3BC5-6D8E93137603";
	setAttr ".t" -type "double3" -1.1849892411244551 7.0997481469891062e-030 12.326956841085783 ;
	setAttr ".s" -type "double3" 2.3908812482382333 0.43801735615620341 2.3908812482382333 ;
createNode mesh -n "Dirt_Mound6Shape" -p "Dirt_Mound6";
	rename -uid "748CC465-4AF8-8890-FCED-15AF40247DFB";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.375 0.30474663
		 0.375 0.44525337 0.32025337 0.1250125 0.32025337 0 0.42974669 0.1250125 0.625 0.30474663
		 0.57025331 0.1250125 0.57025331 0 0.375 0.62498748 0.42974669 0.75 0.375 0.75 0.42974669
		 0.44525337 0.57025331 0.44525337 0.625 0.62498748 0.625 0.75 0.42974669 0 0.42974669
		 0.30474663 0.57025331 0.30474663 0.42974672 0.62498748 0.57025331 0.62498748 0.57025331
		 0.75 0.67974663 0.1250125 0.67974663 0 0.82025337 0 0.82025337 0.1250125 0.17974663
		 0.1250125 0.17974663 0 0.625 0.44525337;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".vt[0:19]"  -0.5 5.0000002e-005 0.28101349 -0.28101322 5.0000002e-005 0.5
		 -0.28101322 0.5 0.28101349 0.28101322 0.5 0.28101349 0.28101322 5.0000002e-005 0.5
		 0.5 5.0000002e-005 0.28101349 -0.5 5.0000002e-005 -0.28101349 -0.28101322 0.5 -0.28101349
		 -0.28101322 5.0000002e-005 -0.5 0.28101322 5.0000002e-005 -0.5 0.28101322 0.5 -0.28101349
		 0.5 5.0000002e-005 -0.28101349 -0.28101322 -0.5 0.5 -0.5 -0.5 0.28101349 0.5 -0.5 0.28101349
		 0.28101322 -0.5 0.5 -0.5 -0.5 -0.28101349 -0.28101322 -0.5 -0.5 0.28101322 -0.5 -0.5
		 0.5 -0.5 -0.28101349;
	setAttr -s 36 ".ed[0:35]"  12 15 0 16 13 0 17 18 0 19 14 0 0 2 0 2 7 0
		 7 6 0 6 0 0 1 0 0 0 13 0 13 12 0 12 1 0 2 1 0 1 4 0 4 3 0 3 2 0 3 5 0 5 11 0 11 10 0
		 10 3 0 5 4 0 4 15 0 15 14 0 14 5 0 6 8 0 8 17 0 17 16 0 16 6 0 8 7 0 7 10 0 10 9 0
		 9 8 0 9 11 0 11 19 0 19 18 0 18 9 0;
	setAttr -s 17 -ch 64 ".fc[0:16]" -type "polyFaces" 
		f 4 4 5 6 7
		mu 0 4 0 16 11 1
		f 4 8 9 10 11
		mu 0 4 4 2 3 15
		f 4 12 13 14 15
		mu 0 4 16 4 6 17
		f 4 16 17 18 19
		mu 0 4 17 5 27 12
		f 4 20 21 22 23
		mu 0 4 21 6 7 22
		f 4 24 25 26 27
		mu 0 4 8 18 9 10
		f 4 28 29 30 31
		mu 0 4 18 11 12 19
		f 4 32 33 34 35
		mu 0 4 19 13 14 20
		f 4 -12 0 -22 -14
		mu 0 4 4 15 7 6
		f 4 -16 -20 -30 -6
		mu 0 4 16 17 12 11
		f 4 -32 -36 -3 -26
		mu 0 4 18 19 20 9
		f 4 -24 -4 -34 -18
		mu 0 4 21 22 23 24
		f 4 -28 1 -10 -8
		mu 0 4 25 26 3 2
		f 3 -9 -13 -5
		mu 0 3 2 4 16
		f 3 -15 -21 -17
		mu 0 3 17 6 21
		f 3 -7 -29 -25
		mu 0 3 1 11 18
		f 3 -31 -19 -33
		mu 0 3 19 12 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Dirt_Mound7" -p "Farm";
	rename -uid "A5B65E4F-448F-24DB-2AF1-BC842EA49BDC";
	setAttr ".t" -type "double3" 1.4197269693935317 7.0997481469891062e-030 12.326956841085783 ;
	setAttr ".s" -type "double3" 2.3908812482382333 0.43801735615620341 2.3908812482382333 ;
createNode mesh -n "Dirt_Mound7Shape" -p "Dirt_Mound7";
	rename -uid "0819073F-49CA-4E6E-42DC-B382B18A0805";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.375 0.30474663
		 0.375 0.44525337 0.32025337 0.1250125 0.32025337 0 0.42974669 0.1250125 0.625 0.30474663
		 0.57025331 0.1250125 0.57025331 0 0.375 0.62498748 0.42974669 0.75 0.375 0.75 0.42974669
		 0.44525337 0.57025331 0.44525337 0.625 0.62498748 0.625 0.75 0.42974669 0 0.42974669
		 0.30474663 0.57025331 0.30474663 0.42974672 0.62498748 0.57025331 0.62498748 0.57025331
		 0.75 0.67974663 0.1250125 0.67974663 0 0.82025337 0 0.82025337 0.1250125 0.17974663
		 0.1250125 0.17974663 0 0.625 0.44525337;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".vt[0:19]"  -0.5 5.0000002e-005 0.28101349 -0.28101322 5.0000002e-005 0.5
		 -0.28101322 0.5 0.28101349 0.28101322 0.5 0.28101349 0.28101322 5.0000002e-005 0.5
		 0.5 5.0000002e-005 0.28101349 -0.5 5.0000002e-005 -0.28101349 -0.28101322 0.5 -0.28101349
		 -0.28101322 5.0000002e-005 -0.5 0.28101322 5.0000002e-005 -0.5 0.28101322 0.5 -0.28101349
		 0.5 5.0000002e-005 -0.28101349 -0.28101322 -0.5 0.5 -0.5 -0.5 0.28101349 0.5 -0.5 0.28101349
		 0.28101322 -0.5 0.5 -0.5 -0.5 -0.28101349 -0.28101322 -0.5 -0.5 0.28101322 -0.5 -0.5
		 0.5 -0.5 -0.28101349;
	setAttr -s 36 ".ed[0:35]"  12 15 0 16 13 0 17 18 0 19 14 0 0 2 0 2 7 0
		 7 6 0 6 0 0 1 0 0 0 13 0 13 12 0 12 1 0 2 1 0 1 4 0 4 3 0 3 2 0 3 5 0 5 11 0 11 10 0
		 10 3 0 5 4 0 4 15 0 15 14 0 14 5 0 6 8 0 8 17 0 17 16 0 16 6 0 8 7 0 7 10 0 10 9 0
		 9 8 0 9 11 0 11 19 0 19 18 0 18 9 0;
	setAttr -s 17 -ch 64 ".fc[0:16]" -type "polyFaces" 
		f 4 4 5 6 7
		mu 0 4 0 16 11 1
		f 4 8 9 10 11
		mu 0 4 4 2 3 15
		f 4 12 13 14 15
		mu 0 4 16 4 6 17
		f 4 16 17 18 19
		mu 0 4 17 5 27 12
		f 4 20 21 22 23
		mu 0 4 21 6 7 22
		f 4 24 25 26 27
		mu 0 4 8 18 9 10
		f 4 28 29 30 31
		mu 0 4 18 11 12 19
		f 4 32 33 34 35
		mu 0 4 19 13 14 20
		f 4 -12 0 -22 -14
		mu 0 4 4 15 7 6
		f 4 -16 -20 -30 -6
		mu 0 4 16 17 12 11
		f 4 -32 -36 -3 -26
		mu 0 4 18 19 20 9
		f 4 -24 -4 -34 -18
		mu 0 4 21 22 23 24
		f 4 -28 1 -10 -8
		mu 0 4 25 26 3 2
		f 3 -9 -13 -5
		mu 0 3 2 4 16
		f 3 -15 -21 -17
		mu 0 3 17 6 21
		f 3 -7 -29 -25
		mu 0 3 1 11 18
		f 3 -31 -19 -33
		mu 0 3 19 12 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Dirt_Mound8" -p "Farm";
	rename -uid "51739521-4EDE-66B5-6328-0C9C7661BA04";
	setAttr ".t" -type "double3" 3.9864911495065658 7.0997481469891062e-030 12.326956841085773 ;
	setAttr ".s" -type "double3" 2.3908812482382333 0.43801735615620341 2.3908812482382333 ;
createNode mesh -n "Dirt_Mound8Shape" -p "Dirt_Mound8";
	rename -uid "9A4ADBD6-4340-B1CC-DE87-969865BDBCBA";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.375 0.30474663
		 0.375 0.44525337 0.32025337 0.1250125 0.32025337 0 0.42974669 0.1250125 0.625 0.30474663
		 0.57025331 0.1250125 0.57025331 0 0.375 0.62498748 0.42974669 0.75 0.375 0.75 0.42974669
		 0.44525337 0.57025331 0.44525337 0.625 0.62498748 0.625 0.75 0.42974669 0 0.42974669
		 0.30474663 0.57025331 0.30474663 0.42974672 0.62498748 0.57025331 0.62498748 0.57025331
		 0.75 0.67974663 0.1250125 0.67974663 0 0.82025337 0 0.82025337 0.1250125 0.17974663
		 0.1250125 0.17974663 0 0.625 0.44525337;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".vt[0:19]"  -0.5 5.0000002e-005 0.28101349 -0.28101322 5.0000002e-005 0.5
		 -0.28101322 0.5 0.28101349 0.28101322 0.5 0.28101349 0.28101322 5.0000002e-005 0.5
		 0.5 5.0000002e-005 0.28101349 -0.5 5.0000002e-005 -0.28101349 -0.28101322 0.5 -0.28101349
		 -0.28101322 5.0000002e-005 -0.5 0.28101322 5.0000002e-005 -0.5 0.28101322 0.5 -0.28101349
		 0.5 5.0000002e-005 -0.28101349 -0.28101322 -0.5 0.5 -0.5 -0.5 0.28101349 0.5 -0.5 0.28101349
		 0.28101322 -0.5 0.5 -0.5 -0.5 -0.28101349 -0.28101322 -0.5 -0.5 0.28101322 -0.5 -0.5
		 0.5 -0.5 -0.28101349;
	setAttr -s 36 ".ed[0:35]"  12 15 0 16 13 0 17 18 0 19 14 0 0 2 0 2 7 0
		 7 6 0 6 0 0 1 0 0 0 13 0 13 12 0 12 1 0 2 1 0 1 4 0 4 3 0 3 2 0 3 5 0 5 11 0 11 10 0
		 10 3 0 5 4 0 4 15 0 15 14 0 14 5 0 6 8 0 8 17 0 17 16 0 16 6 0 8 7 0 7 10 0 10 9 0
		 9 8 0 9 11 0 11 19 0 19 18 0 18 9 0;
	setAttr -s 17 -ch 64 ".fc[0:16]" -type "polyFaces" 
		f 4 4 5 6 7
		mu 0 4 0 16 11 1
		f 4 8 9 10 11
		mu 0 4 4 2 3 15
		f 4 12 13 14 15
		mu 0 4 16 4 6 17
		f 4 16 17 18 19
		mu 0 4 17 5 27 12
		f 4 20 21 22 23
		mu 0 4 21 6 7 22
		f 4 24 25 26 27
		mu 0 4 8 18 9 10
		f 4 28 29 30 31
		mu 0 4 18 11 12 19
		f 4 32 33 34 35
		mu 0 4 19 13 14 20
		f 4 -12 0 -22 -14
		mu 0 4 4 15 7 6
		f 4 -16 -20 -30 -6
		mu 0 4 16 17 12 11
		f 4 -32 -36 -3 -26
		mu 0 4 18 19 20 9
		f 4 -24 -4 -34 -18
		mu 0 4 21 22 23 24
		f 4 -28 1 -10 -8
		mu 0 4 25 26 3 2
		f 3 -9 -13 -5
		mu 0 3 2 4 16
		f 3 -15 -21 -17
		mu 0 3 17 6 21
		f 3 -7 -29 -25
		mu 0 3 1 11 18
		f 3 -31 -19 -33
		mu 0 3 19 12 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Fence_Post" -p "Farm";
	rename -uid "3685E889-4DCA-7C64-FBB3-C99E3A2A06A7";
	setAttr ".t" -type "double3" 6.0285631102029509 0.5 4.1123264507700226 ;
	setAttr ".s" -type "double3" 0.26474075132102592 1.3287773482439831 0.26474075132102592 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode mesh -n "Fence_PostShape" -p "Fence_Post";
	rename -uid "5D89B33F-42D3-350D-61C7-D397432426F9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Fence_Post1" -p "Farm";
	rename -uid "2BAD94BC-4F7B-3FAB-048E-8AA5DCA03DEC";
	setAttr ".t" -type "double3" -6.5339918259457468 0.50000000000000089 5.662597825921436 ;
	setAttr ".s" -type "double3" 0.26474075132102592 1.3287773482439831 0.26474075132102592 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode mesh -n "Fence_Post1Shape" -p "Fence_Post1";
	rename -uid "96EFCE0D-4F65-06E0-972C-409950DE763C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
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
createNode transform -n "Fence_Post2" -p "Farm";
	rename -uid "A973D4A4-409E-D139-5E66-89A102998C33";
	setAttr ".t" -type "double3" -7.0060068451252775 0.5 10.429277168330355 ;
	setAttr ".s" -type "double3" 0.26474075132102592 1.3287773482439831 0.26474075132102592 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode mesh -n "Fence_Post2Shape" -p "Fence_Post2";
	rename -uid "41161FB2-42CD-B182-2AAD-0EA9CD468FBB";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
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
createNode transform -n "Fence_Post3" -p "Farm";
	rename -uid "ABA7A809-4B5B-835C-FF6F-63A460365961";
	setAttr ".t" -type "double3" -6.4971809382999277 0.5 14.582076424547083 ;
	setAttr ".s" -type "double3" 0.26474075132102592 1.3287773482439831 0.26474075132102592 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode mesh -n "Fence_Post3Shape" -p "Fence_Post3";
	rename -uid "94B4C957-4FD5-62B0-B857-9C9506E8CA47";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
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
createNode transform -n "Fence_Post4" -p "Farm";
	rename -uid "A22A2512-4B72-BD59-6D00-3D89A4EB883C";
	setAttr ".t" -type "double3" -4.052967407876559 0.5 17.393188389732899 ;
	setAttr ".s" -type "double3" 0.26474075132102592 1.3287773482439831 0.26474075132102592 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode mesh -n "Fence_Post4Shape" -p "Fence_Post4";
	rename -uid "9C5A2332-4C8C-1517-D5F2-EDB1D9555454";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
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
createNode transform -n "Fence_Post5" -p "Farm";
	rename -uid "25E462EA-415E-0842-7992-0CBAC1C1E9BF";
	setAttr ".t" -type "double3" 0.45332992408590866 0.50000000000000033 18.200488348772794 ;
	setAttr ".s" -type "double3" 0.26474075132102592 1.3287773482439831 0.26474075132102592 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode mesh -n "Fence_Post5Shape" -p "Fence_Post5";
	rename -uid "5E4CF03F-434F-CF67-BD88-899455FEDBCD";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
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
createNode transform -n "Fence_Post6" -p "Farm";
	rename -uid "10D5B72B-41AE-56D5-654E-4F8D28019C23";
	setAttr ".t" -type "double3" 4.4019159956676699 0.50000000000000122 17.532120658547658 ;
	setAttr ".s" -type "double3" 0.26474075132102592 1.3287773482439831 0.26474075132102592 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode mesh -n "Fence_Post6Shape" -p "Fence_Post6";
	rename -uid "1859D303-48C8-6AE2-2F65-C9BDCDF6DFB7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
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
createNode transform -n "Fence_Post7" -p "Farm";
	rename -uid "3285F544-4ECF-4AFC-0EB1-2398708FFDFB";
	setAttr ".t" -type "double3" 6.1662195505483961 0.50000000000000033 14.952315439211823 ;
	setAttr ".s" -type "double3" 0.26474075132102592 1.3287773482439831 0.26474075132102592 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode mesh -n "Fence_Post7Shape" -p "Fence_Post7";
	rename -uid "464BC763-437D-C2E7-61E8-0C8DAA6CE442";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
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
createNode transform -n "Fence_Post8" -p "Farm";
	rename -uid "A53CDAD2-46D7-4FC4-566C-56AAD2DE9B9F";
	setAttr ".t" -type "double3" 6.6793074343242775 0.5 9.9805214412858092 ;
	setAttr ".s" -type "double3" 0.26474075132102592 1.3287773482439831 0.26474075132102592 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode mesh -n "Fence_Post8Shape" -p "Fence_Post8";
	rename -uid "87EE1355-4682-F670-34F6-8B80A66A6553";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
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
createNode transform -n "Farm_House" -p "Entire_thing";
	rename -uid "70119FC6-43C9-043D-D796-0E8324A80700";
	setAttr ".t" -type "double3" 1.2448552417738505 8.8817841970012523e-016 3.1532133080875555 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
	setAttr ".rp" -type "double3" -1.2448552417738501 3.1597585941917492 -3.1532133080875551 ;
	setAttr ".sp" -type "double3" -1.2448552417738501 3.1597585941917492 -3.1532133080875551 ;
createNode transform -n "Farm_House" -p "|Entire_thing|Farm_House";
	rename -uid "288959DE-48AB-BFE7-CB6E-60AF5060B7C9";
	setAttr ".t" -type "double3" 0 0.5 0 ;
	setAttr ".s" -type "double3" 2.9248791548716722 2.9248791548716722 2.9248791548716722 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode mesh -n "Farm_HouseShape" -p "|Entire_thing|Farm_House|Farm_House";
	rename -uid "5D391827-4906-0A4F-E432-E38E56093241";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.54684954881668091 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 25 ".pt";
	setAttr ".pt[9]" -type "float3" 0 0.05474456 0 ;
	setAttr ".pt[70]" -type "float3" 0 0 -0.020958249 ;
	setAttr ".pt[71]" -type "float3" 0 0 -0.020958249 ;
	setAttr ".pt[73]" -type "float3" 0 0 0.020958249 ;
	setAttr ".pt[74]" -type "float3" 0 0 0.020958249 ;
	setAttr ".pt[75]" -type "float3" 0 0 -0.020958249 ;
	setAttr ".pt[76]" -type "float3" 0 0 0.020958249 ;
	setAttr ".pt[77]" -type "float3" 0 0 -0.020958249 ;
	setAttr ".pt[78]" -type "float3" 0 0 -0.020958249 ;
	setAttr ".pt[81]" -type "float3" 0 0 0.020958249 ;
	setAttr ".pt[82]" -type "float3" 0 0 0.020958249 ;
	setAttr ".pt[83]" -type "float3" 0 0 -0.020958249 ;
	setAttr ".pt[85]" -type "float3" 0 0 0.020958249 ;
	setAttr ".pt[95]" -type "float3" -0.039211873 0 0 ;
createNode transform -n "Roof" -p "|Entire_thing|Farm_House";
	rename -uid "5E4FD5D2-4230-1945-51DA-D79F04E6ECD3";
	setAttr ".t" -type "double3" 0 3.1806166210044049 -3.0723062547852797 ;
createNode mesh -n "RoofShape" -p "Roof";
	rename -uid "6B6F0ACE-4298-F3E5-AAB8-45B20C6FC562";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 15 ".pt";
	setAttr ".pt[5]" -type "float3" 0 0 -0.40225402 ;
	setAttr ".pt[6]" -type "float3" 0 0 -0.40225402 ;
	setAttr ".pt[7]" -type "float3" 0 0 -0.40225402 ;
	setAttr ".pt[9]" -type "float3" 0 0 -0.40225402 ;
	setAttr ".pt[20]" -type "float3" 0 0 -0.40225402 ;
	setAttr ".pt[32]" -type "float3" 0 0 -0.40225402 ;
	setAttr ".pt[33]" -type "float3" 0 0 -0.40225402 ;
	setAttr ".pt[36]" -type "float3" 0 0 -0.40225402 ;
	setAttr ".pt[40]" -type "float3" 0 0 -0.40225402 ;
	setAttr ".pt[42]" -type "float3" 0 0 -0.40225402 ;
createNode transform -n "Roof_Post_Top" -p "|Entire_thing|Farm_House";
	rename -uid "96C894B7-44DA-5DCE-A8B1-3CB7AB6148A9";
	setAttr ".t" -type "double3" -1.0132870674133301 6.0481656378568296 -3.1532133080875555 ;
createNode mesh -n "Roof_Post_TopShape" -p "Roof_Post_Top";
	rename -uid "52ADD8C3-4E58-C39F-D235-7F8FE6E0040C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Roof_Post_Front_Small" -p "|Entire_thing|Farm_House";
	rename -uid "5443A66C-4A1F-0077-FF2F-839D4BD61730";
	setAttr ".t" -type "double3" 1.091541926070339 4.486388509811472 -10.537851333618166 ;
	setAttr ".r" -type "double3" 0 0 -40.843257985617896 ;
	setAttr ".s" -type "double3" 5.2398096956441345 0.24518504002228819 0.24518504002228819 ;
createNode mesh -n "Roof_Post_Front_SmallShape" -p "Roof_Post_Front_Small";
	rename -uid "9E6EF616-4D0B-FAAE-2136-639C90FA289D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[1]" -type "float3" 0.0061676875 0 0 ;
	setAttr ".pt[3]" -type "float3" 0.0061676875 0 0 ;
	setAttr ".pt[5]" -type "float3" 0.0061676875 0 0 ;
	setAttr ".pt[7]" -type "float3" 0.0061676875 0 0 ;
createNode transform -n "Roof_Post_Front_Small1" -p "|Entire_thing|Farm_House";
	rename -uid "D704CEBA-4C57-22AF-9935-91B15825C3A1";
	setAttr ".t" -type "double3" 1.0915419260703394 4.486388509811472 4.3932385444641113 ;
	setAttr ".r" -type "double3" 0 0 -40.843257985617896 ;
	setAttr ".s" -type "double3" 5.2398096956441345 0.24518504002228819 0.24518504002228819 ;
createNode mesh -n "Roof_Post_Front_Small1Shape" -p "Roof_Post_Front_Small1";
	rename -uid "88BFB9C7-4AAC-06B4-CDEA-6E9F31B833F5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[1]" -type "float3" 0.31952736 3.5527137e-015 0 ;
	setAttr ".pt[3]" -type "float3" 0.31952736 3.5527137e-015 0 ;
	setAttr ".pt[5]" -type "float3" 0.31952736 3.5527137e-015 0 ;
	setAttr ".pt[7]" -type "float3" 0.31952736 3.5527137e-015 0 ;
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
createNode transform -n "Roof_Post_Back_Small" -p "|Entire_thing|Farm_House";
	rename -uid "BF5DF411-4926-56B0-41F0-508893C16E44";
	setAttr ".t" -type "double3" -3.5372403778622878 4.5389440697553063 4.3932385444641113 ;
	setAttr ".r" -type "double3" 0 0 32.331723169803325 ;
	setAttr ".s" -type "double3" 3.0393835493288681 0.24518504002228819 0.24518504002228819 ;
	setAttr ".rp" -type "double3" 0.83713135183498744 -2.3980817331903381e-014 1.1102230246251565e-014 ;
	setAttr ".rpt" -type "double3" -0.20383775403727544 0.54747430918128537 0 ;
	setAttr ".sp" -type "double3" 0.15976369380950928 0 0 ;
	setAttr ".spt" -type "double3" 0.67736765802547816 -2.3980817331903381e-014 1.1102230246251565e-014 ;
createNode mesh -n "Roof_Post_Back_SmallShape" -p "Roof_Post_Back_Small";
	rename -uid "8B8FC309-41D8-4EEA-E97E-27982E41C6E4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt";
	setAttr ".pt[0]" -type "float3" 0.028744046 0.083320498 -4.8405724e-014 ;
	setAttr ".pt[2]" -type "float3" 0.014127351 0.066768266 -4.8405724e-014 ;
	setAttr ".pt[4]" -type "float3" 0.014127351 0.066768266 -4.5741189e-014 ;
	setAttr ".pt[6]" -type "float3" 0.028744046 0.083320498 -4.5741189e-014 ;
	setAttr ".pt[8]" -type "float3" 0.011136668 0.019436484 -2.6077032e-008 ;
	setAttr ".pt[9]" -type "float3" 0.011136661 0.019436462 2.9802322e-008 ;
	setAttr ".pt[10]" -type "float3" -0.011136657 -0.019436495 -3.3527613e-008 ;
	setAttr ".pt[11]" -type "float3" -0.011136664 -0.019436562 2.9802322e-008 ;
createNode mesh -n "polySurfaceShape1" -p "Roof_Post_Back_Small";
	rename -uid "079D1F57-4016-8C7B-74F8-C28CC4828CAD";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt";
	setAttr ".pt[1]" -type "float3" 0.31952736 3.5527137e-015 0 ;
	setAttr ".pt[3]" -type "float3" 0.31952736 3.5527137e-015 0 ;
	setAttr ".pt[5]" -type "float3" 0.31952736 3.5527137e-015 0 ;
	setAttr ".pt[7]" -type "float3" 0.31952736 3.5527137e-015 0 ;
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
createNode transform -n "Roof_Post_Back_Small1" -p "|Entire_thing|Farm_House";
	rename -uid "F4BD57B4-42AF-B268-FDD5-BBBA9C881625";
	setAttr ".t" -type "double3" -3.537240377862287 4.5389440697553045 -10.537851333618175 ;
	setAttr ".r" -type "double3" 0 0 32.331723169803325 ;
	setAttr ".s" -type "double3" 3.0393835493288681 0.24518504002228819 0.24518504002228819 ;
	setAttr ".rp" -type "double3" 0.83713135183498744 -2.3980817331903381e-014 1.1102230246251565e-014 ;
	setAttr ".rpt" -type "double3" -0.20383775403727544 0.54747430918128537 0 ;
	setAttr ".sp" -type "double3" 0.15976369380950928 0 0 ;
	setAttr ".spt" -type "double3" 0.67736765802547816 -2.3980817331903381e-014 1.1102230246251565e-014 ;
createNode mesh -n "Roof_Post_Back_Small1Shape" -p "Roof_Post_Back_Small1";
	rename -uid "4A2C08E5-4D97-779F-03D9-11B9281D77E3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.125 0 0.375 0 0.375 0.25 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt";
	setAttr ".pt[0]" -type "float3" 0.028744046 0.083320498 -4.8405724e-014 ;
	setAttr ".pt[2]" -type "float3" 0.014127351 0.066768266 -4.8405724e-014 ;
	setAttr ".pt[4]" -type "float3" 0.014127351 0.066768266 -4.5741189e-014 ;
	setAttr ".pt[6]" -type "float3" 0.028744046 0.083320498 -4.5741189e-014 ;
	setAttr ".pt[8]" -type "float3" 0.011136668 0.019436484 -2.6077032e-008 ;
	setAttr ".pt[9]" -type "float3" 0.011136661 0.019436462 2.9802322e-008 ;
	setAttr ".pt[10]" -type "float3" -0.011136657 -0.019436495 -3.3527613e-008 ;
	setAttr ".pt[11]" -type "float3" -0.011136664 -0.019436562 2.9802322e-008 ;
	setAttr -s 12 ".vt[0:11]"  -0.49999997 -0.5 0.5 0.81952751 -0.49999809 0.5
		 -0.49999991 0.5 0.5 0.81952745 0.5 0.5 -0.49999991 0.5 -0.5 0.81952745 0.5 -0.5 -0.49999997 -0.5 -0.5
		 0.81952751 -0.49999809 -0.5 -1.40859795 -4.68057823 -0.5 -1.40859795 -4.68057823 0.5
		 -1.40859795 -3.68057823 0.5 -1.40859795 -3.68057823 -0.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 1 1 3 0 2 4 1
		 3 5 0 4 6 1 5 7 0 6 0 1 7 1 0 6 8 0 0 9 0 8 9 0 2 10 0 9 10 0 4 11 0 10 11 0 11 8 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
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
		f 4 14 16 18 19
		mu 0 4 14 15 16 17
		f 4 10 13 -15 -13
		mu 0 4 12 0 15 14
		f 4 4 15 -17 -14
		mu 0 4 0 2 16 15
		f 4 6 17 -19 -16
		mu 0 4 2 13 17 16
		f 4 8 12 -20 -18
		mu 0 4 13 12 14 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape1" -p "Roof_Post_Back_Small1";
	rename -uid "B710EBAE-4535-5EC0-0F4E-7B981FEBA519";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt";
	setAttr ".pt[1]" -type "float3" 0.31952736 3.5527137e-015 0 ;
	setAttr ".pt[3]" -type "float3" 0.31952736 3.5527137e-015 0 ;
	setAttr ".pt[5]" -type "float3" 0.31952736 3.5527137e-015 0 ;
	setAttr ".pt[7]" -type "float3" 0.31952736 3.5527137e-015 0 ;
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
createNode transform -n "Roof_Crossbar" -p "|Entire_thing|Farm_House";
	rename -uid "D9DCDE69-43B7-9E38-5F0D-72A97A5596EF";
	setAttr ".t" -type "double3" 1.0828957579356924 4.4188426201443853 -3.0749145058609191 ;
	setAttr ".r" -type "double3" 0 0 -40.843 ;
	setAttr ".s" -type "double3" 0.24 0.24 14.843466006870358 ;
createNode mesh -n "Roof_CrossbarShape" -p "Roof_Crossbar";
	rename -uid "571FA3D8-4CFC-AF4B-5B5F-18B6A2C0BCE2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
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
createNode transform -n "Roof_Crossbar1" -p "|Entire_thing|Farm_House";
	rename -uid "9AE648A6-4D1A-459E-1D0F-37BBDA9A40AE";
	setAttr ".t" -type "double3" -4.5081491414010095 4.0344738940973413 -3.0749145058609191 ;
	setAttr ".r" -type "double3" 0 0 -52.224039344482811 ;
	setAttr ".s" -type "double3" 0.24 0.24 14.843466006870358 ;
createNode mesh -n "Roof_Crossbar1Shape" -p "Roof_Crossbar1";
	rename -uid "E065F923-47F7-0D06-537A-CCB2872E3A60";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
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
createNode transform -n "Roof_Support_Pillar" -p "|Entire_thing|Farm_House";
	rename -uid "506A0175-4E0B-7FB2-E221-69A60CCEBA26";
	setAttr ".t" -type "double3" 2.6185438489592263 1.5011504052208418 -9.1157414612426457 ;
	setAttr ".s" -type "double3" 0.21831241624903933 2.8857094710879805 0.21831241624903933 ;
createNode mesh -n "Roof_Support_PillarShape" -p "Roof_Support_Pillar";
	rename -uid "44D80E3D-418F-954E-6918-18B30B44390F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Stone_Corners" -p "|Entire_thing|Farm_House";
	rename -uid "8803934A-4A43-6413-B53E-D989C786DA48";
createNode transform -n "Stone_Corner_UV" -p "Stone_Corners";
	rename -uid "2C9FC8EE-4770-B3DD-6D2E-F29552380F0D";
	setAttr ".t" -type "double3" 3.9583091735839844 0 3.0972878932952881 ;
	setAttr ".s" -type "double3" 1.3158974071488874 1 1.3158974071488874 ;
	setAttr ".sp" -type "double3" 0 -4.6629367034256575e-015 0 ;
createNode mesh -n "Stone_Corner_UVShape" -p "Stone_Corner_UV";
	rename -uid "5FFFD614-43F3-124A-5DE6-5399F00EB14B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.48789979517459869 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.40315843 0.91174799
		 0.34597653 0.91105062 0.34841052 0.69658822 0.36054614 0.078604899 0.37116751 0.13512561
		 0.67532176 0.91485906 0.61813986 0.9141621 0.67819691 0.70011657 0.62075096 0.10281292
		 0.32776287 0.30445641 0.36622795 0.51301128 0.38283515 0.23409609 0.59807587 0.20837426
		 0.67050654 0.2720364 0.36742982 0.54429901 0.37341779 0.64632869 0.41496503 0.48918194
		 0.6089794 0.48384002 0.66041827 0.54167902 0.65374213 0.64715016 0.4089404 0.64116788
		 0.61860728 0.64172918 0.62104636 0.69939965 0.58488661 0.10927833 0.38419646 0.29002634
		 0.61025238 0.26502323 0.40405473 0.54124254 0.62328339 0.53840429 0.40556103 0.69730544
		 0.83406085 0.078160197 0.84628624 0.17973796 0.12223701 0.16370162 0.33546054 0.13719638
		 0.34733221 0.2405912 0.13438088 0.26527274 0.58197016 0.05321978 0.63342142 0.20627356
		 0.6579926 0.50274861;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt[0:23]" -type "float3"  0.20871794 0.49999988 -0.2087182 
		0.20871794 0.34251964 -0.25882849 0.25882825 0.34251964 -0.2087182 -0.25882825 0.34251964 
		-0.2087182 -0.20871794 0.34251964 -0.25882849 -0.20871794 0.49999988 -0.2087182 0.25882825 
		0.027496099 -0.2087182 0.20871794 0.027496099 -0.25882849 0.20871794 -0.12998417 
		-0.2087182 -0.20871794 -0.12998417 -0.2087182 -0.20871794 0.027496099 -0.25882849 
		-0.25882825 0.027496099 -0.2087182 0.25882825 0.027496099 0.20871769 0.20871794 -0.12998417 
		0.20871769 0.20871794 0.027496099 0.25882825 -0.20871794 0.027496099 0.25882825 -0.20871794 
		-0.12998417 0.20871769 -0.25882825 0.027496099 0.20871769 0.25882825 0.34251964 0.20871769 
		0.20871794 0.34251964 0.25882825 0.20871794 0.49999988 0.20871769 -0.20871794 0.49999988 
		0.20871769 -0.20871794 0.34251964 0.25882825 -0.25882825 0.34251964 0.20871769;
	setAttr -s 24 ".vt[0:23]"  -0.40319777 -0.49999988 0.40319824 -0.40319777 -0.25002491 0.50000048
		 -0.5 -0.25002491 0.40319824 0.5 -0.25002491 0.40319824 0.40319777 -0.25002491 0.50000048
		 0.40319777 -0.49999988 0.40319824 -0.5 0.25002503 0.40319824 -0.40319777 0.25002503 0.50000048
		 -0.40319777 0.5 0.40319824 0.40319777 0.5 0.40319824 0.40319777 0.25002503 0.50000048
		 0.5 0.25002503 0.40319824 -0.5 0.25002503 -0.40319729 -0.40319777 0.5 -0.40319729
		 -0.40319777 0.25002503 -0.5 0.40319777 0.25002503 -0.5 0.40319777 0.5 -0.40319729
		 0.5 0.25002503 -0.40319729 -0.5 -0.25002491 -0.40319729 -0.40319777 -0.25002491 -0.5
		 -0.40319777 -0.49999988 -0.40319729 0.40319777 -0.49999988 -0.40319729 0.40319777 -0.25002491 -0.5
		 0.5 -0.25002491 -0.40319729;
	setAttr -s 48 ".ed[0:47]"  0 2 0 2 18 0 18 20 0 20 0 0 1 0 0 0 5 0 5 4 0
		 4 1 0 2 1 0 1 7 0 7 6 0 6 2 0 3 5 0 5 21 0 21 23 0 23 3 0 4 3 0 3 11 0 11 10 0 10 4 0
		 6 8 0 8 13 0 13 12 0 12 6 0 8 7 0 7 10 0 10 9 0 9 8 0 9 11 0 11 17 0 17 16 0 16 9 0
		 12 14 0 14 19 0 19 18 0 18 12 0 14 13 0 13 16 0 16 15 0 15 14 0 15 17 0 17 23 0 23 22 0
		 22 15 0 20 19 0 19 22 0 22 21 0 21 20 0;
	setAttr -s 26 -ch 96 ".fc[0:25]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 28
		f 4 4 5 6 7
		mu 0 4 4 3 35 23
		f 4 8 9 10 11
		mu 0 4 32 4 11 33
		f 4 12 13 14 15
		mu 0 4 5 6 22 7
		f 4 16 17 18 19
		mu 0 4 23 8 36 12
		f 4 20 21 22 23
		mu 0 4 9 24 16 10
		f 4 24 25 26 27
		mu 0 4 24 11 12 25
		f 4 28 29 30 31
		mu 0 4 25 13 37 17
		f 4 32 33 34 35
		mu 0 4 14 26 20 15
		f 4 36 37 38 39
		mu 0 4 26 16 17 27
		f 4 40 41 42 43
		mu 0 4 27 18 19 21
		f 4 44 45 46 47
		mu 0 4 28 20 21 22
		f 4 -8 -20 -26 -10
		mu 0 4 4 23 12 11
		f 4 -28 -32 -38 -22
		mu 0 4 24 25 17 16
		f 4 -40 -44 -46 -34
		mu 0 4 26 27 21 20
		f 4 -48 -14 -6 -4
		mu 0 4 28 22 6 0
		f 4 -16 -42 -30 -18
		mu 0 4 8 29 30 36
		f 4 -2 -12 -24 -36
		mu 0 4 31 32 33 34
		f 3 -5 -9 -1
		mu 0 3 3 4 32
		f 3 -17 -7 -13
		mu 0 3 8 23 35
		f 3 -11 -25 -21
		mu 0 3 33 11 24
		f 3 -27 -19 -29
		mu 0 3 25 12 36
		f 3 -23 -37 -33
		mu 0 3 10 16 26
		f 3 -39 -31 -41
		mu 0 3 27 17 37
		f 3 -35 -45 -3
		mu 0 3 15 20 28
		f 3 -47 -43 -15
		mu 0 3 22 21 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Stone_Corner_UV1" -p "Stone_Corners";
	rename -uid "D20342EF-49BF-4BFB-0557-F391EFD94E39";
	setAttr ".t" -type "double3" 3.9583091735839844 0.35687775924771625 3.0972878932952881 ;
	setAttr ".s" -type "double3" 1.1454533550384749 1 1.1454533550384749 ;
	setAttr ".sp" -type "double3" 0 -4.6629367034256575e-015 0 ;
createNode mesh -n "Stone_Corner_UV1Shape" -p "Stone_Corner_UV1";
	rename -uid "A7EDE416-4521-0506-5050-338B098B0189";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.48789979517459869 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.40315843 0.91174799
		 0.34597653 0.91105062 0.34841052 0.69658822 0.36054614 0.078604899 0.37116751 0.13512561
		 0.67532176 0.91485906 0.61813986 0.9141621 0.67819691 0.70011657 0.62075096 0.10281292
		 0.32776287 0.30445641 0.36622795 0.51301128 0.38283515 0.23409609 0.59807587 0.20837426
		 0.67050654 0.2720364 0.36742982 0.54429901 0.37341779 0.64632869 0.41496503 0.48918194
		 0.6089794 0.48384002 0.66041827 0.54167902 0.65374213 0.64715016 0.4089404 0.64116788
		 0.61860728 0.64172918 0.62104636 0.69939965 0.58488661 0.10927833 0.38419646 0.29002634
		 0.61025238 0.26502323 0.40405473 0.54124254 0.62328339 0.53840429 0.40556103 0.69730544
		 0.83406085 0.078160197 0.84628624 0.17973796 0.12223701 0.16370162 0.33546054 0.13719638
		 0.34733221 0.2405912 0.13438088 0.26527274 0.58197016 0.05321978 0.63342142 0.20627356
		 0.6579926 0.50274861;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt[0:23]" -type "float3"  0.20871794 0.49999988 -0.2087182 
		0.20871794 0.34251964 -0.25882849 0.25882825 0.34251964 -0.2087182 -0.25882825 0.34251964 
		-0.2087182 -0.20871794 0.34251964 -0.25882849 -0.20871794 0.49999988 -0.2087182 0.25882825 
		0.027496099 -0.2087182 0.20871794 0.027496099 -0.25882849 0.20871794 -0.12998417 
		-0.2087182 -0.20871794 -0.12998417 -0.2087182 -0.20871794 0.027496099 -0.25882849 
		-0.25882825 0.027496099 -0.2087182 0.25882825 0.027496099 0.20871769 0.20871794 -0.12998417 
		0.20871769 0.20871794 0.027496099 0.25882825 -0.20871794 0.027496099 0.25882825 -0.20871794 
		-0.12998417 0.20871769 -0.25882825 0.027496099 0.20871769 0.25882825 0.34251964 0.20871769 
		0.20871794 0.34251964 0.25882825 0.20871794 0.49999988 0.20871769 -0.20871794 0.49999988 
		0.20871769 -0.20871794 0.34251964 0.25882825 -0.25882825 0.34251964 0.20871769;
	setAttr -s 24 ".vt[0:23]"  -0.40319777 -0.49999988 0.40319824 -0.40319777 -0.25002491 0.50000048
		 -0.5 -0.25002491 0.40319824 0.5 -0.25002491 0.40319824 0.40319777 -0.25002491 0.50000048
		 0.40319777 -0.49999988 0.40319824 -0.5 0.25002503 0.40319824 -0.40319777 0.25002503 0.50000048
		 -0.40319777 0.5 0.40319824 0.40319777 0.5 0.40319824 0.40319777 0.25002503 0.50000048
		 0.5 0.25002503 0.40319824 -0.5 0.25002503 -0.40319729 -0.40319777 0.5 -0.40319729
		 -0.40319777 0.25002503 -0.5 0.40319777 0.25002503 -0.5 0.40319777 0.5 -0.40319729
		 0.5 0.25002503 -0.40319729 -0.5 -0.25002491 -0.40319729 -0.40319777 -0.25002491 -0.5
		 -0.40319777 -0.49999988 -0.40319729 0.40319777 -0.49999988 -0.40319729 0.40319777 -0.25002491 -0.5
		 0.5 -0.25002491 -0.40319729;
	setAttr -s 48 ".ed[0:47]"  0 2 0 2 18 0 18 20 0 20 0 0 1 0 0 0 5 0 5 4 0
		 4 1 0 2 1 0 1 7 0 7 6 0 6 2 0 3 5 0 5 21 0 21 23 0 23 3 0 4 3 0 3 11 0 11 10 0 10 4 0
		 6 8 0 8 13 0 13 12 0 12 6 0 8 7 0 7 10 0 10 9 0 9 8 0 9 11 0 11 17 0 17 16 0 16 9 0
		 12 14 0 14 19 0 19 18 0 18 12 0 14 13 0 13 16 0 16 15 0 15 14 0 15 17 0 17 23 0 23 22 0
		 22 15 0 20 19 0 19 22 0 22 21 0 21 20 0;
	setAttr -s 26 -ch 96 ".fc[0:25]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 28
		f 4 4 5 6 7
		mu 0 4 4 3 35 23
		f 4 8 9 10 11
		mu 0 4 32 4 11 33
		f 4 12 13 14 15
		mu 0 4 5 6 22 7
		f 4 16 17 18 19
		mu 0 4 23 8 36 12
		f 4 20 21 22 23
		mu 0 4 9 24 16 10
		f 4 24 25 26 27
		mu 0 4 24 11 12 25
		f 4 28 29 30 31
		mu 0 4 25 13 37 17
		f 4 32 33 34 35
		mu 0 4 14 26 20 15
		f 4 36 37 38 39
		mu 0 4 26 16 17 27
		f 4 40 41 42 43
		mu 0 4 27 18 19 21
		f 4 44 45 46 47
		mu 0 4 28 20 21 22
		f 4 -8 -20 -26 -10
		mu 0 4 4 23 12 11
		f 4 -28 -32 -38 -22
		mu 0 4 24 25 17 16
		f 4 -40 -44 -46 -34
		mu 0 4 26 27 21 20
		f 4 -48 -14 -6 -4
		mu 0 4 28 22 6 0
		f 4 -16 -42 -30 -18
		mu 0 4 8 29 30 36
		f 4 -2 -12 -24 -36
		mu 0 4 31 32 33 34
		f 3 -5 -9 -1
		mu 0 3 3 4 32
		f 3 -17 -7 -13
		mu 0 3 8 23 35
		f 3 -11 -25 -21
		mu 0 3 33 11 24
		f 3 -27 -19 -29
		mu 0 3 25 12 36
		f 3 -23 -37 -33
		mu 0 3 10 16 26
		f 3 -39 -31 -41
		mu 0 3 27 17 37
		f 3 -35 -45 -3
		mu 0 3 15 20 28
		f 3 -47 -43 -15
		mu 0 3 22 21 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Stone_Corner_UV2" -p "Stone_Corners";
	rename -uid "97292785-4EF1-8005-7BF1-C9886DB24780";
	setAttr ".t" -type "double3" 3.9583091735839844 0.70616884861165219 3.0972878932952881 ;
	setAttr ".sp" -type "double3" 0 -4.6629367034256575e-015 0 ;
createNode mesh -n "Stone_Corner_UV2Shape" -p "Stone_Corner_UV2";
	rename -uid "5576B3CD-47F8-FAC6-ED7D-76861D465663";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.48789979517459869 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.40315843 0.91174799
		 0.34597653 0.91105062 0.34841052 0.69658822 0.36054614 0.078604899 0.37116751 0.13512561
		 0.67532176 0.91485906 0.61813986 0.9141621 0.67819691 0.70011657 0.62075096 0.10281292
		 0.32776287 0.30445641 0.36622795 0.51301128 0.38283515 0.23409609 0.59807587 0.20837426
		 0.67050654 0.2720364 0.36742982 0.54429901 0.37341779 0.64632869 0.41496503 0.48918194
		 0.6089794 0.48384002 0.66041827 0.54167902 0.65374213 0.64715016 0.4089404 0.64116788
		 0.61860728 0.64172918 0.62104636 0.69939965 0.58488661 0.10927833 0.38419646 0.29002634
		 0.61025238 0.26502323 0.40405473 0.54124254 0.62328339 0.53840429 0.40556103 0.69730544
		 0.83406085 0.078160197 0.84628624 0.17973796 0.12223701 0.16370162 0.33546054 0.13719638
		 0.34733221 0.2405912 0.13438088 0.26527274 0.58197016 0.05321978 0.63342142 0.20627356
		 0.6579926 0.50274861;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt[0:23]" -type "float3"  0.20871794 0.49999988 -0.2087182 
		0.20871794 0.34251964 -0.25882849 0.25882825 0.34251964 -0.2087182 -0.25882825 0.34251964 
		-0.2087182 -0.20871794 0.34251964 -0.25882849 -0.20871794 0.49999988 -0.2087182 0.25882825 
		0.027496099 -0.2087182 0.20871794 0.027496099 -0.25882849 0.20871794 -0.12998417 
		-0.2087182 -0.20871794 -0.12998417 -0.2087182 -0.20871794 0.027496099 -0.25882849 
		-0.25882825 0.027496099 -0.2087182 0.25882825 0.027496099 0.20871769 0.20871794 -0.12998417 
		0.20871769 0.20871794 0.027496099 0.25882825 -0.20871794 0.027496099 0.25882825 -0.20871794 
		-0.12998417 0.20871769 -0.25882825 0.027496099 0.20871769 0.25882825 0.34251964 0.20871769 
		0.20871794 0.34251964 0.25882825 0.20871794 0.49999988 0.20871769 -0.20871794 0.49999988 
		0.20871769 -0.20871794 0.34251964 0.25882825 -0.25882825 0.34251964 0.20871769;
	setAttr -s 24 ".vt[0:23]"  -0.40319777 -0.49999988 0.40319824 -0.40319777 -0.25002491 0.50000048
		 -0.5 -0.25002491 0.40319824 0.5 -0.25002491 0.40319824 0.40319777 -0.25002491 0.50000048
		 0.40319777 -0.49999988 0.40319824 -0.5 0.25002503 0.40319824 -0.40319777 0.25002503 0.50000048
		 -0.40319777 0.5 0.40319824 0.40319777 0.5 0.40319824 0.40319777 0.25002503 0.50000048
		 0.5 0.25002503 0.40319824 -0.5 0.25002503 -0.40319729 -0.40319777 0.5 -0.40319729
		 -0.40319777 0.25002503 -0.5 0.40319777 0.25002503 -0.5 0.40319777 0.5 -0.40319729
		 0.5 0.25002503 -0.40319729 -0.5 -0.25002491 -0.40319729 -0.40319777 -0.25002491 -0.5
		 -0.40319777 -0.49999988 -0.40319729 0.40319777 -0.49999988 -0.40319729 0.40319777 -0.25002491 -0.5
		 0.5 -0.25002491 -0.40319729;
	setAttr -s 48 ".ed[0:47]"  0 2 0 2 18 0 18 20 0 20 0 0 1 0 0 0 5 0 5 4 0
		 4 1 0 2 1 0 1 7 0 7 6 0 6 2 0 3 5 0 5 21 0 21 23 0 23 3 0 4 3 0 3 11 0 11 10 0 10 4 0
		 6 8 0 8 13 0 13 12 0 12 6 0 8 7 0 7 10 0 10 9 0 9 8 0 9 11 0 11 17 0 17 16 0 16 9 0
		 12 14 0 14 19 0 19 18 0 18 12 0 14 13 0 13 16 0 16 15 0 15 14 0 15 17 0 17 23 0 23 22 0
		 22 15 0 20 19 0 19 22 0 22 21 0 21 20 0;
	setAttr -s 26 -ch 96 ".fc[0:25]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 28
		f 4 4 5 6 7
		mu 0 4 4 3 35 23
		f 4 8 9 10 11
		mu 0 4 32 4 11 33
		f 4 12 13 14 15
		mu 0 4 5 6 22 7
		f 4 16 17 18 19
		mu 0 4 23 8 36 12
		f 4 20 21 22 23
		mu 0 4 9 24 16 10
		f 4 24 25 26 27
		mu 0 4 24 11 12 25
		f 4 28 29 30 31
		mu 0 4 25 13 37 17
		f 4 32 33 34 35
		mu 0 4 14 26 20 15
		f 4 36 37 38 39
		mu 0 4 26 16 17 27
		f 4 40 41 42 43
		mu 0 4 27 18 19 21
		f 4 44 45 46 47
		mu 0 4 28 20 21 22
		f 4 -8 -20 -26 -10
		mu 0 4 4 23 12 11
		f 4 -28 -32 -38 -22
		mu 0 4 24 25 17 16
		f 4 -40 -44 -46 -34
		mu 0 4 26 27 21 20
		f 4 -48 -14 -6 -4
		mu 0 4 28 22 6 0
		f 4 -16 -42 -30 -18
		mu 0 4 8 29 30 36
		f 4 -2 -12 -24 -36
		mu 0 4 31 32 33 34
		f 3 -5 -9 -1
		mu 0 3 3 4 32
		f 3 -17 -7 -13
		mu 0 3 8 23 35
		f 3 -11 -25 -21
		mu 0 3 33 11 24
		f 3 -27 -19 -29
		mu 0 3 25 12 36
		f 3 -23 -37 -33
		mu 0 3 10 16 26
		f 3 -39 -31 -41
		mu 0 3 27 17 37
		f 3 -35 -45 -3
		mu 0 3 15 20 28
		f 3 -47 -43 -15
		mu 0 3 22 21 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Stone_Corner_UV3" -p "Stone_Corners";
	rename -uid "238541B2-491D-B6FC-C792-24BC96FAE048";
	setAttr ".t" -type "double3" 3.9583091735839844 1.0652904483105978 3.0972878932952881 ;
	setAttr ".s" -type "double3" 1.1454533550384749 1 1.1454533550384749 ;
	setAttr ".sp" -type "double3" 0 -4.6629367034256575e-015 0 ;
createNode mesh -n "Stone_Corner_UV3Shape" -p "Stone_Corner_UV3";
	rename -uid "7AE28D4D-4867-31A6-C82F-D3B832DC9045";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.48789979517459869 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.40315843 0.91174799
		 0.34597653 0.91105062 0.34841052 0.69658822 0.36054614 0.078604899 0.37116751 0.13512561
		 0.67532176 0.91485906 0.61813986 0.9141621 0.67819691 0.70011657 0.62075096 0.10281292
		 0.32776287 0.30445641 0.36622795 0.51301128 0.38283515 0.23409609 0.59807587 0.20837426
		 0.67050654 0.2720364 0.36742982 0.54429901 0.37341779 0.64632869 0.41496503 0.48918194
		 0.6089794 0.48384002 0.66041827 0.54167902 0.65374213 0.64715016 0.4089404 0.64116788
		 0.61860728 0.64172918 0.62104636 0.69939965 0.58488661 0.10927833 0.38419646 0.29002634
		 0.61025238 0.26502323 0.40405473 0.54124254 0.62328339 0.53840429 0.40556103 0.69730544
		 0.83406085 0.078160197 0.84628624 0.17973796 0.12223701 0.16370162 0.33546054 0.13719638
		 0.34733221 0.2405912 0.13438088 0.26527274 0.58197016 0.05321978 0.63342142 0.20627356
		 0.6579926 0.50274861;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt[0:23]" -type "float3"  0.20871794 0.49999988 -0.2087182 
		0.20871794 0.34251964 -0.25882849 0.25882825 0.34251964 -0.2087182 -0.25882825 0.34251964 
		-0.2087182 -0.20871794 0.34251964 -0.25882849 -0.20871794 0.49999988 -0.2087182 0.25882825 
		0.027496099 -0.2087182 0.20871794 0.027496099 -0.25882849 0.20871794 -0.12998417 
		-0.2087182 -0.20871794 -0.12998417 -0.2087182 -0.20871794 0.027496099 -0.25882849 
		-0.25882825 0.027496099 -0.2087182 0.25882825 0.027496099 0.20871769 0.20871794 -0.12998417 
		0.20871769 0.20871794 0.027496099 0.25882825 -0.20871794 0.027496099 0.25882825 -0.20871794 
		-0.12998417 0.20871769 -0.25882825 0.027496099 0.20871769 0.25882825 0.34251964 0.20871769 
		0.20871794 0.34251964 0.25882825 0.20871794 0.49999988 0.20871769 -0.20871794 0.49999988 
		0.20871769 -0.20871794 0.34251964 0.25882825 -0.25882825 0.34251964 0.20871769;
	setAttr -s 24 ".vt[0:23]"  -0.40319777 -0.49999988 0.40319824 -0.40319777 -0.25002491 0.50000048
		 -0.5 -0.25002491 0.40319824 0.5 -0.25002491 0.40319824 0.40319777 -0.25002491 0.50000048
		 0.40319777 -0.49999988 0.40319824 -0.5 0.25002503 0.40319824 -0.40319777 0.25002503 0.50000048
		 -0.40319777 0.5 0.40319824 0.40319777 0.5 0.40319824 0.40319777 0.25002503 0.50000048
		 0.5 0.25002503 0.40319824 -0.5 0.25002503 -0.40319729 -0.40319777 0.5 -0.40319729
		 -0.40319777 0.25002503 -0.5 0.40319777 0.25002503 -0.5 0.40319777 0.5 -0.40319729
		 0.5 0.25002503 -0.40319729 -0.5 -0.25002491 -0.40319729 -0.40319777 -0.25002491 -0.5
		 -0.40319777 -0.49999988 -0.40319729 0.40319777 -0.49999988 -0.40319729 0.40319777 -0.25002491 -0.5
		 0.5 -0.25002491 -0.40319729;
	setAttr -s 48 ".ed[0:47]"  0 2 0 2 18 0 18 20 0 20 0 0 1 0 0 0 5 0 5 4 0
		 4 1 0 2 1 0 1 7 0 7 6 0 6 2 0 3 5 0 5 21 0 21 23 0 23 3 0 4 3 0 3 11 0 11 10 0 10 4 0
		 6 8 0 8 13 0 13 12 0 12 6 0 8 7 0 7 10 0 10 9 0 9 8 0 9 11 0 11 17 0 17 16 0 16 9 0
		 12 14 0 14 19 0 19 18 0 18 12 0 14 13 0 13 16 0 16 15 0 15 14 0 15 17 0 17 23 0 23 22 0
		 22 15 0 20 19 0 19 22 0 22 21 0 21 20 0;
	setAttr -s 26 -ch 96 ".fc[0:25]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 28
		f 4 4 5 6 7
		mu 0 4 4 3 35 23
		f 4 8 9 10 11
		mu 0 4 32 4 11 33
		f 4 12 13 14 15
		mu 0 4 5 6 22 7
		f 4 16 17 18 19
		mu 0 4 23 8 36 12
		f 4 20 21 22 23
		mu 0 4 9 24 16 10
		f 4 24 25 26 27
		mu 0 4 24 11 12 25
		f 4 28 29 30 31
		mu 0 4 25 13 37 17
		f 4 32 33 34 35
		mu 0 4 14 26 20 15
		f 4 36 37 38 39
		mu 0 4 26 16 17 27
		f 4 40 41 42 43
		mu 0 4 27 18 19 21
		f 4 44 45 46 47
		mu 0 4 28 20 21 22
		f 4 -8 -20 -26 -10
		mu 0 4 4 23 12 11
		f 4 -28 -32 -38 -22
		mu 0 4 24 25 17 16
		f 4 -40 -44 -46 -34
		mu 0 4 26 27 21 20
		f 4 -48 -14 -6 -4
		mu 0 4 28 22 6 0
		f 4 -16 -42 -30 -18
		mu 0 4 8 29 30 36
		f 4 -2 -12 -24 -36
		mu 0 4 31 32 33 34
		f 3 -5 -9 -1
		mu 0 3 3 4 32
		f 3 -17 -7 -13
		mu 0 3 8 23 35
		f 3 -11 -25 -21
		mu 0 3 33 11 24
		f 3 -27 -19 -29
		mu 0 3 25 12 36
		f 3 -23 -37 -33
		mu 0 3 10 16 26
		f 3 -39 -31 -41
		mu 0 3 27 17 37
		f 3 -35 -45 -3
		mu 0 3 15 20 28
		f 3 -47 -43 -15
		mu 0 3 22 21 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Stone_Corner_UV4" -p "Stone_Corners";
	rename -uid "06D63E42-49FC-04DC-A141-4FA9EF4ED9BE";
	setAttr ".t" -type "double3" 3.9583091735839844 1.4169278104116085 3.0972878932952881 ;
	setAttr ".sp" -type "double3" 0 -4.6629367034256575e-015 0 ;
createNode mesh -n "Stone_Corner_UV4Shape" -p "Stone_Corner_UV4";
	rename -uid "EAEBA1CC-4159-9AFA-4B9C-D7A102CDD77B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.48789979517459869 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.40315843 0.91174799
		 0.34597653 0.91105062 0.34841052 0.69658822 0.36054614 0.078604899 0.37116751 0.13512561
		 0.67532176 0.91485906 0.61813986 0.9141621 0.67819691 0.70011657 0.62075096 0.10281292
		 0.32776287 0.30445641 0.36622795 0.51301128 0.38283515 0.23409609 0.59807587 0.20837426
		 0.67050654 0.2720364 0.36742982 0.54429901 0.37341779 0.64632869 0.41496503 0.48918194
		 0.6089794 0.48384002 0.66041827 0.54167902 0.65374213 0.64715016 0.4089404 0.64116788
		 0.61860728 0.64172918 0.62104636 0.69939965 0.58488661 0.10927833 0.38419646 0.29002634
		 0.61025238 0.26502323 0.40405473 0.54124254 0.62328339 0.53840429 0.40556103 0.69730544
		 0.83406085 0.078160197 0.84628624 0.17973796 0.12223701 0.16370162 0.33546054 0.13719638
		 0.34733221 0.2405912 0.13438088 0.26527274 0.58197016 0.05321978 0.63342142 0.20627356
		 0.6579926 0.50274861;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt[0:23]" -type "float3"  0.20871794 0.49999988 -0.2087182 
		0.20871794 0.34251964 -0.25882849 0.25882825 0.34251964 -0.2087182 -0.25882825 0.34251964 
		-0.2087182 -0.20871794 0.34251964 -0.25882849 -0.20871794 0.49999988 -0.2087182 0.25882825 
		0.027496099 -0.2087182 0.20871794 0.027496099 -0.25882849 0.20871794 -0.12998417 
		-0.2087182 -0.20871794 -0.12998417 -0.2087182 -0.20871794 0.027496099 -0.25882849 
		-0.25882825 0.027496099 -0.2087182 0.25882825 0.027496099 0.20871769 0.20871794 -0.12998417 
		0.20871769 0.20871794 0.027496099 0.25882825 -0.20871794 0.027496099 0.25882825 -0.20871794 
		-0.12998417 0.20871769 -0.25882825 0.027496099 0.20871769 0.25882825 0.34251964 0.20871769 
		0.20871794 0.34251964 0.25882825 0.20871794 0.49999988 0.20871769 -0.20871794 0.49999988 
		0.20871769 -0.20871794 0.34251964 0.25882825 -0.25882825 0.34251964 0.20871769;
	setAttr -s 24 ".vt[0:23]"  -0.40319777 -0.49999988 0.40319824 -0.40319777 -0.25002491 0.50000048
		 -0.5 -0.25002491 0.40319824 0.5 -0.25002491 0.40319824 0.40319777 -0.25002491 0.50000048
		 0.40319777 -0.49999988 0.40319824 -0.5 0.25002503 0.40319824 -0.40319777 0.25002503 0.50000048
		 -0.40319777 0.5 0.40319824 0.40319777 0.5 0.40319824 0.40319777 0.25002503 0.50000048
		 0.5 0.25002503 0.40319824 -0.5 0.25002503 -0.40319729 -0.40319777 0.5 -0.40319729
		 -0.40319777 0.25002503 -0.5 0.40319777 0.25002503 -0.5 0.40319777 0.5 -0.40319729
		 0.5 0.25002503 -0.40319729 -0.5 -0.25002491 -0.40319729 -0.40319777 -0.25002491 -0.5
		 -0.40319777 -0.49999988 -0.40319729 0.40319777 -0.49999988 -0.40319729 0.40319777 -0.25002491 -0.5
		 0.5 -0.25002491 -0.40319729;
	setAttr -s 48 ".ed[0:47]"  0 2 0 2 18 0 18 20 0 20 0 0 1 0 0 0 5 0 5 4 0
		 4 1 0 2 1 0 1 7 0 7 6 0 6 2 0 3 5 0 5 21 0 21 23 0 23 3 0 4 3 0 3 11 0 11 10 0 10 4 0
		 6 8 0 8 13 0 13 12 0 12 6 0 8 7 0 7 10 0 10 9 0 9 8 0 9 11 0 11 17 0 17 16 0 16 9 0
		 12 14 0 14 19 0 19 18 0 18 12 0 14 13 0 13 16 0 16 15 0 15 14 0 15 17 0 17 23 0 23 22 0
		 22 15 0 20 19 0 19 22 0 22 21 0 21 20 0;
	setAttr -s 26 -ch 96 ".fc[0:25]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 28
		f 4 4 5 6 7
		mu 0 4 4 3 35 23
		f 4 8 9 10 11
		mu 0 4 32 4 11 33
		f 4 12 13 14 15
		mu 0 4 5 6 22 7
		f 4 16 17 18 19
		mu 0 4 23 8 36 12
		f 4 20 21 22 23
		mu 0 4 9 24 16 10
		f 4 24 25 26 27
		mu 0 4 24 11 12 25
		f 4 28 29 30 31
		mu 0 4 25 13 37 17
		f 4 32 33 34 35
		mu 0 4 14 26 20 15
		f 4 36 37 38 39
		mu 0 4 26 16 17 27
		f 4 40 41 42 43
		mu 0 4 27 18 19 21
		f 4 44 45 46 47
		mu 0 4 28 20 21 22
		f 4 -8 -20 -26 -10
		mu 0 4 4 23 12 11
		f 4 -28 -32 -38 -22
		mu 0 4 24 25 17 16
		f 4 -40 -44 -46 -34
		mu 0 4 26 27 21 20
		f 4 -48 -14 -6 -4
		mu 0 4 28 22 6 0
		f 4 -16 -42 -30 -18
		mu 0 4 8 29 30 36
		f 4 -2 -12 -24 -36
		mu 0 4 31 32 33 34
		f 3 -5 -9 -1
		mu 0 3 3 4 32
		f 3 -17 -7 -13
		mu 0 3 8 23 35
		f 3 -11 -25 -21
		mu 0 3 33 11 24
		f 3 -27 -19 -29
		mu 0 3 25 12 36
		f 3 -23 -37 -33
		mu 0 3 10 16 26
		f 3 -39 -31 -41
		mu 0 3 27 17 37
		f 3 -35 -45 -3
		mu 0 3 15 20 28
		f 3 -47 -43 -15
		mu 0 3 22 21 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Stone_Corner_UV5" -p "Stone_Corners";
	rename -uid "7F82B74E-485C-1BA6-4453-AB918B03BEB8";
	setAttr ".t" -type "double3" 3.9583091735839844 1.4169278104116085 -3.0972878932952881 ;
	setAttr ".s" -type "double3" 1.1454533550384749 0.93468571252438815 1.1454533550384749 ;
	setAttr ".sp" -type "double3" 0 -4.6629367034256575e-015 0 ;
createNode mesh -n "Stone_Corner_UV5Shape" -p "Stone_Corner_UV5";
	rename -uid "C7EDAA8D-4DE6-AACB-CC08-F0AD3777C76E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.48789979517459869 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.40315843 0.91174799
		 0.34597653 0.91105062 0.34841052 0.69658822 0.36054614 0.078604899 0.37116751 0.13512561
		 0.67532176 0.91485906 0.61813986 0.9141621 0.67819691 0.70011657 0.62075096 0.10281292
		 0.32776287 0.30445641 0.36622795 0.51301128 0.38283515 0.23409609 0.59807587 0.20837426
		 0.67050654 0.2720364 0.36742982 0.54429901 0.37341779 0.64632869 0.41496503 0.48918194
		 0.6089794 0.48384002 0.66041827 0.54167902 0.65374213 0.64715016 0.4089404 0.64116788
		 0.61860728 0.64172918 0.62104636 0.69939965 0.58488661 0.10927833 0.38419646 0.29002634
		 0.61025238 0.26502323 0.40405473 0.54124254 0.62328339 0.53840429 0.40556103 0.69730544
		 0.83406085 0.078160197 0.84628624 0.17973796 0.12223701 0.16370162 0.33546054 0.13719638
		 0.34733221 0.2405912 0.13438088 0.26527274 0.58197016 0.05321978 0.63342142 0.20627356
		 0.6579926 0.50274861;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt[0:23]" -type "float3"  0.20871794 0.49999988 -0.2087182 
		0.20871794 0.34251964 -0.25882849 0.25882825 0.34251964 -0.2087182 -0.25882825 0.34251964 
		-0.2087182 -0.20871794 0.34251964 -0.25882849 -0.20871794 0.49999988 -0.2087182 0.25882825 
		0.027496099 -0.2087182 0.20871794 0.027496099 -0.25882849 0.20871794 -0.12998417 
		-0.2087182 -0.20871794 -0.12998417 -0.2087182 -0.20871794 0.027496099 -0.25882849 
		-0.25882825 0.027496099 -0.2087182 0.25882825 0.027496099 0.20871769 0.20871794 -0.12998417 
		0.20871769 0.20871794 0.027496099 0.25882825 -0.20871794 0.027496099 0.25882825 -0.20871794 
		-0.12998417 0.20871769 -0.25882825 0.027496099 0.20871769 0.25882825 0.34251964 0.20871769 
		0.20871794 0.34251964 0.25882825 0.20871794 0.49999988 0.20871769 -0.20871794 0.49999988 
		0.20871769 -0.20871794 0.34251964 0.25882825 -0.25882825 0.34251964 0.20871769;
	setAttr -s 24 ".vt[0:23]"  -0.40319777 -0.49999988 0.40319824 -0.40319777 -0.25002491 0.50000048
		 -0.5 -0.25002491 0.40319824 0.5 -0.25002491 0.40319824 0.40319777 -0.25002491 0.50000048
		 0.40319777 -0.49999988 0.40319824 -0.5 0.25002503 0.40319824 -0.40319777 0.25002503 0.50000048
		 -0.40319777 0.5 0.40319824 0.40319777 0.5 0.40319824 0.40319777 0.25002503 0.50000048
		 0.5 0.25002503 0.40319824 -0.5 0.25002503 -0.40319729 -0.40319777 0.5 -0.40319729
		 -0.40319777 0.25002503 -0.5 0.40319777 0.25002503 -0.5 0.40319777 0.5 -0.40319729
		 0.5 0.25002503 -0.40319729 -0.5 -0.25002491 -0.40319729 -0.40319777 -0.25002491 -0.5
		 -0.40319777 -0.49999988 -0.40319729 0.40319777 -0.49999988 -0.40319729 0.40319777 -0.25002491 -0.5
		 0.5 -0.25002491 -0.40319729;
	setAttr -s 48 ".ed[0:47]"  0 2 0 2 18 0 18 20 0 20 0 0 1 0 0 0 5 0 5 4 0
		 4 1 0 2 1 0 1 7 0 7 6 0 6 2 0 3 5 0 5 21 0 21 23 0 23 3 0 4 3 0 3 11 0 11 10 0 10 4 0
		 6 8 0 8 13 0 13 12 0 12 6 0 8 7 0 7 10 0 10 9 0 9 8 0 9 11 0 11 17 0 17 16 0 16 9 0
		 12 14 0 14 19 0 19 18 0 18 12 0 14 13 0 13 16 0 16 15 0 15 14 0 15 17 0 17 23 0 23 22 0
		 22 15 0 20 19 0 19 22 0 22 21 0 21 20 0;
	setAttr -s 26 -ch 96 ".fc[0:25]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 28
		f 4 4 5 6 7
		mu 0 4 4 3 35 23
		f 4 8 9 10 11
		mu 0 4 32 4 11 33
		f 4 12 13 14 15
		mu 0 4 5 6 22 7
		f 4 16 17 18 19
		mu 0 4 23 8 36 12
		f 4 20 21 22 23
		mu 0 4 9 24 16 10
		f 4 24 25 26 27
		mu 0 4 24 11 12 25
		f 4 28 29 30 31
		mu 0 4 25 13 37 17
		f 4 32 33 34 35
		mu 0 4 14 26 20 15
		f 4 36 37 38 39
		mu 0 4 26 16 17 27
		f 4 40 41 42 43
		mu 0 4 27 18 19 21
		f 4 44 45 46 47
		mu 0 4 28 20 21 22
		f 4 -8 -20 -26 -10
		mu 0 4 4 23 12 11
		f 4 -28 -32 -38 -22
		mu 0 4 24 25 17 16
		f 4 -40 -44 -46 -34
		mu 0 4 26 27 21 20
		f 4 -48 -14 -6 -4
		mu 0 4 28 22 6 0
		f 4 -16 -42 -30 -18
		mu 0 4 8 29 30 36
		f 4 -2 -12 -24 -36
		mu 0 4 31 32 33 34
		f 3 -5 -9 -1
		mu 0 3 3 4 32
		f 3 -17 -7 -13
		mu 0 3 8 23 35
		f 3 -11 -25 -21
		mu 0 3 33 11 24
		f 3 -27 -19 -29
		mu 0 3 25 12 36
		f 3 -23 -37 -33
		mu 0 3 10 16 26
		f 3 -39 -31 -41
		mu 0 3 27 17 37
		f 3 -35 -45 -3
		mu 0 3 15 20 28
		f 3 -47 -43 -15
		mu 0 3 22 21 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Stone_Corner_UV6" -p "Stone_Corners";
	rename -uid "10E3CB61-43E2-0849-5E1E-E39ACE9ECFE5";
	setAttr ".t" -type "double3" 3.9583091735839844 1.0652904483105978 -3.0972878932952881 ;
	setAttr ".sp" -type "double3" 0 -4.6629367034256575e-015 0 ;
createNode mesh -n "Stone_Corner_UV6Shape" -p "Stone_Corner_UV6";
	rename -uid "3E1C8246-4FA3-3E64-87D9-D4ACF7F013B8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.48789979517459869 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.40315843 0.91174799
		 0.34597653 0.91105062 0.34841052 0.69658822 0.36054614 0.078604899 0.37116751 0.13512561
		 0.67532176 0.91485906 0.61813986 0.9141621 0.67819691 0.70011657 0.62075096 0.10281292
		 0.32776287 0.30445641 0.36622795 0.51301128 0.38283515 0.23409609 0.59807587 0.20837426
		 0.67050654 0.2720364 0.36742982 0.54429901 0.37341779 0.64632869 0.41496503 0.48918194
		 0.6089794 0.48384002 0.66041827 0.54167902 0.65374213 0.64715016 0.4089404 0.64116788
		 0.61860728 0.64172918 0.62104636 0.69939965 0.58488661 0.10927833 0.38419646 0.29002634
		 0.61025238 0.26502323 0.40405473 0.54124254 0.62328339 0.53840429 0.40556103 0.69730544
		 0.83406085 0.078160197 0.84628624 0.17973796 0.12223701 0.16370162 0.33546054 0.13719638
		 0.34733221 0.2405912 0.13438088 0.26527274 0.58197016 0.05321978 0.63342142 0.20627356
		 0.6579926 0.50274861;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt[0:23]" -type "float3"  0.20871794 0.49999988 -0.2087182 
		0.20871794 0.34251964 -0.25882849 0.25882825 0.34251964 -0.2087182 -0.25882825 0.34251964 
		-0.2087182 -0.20871794 0.34251964 -0.25882849 -0.20871794 0.49999988 -0.2087182 0.25882825 
		0.027496099 -0.2087182 0.20871794 0.027496099 -0.25882849 0.20871794 -0.12998417 
		-0.2087182 -0.20871794 -0.12998417 -0.2087182 -0.20871794 0.027496099 -0.25882849 
		-0.25882825 0.027496099 -0.2087182 0.25882825 0.027496099 0.20871769 0.20871794 -0.12998417 
		0.20871769 0.20871794 0.027496099 0.25882825 -0.20871794 0.027496099 0.25882825 -0.20871794 
		-0.12998417 0.20871769 -0.25882825 0.027496099 0.20871769 0.25882825 0.34251964 0.20871769 
		0.20871794 0.34251964 0.25882825 0.20871794 0.49999988 0.20871769 -0.20871794 0.49999988 
		0.20871769 -0.20871794 0.34251964 0.25882825 -0.25882825 0.34251964 0.20871769;
	setAttr -s 24 ".vt[0:23]"  -0.40319777 -0.49999988 0.40319824 -0.40319777 -0.25002491 0.50000048
		 -0.5 -0.25002491 0.40319824 0.5 -0.25002491 0.40319824 0.40319777 -0.25002491 0.50000048
		 0.40319777 -0.49999988 0.40319824 -0.5 0.25002503 0.40319824 -0.40319777 0.25002503 0.50000048
		 -0.40319777 0.5 0.40319824 0.40319777 0.5 0.40319824 0.40319777 0.25002503 0.50000048
		 0.5 0.25002503 0.40319824 -0.5 0.25002503 -0.40319729 -0.40319777 0.5 -0.40319729
		 -0.40319777 0.25002503 -0.5 0.40319777 0.25002503 -0.5 0.40319777 0.5 -0.40319729
		 0.5 0.25002503 -0.40319729 -0.5 -0.25002491 -0.40319729 -0.40319777 -0.25002491 -0.5
		 -0.40319777 -0.49999988 -0.40319729 0.40319777 -0.49999988 -0.40319729 0.40319777 -0.25002491 -0.5
		 0.5 -0.25002491 -0.40319729;
	setAttr -s 48 ".ed[0:47]"  0 2 0 2 18 0 18 20 0 20 0 0 1 0 0 0 5 0 5 4 0
		 4 1 0 2 1 0 1 7 0 7 6 0 6 2 0 3 5 0 5 21 0 21 23 0 23 3 0 4 3 0 3 11 0 11 10 0 10 4 0
		 6 8 0 8 13 0 13 12 0 12 6 0 8 7 0 7 10 0 10 9 0 9 8 0 9 11 0 11 17 0 17 16 0 16 9 0
		 12 14 0 14 19 0 19 18 0 18 12 0 14 13 0 13 16 0 16 15 0 15 14 0 15 17 0 17 23 0 23 22 0
		 22 15 0 20 19 0 19 22 0 22 21 0 21 20 0;
	setAttr -s 26 -ch 96 ".fc[0:25]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 28
		f 4 4 5 6 7
		mu 0 4 4 3 35 23
		f 4 8 9 10 11
		mu 0 4 32 4 11 33
		f 4 12 13 14 15
		mu 0 4 5 6 22 7
		f 4 16 17 18 19
		mu 0 4 23 8 36 12
		f 4 20 21 22 23
		mu 0 4 9 24 16 10
		f 4 24 25 26 27
		mu 0 4 24 11 12 25
		f 4 28 29 30 31
		mu 0 4 25 13 37 17
		f 4 32 33 34 35
		mu 0 4 14 26 20 15
		f 4 36 37 38 39
		mu 0 4 26 16 17 27
		f 4 40 41 42 43
		mu 0 4 27 18 19 21
		f 4 44 45 46 47
		mu 0 4 28 20 21 22
		f 4 -8 -20 -26 -10
		mu 0 4 4 23 12 11
		f 4 -28 -32 -38 -22
		mu 0 4 24 25 17 16
		f 4 -40 -44 -46 -34
		mu 0 4 26 27 21 20
		f 4 -48 -14 -6 -4
		mu 0 4 28 22 6 0
		f 4 -16 -42 -30 -18
		mu 0 4 8 29 30 36
		f 4 -2 -12 -24 -36
		mu 0 4 31 32 33 34
		f 3 -5 -9 -1
		mu 0 3 3 4 32
		f 3 -17 -7 -13
		mu 0 3 8 23 35
		f 3 -11 -25 -21
		mu 0 3 33 11 24
		f 3 -27 -19 -29
		mu 0 3 25 12 36
		f 3 -23 -37 -33
		mu 0 3 10 16 26
		f 3 -39 -31 -41
		mu 0 3 27 17 37
		f 3 -35 -45 -3
		mu 0 3 15 20 28
		f 3 -47 -43 -15
		mu 0 3 22 21 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Stone_Corner_UV7" -p "Stone_Corners";
	rename -uid "EC3CD968-47CF-FB3A-5287-4BAE302682A7";
	setAttr ".t" -type "double3" 3.9583091735839844 0.70616884861165219 -3.0972878932952881 ;
	setAttr ".s" -type "double3" 1.1454533550384749 1 1.1454533550384749 ;
	setAttr ".sp" -type "double3" 0 -4.6629367034256575e-015 0 ;
createNode mesh -n "Stone_Corner_UV7Shape" -p "Stone_Corner_UV7";
	rename -uid "5CC123C2-4191-9B75-58E4-CA86F15FE146";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.48789979517459869 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.40315843 0.91174799
		 0.34597653 0.91105062 0.34841052 0.69658822 0.36054614 0.078604899 0.37116751 0.13512561
		 0.67532176 0.91485906 0.61813986 0.9141621 0.67819691 0.70011657 0.62075096 0.10281292
		 0.32776287 0.30445641 0.36622795 0.51301128 0.38283515 0.23409609 0.59807587 0.20837426
		 0.67050654 0.2720364 0.36742982 0.54429901 0.37341779 0.64632869 0.41496503 0.48918194
		 0.6089794 0.48384002 0.66041827 0.54167902 0.65374213 0.64715016 0.4089404 0.64116788
		 0.61860728 0.64172918 0.62104636 0.69939965 0.58488661 0.10927833 0.38419646 0.29002634
		 0.61025238 0.26502323 0.40405473 0.54124254 0.62328339 0.53840429 0.40556103 0.69730544
		 0.83406085 0.078160197 0.84628624 0.17973796 0.12223701 0.16370162 0.33546054 0.13719638
		 0.34733221 0.2405912 0.13438088 0.26527274 0.58197016 0.05321978 0.63342142 0.20627356
		 0.6579926 0.50274861;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt[0:23]" -type "float3"  0.20871794 0.49999988 -0.2087182 
		0.20871794 0.34251964 -0.25882849 0.25882825 0.34251964 -0.2087182 -0.25882825 0.34251964 
		-0.2087182 -0.20871794 0.34251964 -0.25882849 -0.20871794 0.49999988 -0.2087182 0.25882825 
		0.027496099 -0.2087182 0.20871794 0.027496099 -0.25882849 0.20871794 -0.12998417 
		-0.2087182 -0.20871794 -0.12998417 -0.2087182 -0.20871794 0.027496099 -0.25882849 
		-0.25882825 0.027496099 -0.2087182 0.25882825 0.027496099 0.20871769 0.20871794 -0.12998417 
		0.20871769 0.20871794 0.027496099 0.25882825 -0.20871794 0.027496099 0.25882825 -0.20871794 
		-0.12998417 0.20871769 -0.25882825 0.027496099 0.20871769 0.25882825 0.34251964 0.20871769 
		0.20871794 0.34251964 0.25882825 0.20871794 0.49999988 0.20871769 -0.20871794 0.49999988 
		0.20871769 -0.20871794 0.34251964 0.25882825 -0.25882825 0.34251964 0.20871769;
	setAttr -s 24 ".vt[0:23]"  -0.40319777 -0.49999988 0.40319824 -0.40319777 -0.25002491 0.50000048
		 -0.5 -0.25002491 0.40319824 0.5 -0.25002491 0.40319824 0.40319777 -0.25002491 0.50000048
		 0.40319777 -0.49999988 0.40319824 -0.5 0.25002503 0.40319824 -0.40319777 0.25002503 0.50000048
		 -0.40319777 0.5 0.40319824 0.40319777 0.5 0.40319824 0.40319777 0.25002503 0.50000048
		 0.5 0.25002503 0.40319824 -0.5 0.25002503 -0.40319729 -0.40319777 0.5 -0.40319729
		 -0.40319777 0.25002503 -0.5 0.40319777 0.25002503 -0.5 0.40319777 0.5 -0.40319729
		 0.5 0.25002503 -0.40319729 -0.5 -0.25002491 -0.40319729 -0.40319777 -0.25002491 -0.5
		 -0.40319777 -0.49999988 -0.40319729 0.40319777 -0.49999988 -0.40319729 0.40319777 -0.25002491 -0.5
		 0.5 -0.25002491 -0.40319729;
	setAttr -s 48 ".ed[0:47]"  0 2 0 2 18 0 18 20 0 20 0 0 1 0 0 0 5 0 5 4 0
		 4 1 0 2 1 0 1 7 0 7 6 0 6 2 0 3 5 0 5 21 0 21 23 0 23 3 0 4 3 0 3 11 0 11 10 0 10 4 0
		 6 8 0 8 13 0 13 12 0 12 6 0 8 7 0 7 10 0 10 9 0 9 8 0 9 11 0 11 17 0 17 16 0 16 9 0
		 12 14 0 14 19 0 19 18 0 18 12 0 14 13 0 13 16 0 16 15 0 15 14 0 15 17 0 17 23 0 23 22 0
		 22 15 0 20 19 0 19 22 0 22 21 0 21 20 0;
	setAttr -s 26 -ch 96 ".fc[0:25]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 28
		f 4 4 5 6 7
		mu 0 4 4 3 35 23
		f 4 8 9 10 11
		mu 0 4 32 4 11 33
		f 4 12 13 14 15
		mu 0 4 5 6 22 7
		f 4 16 17 18 19
		mu 0 4 23 8 36 12
		f 4 20 21 22 23
		mu 0 4 9 24 16 10
		f 4 24 25 26 27
		mu 0 4 24 11 12 25
		f 4 28 29 30 31
		mu 0 4 25 13 37 17
		f 4 32 33 34 35
		mu 0 4 14 26 20 15
		f 4 36 37 38 39
		mu 0 4 26 16 17 27
		f 4 40 41 42 43
		mu 0 4 27 18 19 21
		f 4 44 45 46 47
		mu 0 4 28 20 21 22
		f 4 -8 -20 -26 -10
		mu 0 4 4 23 12 11
		f 4 -28 -32 -38 -22
		mu 0 4 24 25 17 16
		f 4 -40 -44 -46 -34
		mu 0 4 26 27 21 20
		f 4 -48 -14 -6 -4
		mu 0 4 28 22 6 0
		f 4 -16 -42 -30 -18
		mu 0 4 8 29 30 36
		f 4 -2 -12 -24 -36
		mu 0 4 31 32 33 34
		f 3 -5 -9 -1
		mu 0 3 3 4 32
		f 3 -17 -7 -13
		mu 0 3 8 23 35
		f 3 -11 -25 -21
		mu 0 3 33 11 24
		f 3 -27 -19 -29
		mu 0 3 25 12 36
		f 3 -23 -37 -33
		mu 0 3 10 16 26
		f 3 -39 -31 -41
		mu 0 3 27 17 37
		f 3 -35 -45 -3
		mu 0 3 15 20 28
		f 3 -47 -43 -15
		mu 0 3 22 21 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Stone_Corner_UV8" -p "Stone_Corners";
	rename -uid "294156F7-4F21-1BD4-9FE4-87B4DC841450";
	setAttr ".t" -type "double3" 3.9583091735839844 0.35687775924771625 -3.0972878932952881 ;
	setAttr ".sp" -type "double3" 0 -4.6629367034256575e-015 0 ;
createNode mesh -n "Stone_Corner_UV8Shape" -p "Stone_Corner_UV8";
	rename -uid "0820B865-468E-6FE7-AD78-08917FB5840C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.48789979517459869 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.40315843 0.91174799
		 0.34597653 0.91105062 0.34841052 0.69658822 0.36054614 0.078604899 0.37116751 0.13512561
		 0.67532176 0.91485906 0.61813986 0.9141621 0.67819691 0.70011657 0.62075096 0.10281292
		 0.32776287 0.30445641 0.36622795 0.51301128 0.38283515 0.23409609 0.59807587 0.20837426
		 0.67050654 0.2720364 0.36742982 0.54429901 0.37341779 0.64632869 0.41496503 0.48918194
		 0.6089794 0.48384002 0.66041827 0.54167902 0.65374213 0.64715016 0.4089404 0.64116788
		 0.61860728 0.64172918 0.62104636 0.69939965 0.58488661 0.10927833 0.38419646 0.29002634
		 0.61025238 0.26502323 0.40405473 0.54124254 0.62328339 0.53840429 0.40556103 0.69730544
		 0.83406085 0.078160197 0.84628624 0.17973796 0.12223701 0.16370162 0.33546054 0.13719638
		 0.34733221 0.2405912 0.13438088 0.26527274 0.58197016 0.05321978 0.63342142 0.20627356
		 0.6579926 0.50274861;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt[0:23]" -type "float3"  0.20871794 0.49999988 -0.2087182 
		0.20871794 0.34251964 -0.25882849 0.25882825 0.34251964 -0.2087182 -0.25882825 0.34251964 
		-0.2087182 -0.20871794 0.34251964 -0.25882849 -0.20871794 0.49999988 -0.2087182 0.25882825 
		0.027496099 -0.2087182 0.20871794 0.027496099 -0.25882849 0.20871794 -0.12998417 
		-0.2087182 -0.20871794 -0.12998417 -0.2087182 -0.20871794 0.027496099 -0.25882849 
		-0.25882825 0.027496099 -0.2087182 0.25882825 0.027496099 0.20871769 0.20871794 -0.12998417 
		0.20871769 0.20871794 0.027496099 0.25882825 -0.20871794 0.027496099 0.25882825 -0.20871794 
		-0.12998417 0.20871769 -0.25882825 0.027496099 0.20871769 0.25882825 0.34251964 0.20871769 
		0.20871794 0.34251964 0.25882825 0.20871794 0.49999988 0.20871769 -0.20871794 0.49999988 
		0.20871769 -0.20871794 0.34251964 0.25882825 -0.25882825 0.34251964 0.20871769;
	setAttr -s 24 ".vt[0:23]"  -0.40319777 -0.49999988 0.40319824 -0.40319777 -0.25002491 0.50000048
		 -0.5 -0.25002491 0.40319824 0.5 -0.25002491 0.40319824 0.40319777 -0.25002491 0.50000048
		 0.40319777 -0.49999988 0.40319824 -0.5 0.25002503 0.40319824 -0.40319777 0.25002503 0.50000048
		 -0.40319777 0.5 0.40319824 0.40319777 0.5 0.40319824 0.40319777 0.25002503 0.50000048
		 0.5 0.25002503 0.40319824 -0.5 0.25002503 -0.40319729 -0.40319777 0.5 -0.40319729
		 -0.40319777 0.25002503 -0.5 0.40319777 0.25002503 -0.5 0.40319777 0.5 -0.40319729
		 0.5 0.25002503 -0.40319729 -0.5 -0.25002491 -0.40319729 -0.40319777 -0.25002491 -0.5
		 -0.40319777 -0.49999988 -0.40319729 0.40319777 -0.49999988 -0.40319729 0.40319777 -0.25002491 -0.5
		 0.5 -0.25002491 -0.40319729;
	setAttr -s 48 ".ed[0:47]"  0 2 0 2 18 0 18 20 0 20 0 0 1 0 0 0 5 0 5 4 0
		 4 1 0 2 1 0 1 7 0 7 6 0 6 2 0 3 5 0 5 21 0 21 23 0 23 3 0 4 3 0 3 11 0 11 10 0 10 4 0
		 6 8 0 8 13 0 13 12 0 12 6 0 8 7 0 7 10 0 10 9 0 9 8 0 9 11 0 11 17 0 17 16 0 16 9 0
		 12 14 0 14 19 0 19 18 0 18 12 0 14 13 0 13 16 0 16 15 0 15 14 0 15 17 0 17 23 0 23 22 0
		 22 15 0 20 19 0 19 22 0 22 21 0 21 20 0;
	setAttr -s 26 -ch 96 ".fc[0:25]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 28
		f 4 4 5 6 7
		mu 0 4 4 3 35 23
		f 4 8 9 10 11
		mu 0 4 32 4 11 33
		f 4 12 13 14 15
		mu 0 4 5 6 22 7
		f 4 16 17 18 19
		mu 0 4 23 8 36 12
		f 4 20 21 22 23
		mu 0 4 9 24 16 10
		f 4 24 25 26 27
		mu 0 4 24 11 12 25
		f 4 28 29 30 31
		mu 0 4 25 13 37 17
		f 4 32 33 34 35
		mu 0 4 14 26 20 15
		f 4 36 37 38 39
		mu 0 4 26 16 17 27
		f 4 40 41 42 43
		mu 0 4 27 18 19 21
		f 4 44 45 46 47
		mu 0 4 28 20 21 22
		f 4 -8 -20 -26 -10
		mu 0 4 4 23 12 11
		f 4 -28 -32 -38 -22
		mu 0 4 24 25 17 16
		f 4 -40 -44 -46 -34
		mu 0 4 26 27 21 20
		f 4 -48 -14 -6 -4
		mu 0 4 28 22 6 0
		f 4 -16 -42 -30 -18
		mu 0 4 8 29 30 36
		f 4 -2 -12 -24 -36
		mu 0 4 31 32 33 34
		f 3 -5 -9 -1
		mu 0 3 3 4 32
		f 3 -17 -7 -13
		mu 0 3 8 23 35
		f 3 -11 -25 -21
		mu 0 3 33 11 24
		f 3 -27 -19 -29
		mu 0 3 25 12 36
		f 3 -23 -37 -33
		mu 0 3 10 16 26
		f 3 -39 -31 -41
		mu 0 3 27 17 37
		f 3 -35 -45 -3
		mu 0 3 15 20 28
		f 3 -47 -43 -15
		mu 0 3 22 21 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Stone_Corner_UV9" -p "Stone_Corners";
	rename -uid "3E31A2AA-4F44-FDBD-DF97-28981C515EAA";
	setAttr ".t" -type "double3" 3.9583091735839844 0 -3.0972878932952881 ;
	setAttr ".s" -type "double3" 1.3211507979930386 1 1.3211507979930386 ;
	setAttr ".sp" -type "double3" 0 -4.6629367034256575e-015 0 ;
createNode mesh -n "Stone_Corner_UV9Shape" -p "Stone_Corner_UV9";
	rename -uid "07776885-4A8F-3E42-5FFB-C59DB965F492";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.48789979517459869 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.40315843 0.91174799
		 0.34597653 0.91105062 0.34841052 0.69658822 0.36054614 0.078604899 0.37116751 0.13512561
		 0.67532176 0.91485906 0.61813986 0.9141621 0.67819691 0.70011657 0.62075096 0.10281292
		 0.32776287 0.30445641 0.36622795 0.51301128 0.38283515 0.23409609 0.59807587 0.20837426
		 0.67050654 0.2720364 0.36742982 0.54429901 0.37341779 0.64632869 0.41496503 0.48918194
		 0.6089794 0.48384002 0.66041827 0.54167902 0.65374213 0.64715016 0.4089404 0.64116788
		 0.61860728 0.64172918 0.62104636 0.69939965 0.58488661 0.10927833 0.38419646 0.29002634
		 0.61025238 0.26502323 0.40405473 0.54124254 0.62328339 0.53840429 0.40556103 0.69730544
		 0.83406085 0.078160197 0.84628624 0.17973796 0.12223701 0.16370162 0.33546054 0.13719638
		 0.34733221 0.2405912 0.13438088 0.26527274 0.58197016 0.05321978 0.63342142 0.20627356
		 0.6579926 0.50274861;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt[0:23]" -type "float3"  0.20871794 0.49999988 -0.2087182 
		0.20871794 0.34251964 -0.25882849 0.25882825 0.34251964 -0.2087182 -0.25882825 0.34251964 
		-0.2087182 -0.20871794 0.34251964 -0.25882849 -0.20871794 0.49999988 -0.2087182 0.25882825 
		0.027496099 -0.2087182 0.20871794 0.027496099 -0.25882849 0.20871794 -0.12998417 
		-0.2087182 -0.20871794 -0.12998417 -0.2087182 -0.20871794 0.027496099 -0.25882849 
		-0.25882825 0.027496099 -0.2087182 0.25882825 0.027496099 0.20871769 0.20871794 -0.12998417 
		0.20871769 0.20871794 0.027496099 0.25882825 -0.20871794 0.027496099 0.25882825 -0.20871794 
		-0.12998417 0.20871769 -0.25882825 0.027496099 0.20871769 0.25882825 0.34251964 0.20871769 
		0.20871794 0.34251964 0.25882825 0.20871794 0.49999988 0.20871769 -0.20871794 0.49999988 
		0.20871769 -0.20871794 0.34251964 0.25882825 -0.25882825 0.34251964 0.20871769;
	setAttr -s 24 ".vt[0:23]"  -0.40319777 -0.49999988 0.40319824 -0.40319777 -0.25002491 0.50000048
		 -0.5 -0.25002491 0.40319824 0.5 -0.25002491 0.40319824 0.40319777 -0.25002491 0.50000048
		 0.40319777 -0.49999988 0.40319824 -0.5 0.25002503 0.40319824 -0.40319777 0.25002503 0.50000048
		 -0.40319777 0.5 0.40319824 0.40319777 0.5 0.40319824 0.40319777 0.25002503 0.50000048
		 0.5 0.25002503 0.40319824 -0.5 0.25002503 -0.40319729 -0.40319777 0.5 -0.40319729
		 -0.40319777 0.25002503 -0.5 0.40319777 0.25002503 -0.5 0.40319777 0.5 -0.40319729
		 0.5 0.25002503 -0.40319729 -0.5 -0.25002491 -0.40319729 -0.40319777 -0.25002491 -0.5
		 -0.40319777 -0.49999988 -0.40319729 0.40319777 -0.49999988 -0.40319729 0.40319777 -0.25002491 -0.5
		 0.5 -0.25002491 -0.40319729;
	setAttr -s 48 ".ed[0:47]"  0 2 0 2 18 0 18 20 0 20 0 0 1 0 0 0 5 0 5 4 0
		 4 1 0 2 1 0 1 7 0 7 6 0 6 2 0 3 5 0 5 21 0 21 23 0 23 3 0 4 3 0 3 11 0 11 10 0 10 4 0
		 6 8 0 8 13 0 13 12 0 12 6 0 8 7 0 7 10 0 10 9 0 9 8 0 9 11 0 11 17 0 17 16 0 16 9 0
		 12 14 0 14 19 0 19 18 0 18 12 0 14 13 0 13 16 0 16 15 0 15 14 0 15 17 0 17 23 0 23 22 0
		 22 15 0 20 19 0 19 22 0 22 21 0 21 20 0;
	setAttr -s 26 -ch 96 ".fc[0:25]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 28
		f 4 4 5 6 7
		mu 0 4 4 3 35 23
		f 4 8 9 10 11
		mu 0 4 32 4 11 33
		f 4 12 13 14 15
		mu 0 4 5 6 22 7
		f 4 16 17 18 19
		mu 0 4 23 8 36 12
		f 4 20 21 22 23
		mu 0 4 9 24 16 10
		f 4 24 25 26 27
		mu 0 4 24 11 12 25
		f 4 28 29 30 31
		mu 0 4 25 13 37 17
		f 4 32 33 34 35
		mu 0 4 14 26 20 15
		f 4 36 37 38 39
		mu 0 4 26 16 17 27
		f 4 40 41 42 43
		mu 0 4 27 18 19 21
		f 4 44 45 46 47
		mu 0 4 28 20 21 22
		f 4 -8 -20 -26 -10
		mu 0 4 4 23 12 11
		f 4 -28 -32 -38 -22
		mu 0 4 24 25 17 16
		f 4 -40 -44 -46 -34
		mu 0 4 26 27 21 20
		f 4 -48 -14 -6 -4
		mu 0 4 28 22 6 0
		f 4 -16 -42 -30 -18
		mu 0 4 8 29 30 36
		f 4 -2 -12 -24 -36
		mu 0 4 31 32 33 34
		f 3 -5 -9 -1
		mu 0 3 3 4 32
		f 3 -17 -7 -13
		mu 0 3 8 23 35
		f 3 -11 -25 -21
		mu 0 3 33 11 24
		f 3 -27 -19 -29
		mu 0 3 25 12 36
		f 3 -23 -37 -33
		mu 0 3 10 16 26
		f 3 -39 -31 -41
		mu 0 3 27 17 37
		f 3 -35 -45 -3
		mu 0 3 15 20 28
		f 3 -47 -43 -15
		mu 0 3 22 21 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Stone_Corner_UV10" -p "Stone_Corners";
	rename -uid "6AB772B0-474E-4A09-2FE3-958D765AD006";
	setAttr ".t" -type "double3" 0.059856653213500977 1.4169278104116092 -9.2949590682983398 ;
	setAttr ".sp" -type "double3" 0 -4.6629367034256575e-015 0 ;
createNode mesh -n "Stone_Corner_UV10Shape" -p "Stone_Corner_UV10";
	rename -uid "6E018201-4CE9-86F3-CA7C-ED81D20D3A2A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.48789979517459869 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.40315843 0.91174799
		 0.34597653 0.91105062 0.34841052 0.69658822 0.36054614 0.078604899 0.37116751 0.13512561
		 0.67532176 0.91485906 0.61813986 0.9141621 0.67819691 0.70011657 0.62075096 0.10281292
		 0.32776287 0.30445641 0.36622795 0.51301128 0.38283515 0.23409609 0.59807587 0.20837426
		 0.67050654 0.2720364 0.36742982 0.54429901 0.37341779 0.64632869 0.41496503 0.48918194
		 0.6089794 0.48384002 0.66041827 0.54167902 0.65374213 0.64715016 0.4089404 0.64116788
		 0.61860728 0.64172918 0.62104636 0.69939965 0.58488661 0.10927833 0.38419646 0.29002634
		 0.61025238 0.26502323 0.40405473 0.54124254 0.62328339 0.53840429 0.40556103 0.69730544
		 0.83406085 0.078160197 0.84628624 0.17973796 0.12223701 0.16370162 0.33546054 0.13719638
		 0.34733221 0.2405912 0.13438088 0.26527274 0.58197016 0.05321978 0.63342142 0.20627356
		 0.6579926 0.50274861;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt[0:23]" -type "float3"  0.20871794 0.49999988 -0.2087182 
		0.20871794 0.34251964 -0.25882849 0.25882825 0.34251964 -0.2087182 -0.25882825 0.34251964 
		-0.2087182 -0.20871794 0.34251964 -0.25882849 -0.20871794 0.49999988 -0.2087182 0.25882825 
		0.027496099 -0.2087182 0.20871794 0.027496099 -0.25882849 0.20871794 -0.12998417 
		-0.2087182 -0.20871794 -0.12998417 -0.2087182 -0.20871794 0.027496099 -0.25882849 
		-0.25882825 0.027496099 -0.2087182 0.25882825 0.027496099 0.20871769 0.20871794 -0.12998417 
		0.20871769 0.20871794 0.027496099 0.25882825 -0.20871794 0.027496099 0.25882825 -0.20871794 
		-0.12998417 0.20871769 -0.25882825 0.027496099 0.20871769 0.25882825 0.34251964 0.20871769 
		0.20871794 0.34251964 0.25882825 0.20871794 0.49999988 0.20871769 -0.20871794 0.49999988 
		0.20871769 -0.20871794 0.34251964 0.25882825 -0.25882825 0.34251964 0.20871769;
	setAttr -s 24 ".vt[0:23]"  -0.40319777 -0.49999988 0.40319824 -0.40319777 -0.25002491 0.50000048
		 -0.5 -0.25002491 0.40319824 0.5 -0.25002491 0.40319824 0.40319777 -0.25002491 0.50000048
		 0.40319777 -0.49999988 0.40319824 -0.5 0.25002503 0.40319824 -0.40319777 0.25002503 0.50000048
		 -0.40319777 0.5 0.40319824 0.40319777 0.5 0.40319824 0.40319777 0.25002503 0.50000048
		 0.5 0.25002503 0.40319824 -0.5 0.25002503 -0.40319729 -0.40319777 0.5 -0.40319729
		 -0.40319777 0.25002503 -0.5 0.40319777 0.25002503 -0.5 0.40319777 0.5 -0.40319729
		 0.5 0.25002503 -0.40319729 -0.5 -0.25002491 -0.40319729 -0.40319777 -0.25002491 -0.5
		 -0.40319777 -0.49999988 -0.40319729 0.40319777 -0.49999988 -0.40319729 0.40319777 -0.25002491 -0.5
		 0.5 -0.25002491 -0.40319729;
	setAttr -s 48 ".ed[0:47]"  0 2 0 2 18 0 18 20 0 20 0 0 1 0 0 0 5 0 5 4 0
		 4 1 0 2 1 0 1 7 0 7 6 0 6 2 0 3 5 0 5 21 0 21 23 0 23 3 0 4 3 0 3 11 0 11 10 0 10 4 0
		 6 8 0 8 13 0 13 12 0 12 6 0 8 7 0 7 10 0 10 9 0 9 8 0 9 11 0 11 17 0 17 16 0 16 9 0
		 12 14 0 14 19 0 19 18 0 18 12 0 14 13 0 13 16 0 16 15 0 15 14 0 15 17 0 17 23 0 23 22 0
		 22 15 0 20 19 0 19 22 0 22 21 0 21 20 0;
	setAttr -s 26 -ch 96 ".fc[0:25]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 28
		f 4 4 5 6 7
		mu 0 4 4 3 35 23
		f 4 8 9 10 11
		mu 0 4 32 4 11 33
		f 4 12 13 14 15
		mu 0 4 5 6 22 7
		f 4 16 17 18 19
		mu 0 4 23 8 36 12
		f 4 20 21 22 23
		mu 0 4 9 24 16 10
		f 4 24 25 26 27
		mu 0 4 24 11 12 25
		f 4 28 29 30 31
		mu 0 4 25 13 37 17
		f 4 32 33 34 35
		mu 0 4 14 26 20 15
		f 4 36 37 38 39
		mu 0 4 26 16 17 27
		f 4 40 41 42 43
		mu 0 4 27 18 19 21
		f 4 44 45 46 47
		mu 0 4 28 20 21 22
		f 4 -8 -20 -26 -10
		mu 0 4 4 23 12 11
		f 4 -28 -32 -38 -22
		mu 0 4 24 25 17 16
		f 4 -40 -44 -46 -34
		mu 0 4 26 27 21 20
		f 4 -48 -14 -6 -4
		mu 0 4 28 22 6 0
		f 4 -16 -42 -30 -18
		mu 0 4 8 29 30 36
		f 4 -2 -12 -24 -36
		mu 0 4 31 32 33 34
		f 3 -5 -9 -1
		mu 0 3 3 4 32
		f 3 -17 -7 -13
		mu 0 3 8 23 35
		f 3 -11 -25 -21
		mu 0 3 33 11 24
		f 3 -27 -19 -29
		mu 0 3 25 12 36
		f 3 -23 -37 -33
		mu 0 3 10 16 26
		f 3 -39 -31 -41
		mu 0 3 27 17 37
		f 3 -35 -45 -3
		mu 0 3 15 20 28
		f 3 -47 -43 -15
		mu 0 3 22 21 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Stone_Corner_UV11" -p "Stone_Corners";
	rename -uid "A12120AE-4812-F39A-A1AB-67AFEC63213D";
	setAttr ".t" -type "double3" 0.059856653213500977 1.0652904483105976 -9.2949590682983398 ;
	setAttr ".s" -type "double3" 1.1454533550384749 1 1.1454533550384749 ;
	setAttr ".sp" -type "double3" 0 -4.6629367034256575e-015 0 ;
createNode mesh -n "Stone_Corner_UV11Shape" -p "Stone_Corner_UV11";
	rename -uid "9184A3AF-4770-3887-6EF2-BA9C38C4DF70";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.48789979517459869 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.40315843 0.91174799
		 0.34597653 0.91105062 0.34841052 0.69658822 0.36054614 0.078604899 0.37116751 0.13512561
		 0.67532176 0.91485906 0.61813986 0.9141621 0.67819691 0.70011657 0.62075096 0.10281292
		 0.32776287 0.30445641 0.36622795 0.51301128 0.38283515 0.23409609 0.59807587 0.20837426
		 0.67050654 0.2720364 0.36742982 0.54429901 0.37341779 0.64632869 0.41496503 0.48918194
		 0.6089794 0.48384002 0.66041827 0.54167902 0.65374213 0.64715016 0.4089404 0.64116788
		 0.61860728 0.64172918 0.62104636 0.69939965 0.58488661 0.10927833 0.38419646 0.29002634
		 0.61025238 0.26502323 0.40405473 0.54124254 0.62328339 0.53840429 0.40556103 0.69730544
		 0.83406085 0.078160197 0.84628624 0.17973796 0.12223701 0.16370162 0.33546054 0.13719638
		 0.34733221 0.2405912 0.13438088 0.26527274 0.58197016 0.05321978 0.63342142 0.20627356
		 0.6579926 0.50274861;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt[0:23]" -type "float3"  0.20871794 0.49999988 -0.2087182 
		0.20871794 0.34251964 -0.25882849 0.25882825 0.34251964 -0.2087182 -0.25882825 0.34251964 
		-0.2087182 -0.20871794 0.34251964 -0.25882849 -0.20871794 0.49999988 -0.2087182 0.25882825 
		0.027496099 -0.2087182 0.20871794 0.027496099 -0.25882849 0.20871794 -0.12998417 
		-0.2087182 -0.20871794 -0.12998417 -0.2087182 -0.20871794 0.027496099 -0.25882849 
		-0.25882825 0.027496099 -0.2087182 0.25882825 0.027496099 0.20871769 0.20871794 -0.12998417 
		0.20871769 0.20871794 0.027496099 0.25882825 -0.20871794 0.027496099 0.25882825 -0.20871794 
		-0.12998417 0.20871769 -0.25882825 0.027496099 0.20871769 0.25882825 0.34251964 0.20871769 
		0.20871794 0.34251964 0.25882825 0.20871794 0.49999988 0.20871769 -0.20871794 0.49999988 
		0.20871769 -0.20871794 0.34251964 0.25882825 -0.25882825 0.34251964 0.20871769;
	setAttr -s 24 ".vt[0:23]"  -0.40319777 -0.49999988 0.40319824 -0.40319777 -0.25002491 0.50000048
		 -0.5 -0.25002491 0.40319824 0.5 -0.25002491 0.40319824 0.40319777 -0.25002491 0.50000048
		 0.40319777 -0.49999988 0.40319824 -0.5 0.25002503 0.40319824 -0.40319777 0.25002503 0.50000048
		 -0.40319777 0.5 0.40319824 0.40319777 0.5 0.40319824 0.40319777 0.25002503 0.50000048
		 0.5 0.25002503 0.40319824 -0.5 0.25002503 -0.40319729 -0.40319777 0.5 -0.40319729
		 -0.40319777 0.25002503 -0.5 0.40319777 0.25002503 -0.5 0.40319777 0.5 -0.40319729
		 0.5 0.25002503 -0.40319729 -0.5 -0.25002491 -0.40319729 -0.40319777 -0.25002491 -0.5
		 -0.40319777 -0.49999988 -0.40319729 0.40319777 -0.49999988 -0.40319729 0.40319777 -0.25002491 -0.5
		 0.5 -0.25002491 -0.40319729;
	setAttr -s 48 ".ed[0:47]"  0 2 0 2 18 0 18 20 0 20 0 0 1 0 0 0 5 0 5 4 0
		 4 1 0 2 1 0 1 7 0 7 6 0 6 2 0 3 5 0 5 21 0 21 23 0 23 3 0 4 3 0 3 11 0 11 10 0 10 4 0
		 6 8 0 8 13 0 13 12 0 12 6 0 8 7 0 7 10 0 10 9 0 9 8 0 9 11 0 11 17 0 17 16 0 16 9 0
		 12 14 0 14 19 0 19 18 0 18 12 0 14 13 0 13 16 0 16 15 0 15 14 0 15 17 0 17 23 0 23 22 0
		 22 15 0 20 19 0 19 22 0 22 21 0 21 20 0;
	setAttr -s 26 -ch 96 ".fc[0:25]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 28
		f 4 4 5 6 7
		mu 0 4 4 3 35 23
		f 4 8 9 10 11
		mu 0 4 32 4 11 33
		f 4 12 13 14 15
		mu 0 4 5 6 22 7
		f 4 16 17 18 19
		mu 0 4 23 8 36 12
		f 4 20 21 22 23
		mu 0 4 9 24 16 10
		f 4 24 25 26 27
		mu 0 4 24 11 12 25
		f 4 28 29 30 31
		mu 0 4 25 13 37 17
		f 4 32 33 34 35
		mu 0 4 14 26 20 15
		f 4 36 37 38 39
		mu 0 4 26 16 17 27
		f 4 40 41 42 43
		mu 0 4 27 18 19 21
		f 4 44 45 46 47
		mu 0 4 28 20 21 22
		f 4 -8 -20 -26 -10
		mu 0 4 4 23 12 11
		f 4 -28 -32 -38 -22
		mu 0 4 24 25 17 16
		f 4 -40 -44 -46 -34
		mu 0 4 26 27 21 20
		f 4 -48 -14 -6 -4
		mu 0 4 28 22 6 0
		f 4 -16 -42 -30 -18
		mu 0 4 8 29 30 36
		f 4 -2 -12 -24 -36
		mu 0 4 31 32 33 34
		f 3 -5 -9 -1
		mu 0 3 3 4 32
		f 3 -17 -7 -13
		mu 0 3 8 23 35
		f 3 -11 -25 -21
		mu 0 3 33 11 24
		f 3 -27 -19 -29
		mu 0 3 25 12 36
		f 3 -23 -37 -33
		mu 0 3 10 16 26
		f 3 -39 -31 -41
		mu 0 3 27 17 37
		f 3 -35 -45 -3
		mu 0 3 15 20 28
		f 3 -47 -43 -15
		mu 0 3 22 21 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Stone_Corner_UV12" -p "Stone_Corners";
	rename -uid "87776157-4967-68F1-87BD-C49CB5BEEB02";
	setAttr ".t" -type "double3" 0.059856653213500977 0.70616884861165197 -9.2949590682983398 ;
	setAttr ".s" -type "double3" 1.1454533550384749 1 1.1454533550384749 ;
	setAttr ".sp" -type "double3" 0 -4.6629367034256575e-015 0 ;
createNode mesh -n "Stone_Corner_UV12Shape" -p "Stone_Corner_UV12";
	rename -uid "F1BC98D8-403F-450D-0208-0EB6107C889F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.48789979517459869 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.40315843 0.91174799
		 0.34597653 0.91105062 0.34841052 0.69658822 0.36054614 0.078604899 0.37116751 0.13512561
		 0.67532176 0.91485906 0.61813986 0.9141621 0.67819691 0.70011657 0.62075096 0.10281292
		 0.32776287 0.30445641 0.36622795 0.51301128 0.38283515 0.23409609 0.59807587 0.20837426
		 0.67050654 0.2720364 0.36742982 0.54429901 0.37341779 0.64632869 0.41496503 0.48918194
		 0.6089794 0.48384002 0.66041827 0.54167902 0.65374213 0.64715016 0.4089404 0.64116788
		 0.61860728 0.64172918 0.62104636 0.69939965 0.58488661 0.10927833 0.38419646 0.29002634
		 0.61025238 0.26502323 0.40405473 0.54124254 0.62328339 0.53840429 0.40556103 0.69730544
		 0.83406085 0.078160197 0.84628624 0.17973796 0.12223701 0.16370162 0.33546054 0.13719638
		 0.34733221 0.2405912 0.13438088 0.26527274 0.58197016 0.05321978 0.63342142 0.20627356
		 0.6579926 0.50274861;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt[0:23]" -type "float3"  0.20871794 0.49999988 -0.2087182 
		0.20871794 0.34251964 -0.25882849 0.25882825 0.34251964 -0.2087182 -0.25882825 0.34251964 
		-0.2087182 -0.20871794 0.34251964 -0.25882849 -0.20871794 0.49999988 -0.2087182 0.25882825 
		0.027496099 -0.2087182 0.20871794 0.027496099 -0.25882849 0.20871794 -0.12998417 
		-0.2087182 -0.20871794 -0.12998417 -0.2087182 -0.20871794 0.027496099 -0.25882849 
		-0.25882825 0.027496099 -0.2087182 0.25882825 0.027496099 0.20871769 0.20871794 -0.12998417 
		0.20871769 0.20871794 0.027496099 0.25882825 -0.20871794 0.027496099 0.25882825 -0.20871794 
		-0.12998417 0.20871769 -0.25882825 0.027496099 0.20871769 0.25882825 0.34251964 0.20871769 
		0.20871794 0.34251964 0.25882825 0.20871794 0.49999988 0.20871769 -0.20871794 0.49999988 
		0.20871769 -0.20871794 0.34251964 0.25882825 -0.25882825 0.34251964 0.20871769;
	setAttr -s 24 ".vt[0:23]"  -0.40319777 -0.49999988 0.40319824 -0.40319777 -0.25002491 0.50000048
		 -0.5 -0.25002491 0.40319824 0.5 -0.25002491 0.40319824 0.40319777 -0.25002491 0.50000048
		 0.40319777 -0.49999988 0.40319824 -0.5 0.25002503 0.40319824 -0.40319777 0.25002503 0.50000048
		 -0.40319777 0.5 0.40319824 0.40319777 0.5 0.40319824 0.40319777 0.25002503 0.50000048
		 0.5 0.25002503 0.40319824 -0.5 0.25002503 -0.40319729 -0.40319777 0.5 -0.40319729
		 -0.40319777 0.25002503 -0.5 0.40319777 0.25002503 -0.5 0.40319777 0.5 -0.40319729
		 0.5 0.25002503 -0.40319729 -0.5 -0.25002491 -0.40319729 -0.40319777 -0.25002491 -0.5
		 -0.40319777 -0.49999988 -0.40319729 0.40319777 -0.49999988 -0.40319729 0.40319777 -0.25002491 -0.5
		 0.5 -0.25002491 -0.40319729;
	setAttr -s 48 ".ed[0:47]"  0 2 0 2 18 0 18 20 0 20 0 0 1 0 0 0 5 0 5 4 0
		 4 1 0 2 1 0 1 7 0 7 6 0 6 2 0 3 5 0 5 21 0 21 23 0 23 3 0 4 3 0 3 11 0 11 10 0 10 4 0
		 6 8 0 8 13 0 13 12 0 12 6 0 8 7 0 7 10 0 10 9 0 9 8 0 9 11 0 11 17 0 17 16 0 16 9 0
		 12 14 0 14 19 0 19 18 0 18 12 0 14 13 0 13 16 0 16 15 0 15 14 0 15 17 0 17 23 0 23 22 0
		 22 15 0 20 19 0 19 22 0 22 21 0 21 20 0;
	setAttr -s 26 -ch 96 ".fc[0:25]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 28
		f 4 4 5 6 7
		mu 0 4 4 3 35 23
		f 4 8 9 10 11
		mu 0 4 32 4 11 33
		f 4 12 13 14 15
		mu 0 4 5 6 22 7
		f 4 16 17 18 19
		mu 0 4 23 8 36 12
		f 4 20 21 22 23
		mu 0 4 9 24 16 10
		f 4 24 25 26 27
		mu 0 4 24 11 12 25
		f 4 28 29 30 31
		mu 0 4 25 13 37 17
		f 4 32 33 34 35
		mu 0 4 14 26 20 15
		f 4 36 37 38 39
		mu 0 4 26 16 17 27
		f 4 40 41 42 43
		mu 0 4 27 18 19 21
		f 4 44 45 46 47
		mu 0 4 28 20 21 22
		f 4 -8 -20 -26 -10
		mu 0 4 4 23 12 11
		f 4 -28 -32 -38 -22
		mu 0 4 24 25 17 16
		f 4 -40 -44 -46 -34
		mu 0 4 26 27 21 20
		f 4 -48 -14 -6 -4
		mu 0 4 28 22 6 0
		f 4 -16 -42 -30 -18
		mu 0 4 8 29 30 36
		f 4 -2 -12 -24 -36
		mu 0 4 31 32 33 34
		f 3 -5 -9 -1
		mu 0 3 3 4 32
		f 3 -17 -7 -13
		mu 0 3 8 23 35
		f 3 -11 -25 -21
		mu 0 3 33 11 24
		f 3 -27 -19 -29
		mu 0 3 25 12 36
		f 3 -23 -37 -33
		mu 0 3 10 16 26
		f 3 -39 -31 -41
		mu 0 3 27 17 37
		f 3 -35 -45 -3
		mu 0 3 15 20 28
		f 3 -47 -43 -15
		mu 0 3 22 21 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Stone_Corner_UV13" -p "Stone_Corners";
	rename -uid "B304ADF0-41D1-7C48-F143-BF8059B10523";
	setAttr ".t" -type "double3" 0.059856653213500977 0.35687775924771614 -9.2949590682983398 ;
	setAttr ".sp" -type "double3" 0 -4.6629367034256575e-015 0 ;
createNode mesh -n "Stone_Corner_UV13Shape" -p "Stone_Corner_UV13";
	rename -uid "F70CC63B-4239-756F-E608-9B83A5249E44";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.48789979517459869 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.40315843 0.91174799
		 0.34597653 0.91105062 0.34841052 0.69658822 0.36054614 0.078604899 0.37116751 0.13512561
		 0.67532176 0.91485906 0.61813986 0.9141621 0.67819691 0.70011657 0.62075096 0.10281292
		 0.32776287 0.30445641 0.36622795 0.51301128 0.38283515 0.23409609 0.59807587 0.20837426
		 0.67050654 0.2720364 0.36742982 0.54429901 0.37341779 0.64632869 0.41496503 0.48918194
		 0.6089794 0.48384002 0.66041827 0.54167902 0.65374213 0.64715016 0.4089404 0.64116788
		 0.61860728 0.64172918 0.62104636 0.69939965 0.58488661 0.10927833 0.38419646 0.29002634
		 0.61025238 0.26502323 0.40405473 0.54124254 0.62328339 0.53840429 0.40556103 0.69730544
		 0.83406085 0.078160197 0.84628624 0.17973796 0.12223701 0.16370162 0.33546054 0.13719638
		 0.34733221 0.2405912 0.13438088 0.26527274 0.58197016 0.05321978 0.63342142 0.20627356
		 0.6579926 0.50274861;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt[0:23]" -type "float3"  0.20871794 0.49999988 -0.2087182 
		0.20871794 0.34251964 -0.25882849 0.25882825 0.34251964 -0.2087182 -0.25882825 0.34251964 
		-0.2087182 -0.20871794 0.34251964 -0.25882849 -0.20871794 0.49999988 -0.2087182 0.25882825 
		0.027496099 -0.2087182 0.20871794 0.027496099 -0.25882849 0.20871794 -0.12998417 
		-0.2087182 -0.20871794 -0.12998417 -0.2087182 -0.20871794 0.027496099 -0.25882849 
		-0.25882825 0.027496099 -0.2087182 0.25882825 0.027496099 0.20871769 0.20871794 -0.12998417 
		0.20871769 0.20871794 0.027496099 0.25882825 -0.20871794 0.027496099 0.25882825 -0.20871794 
		-0.12998417 0.20871769 -0.25882825 0.027496099 0.20871769 0.25882825 0.34251964 0.20871769 
		0.20871794 0.34251964 0.25882825 0.20871794 0.49999988 0.20871769 -0.20871794 0.49999988 
		0.20871769 -0.20871794 0.34251964 0.25882825 -0.25882825 0.34251964 0.20871769;
	setAttr -s 24 ".vt[0:23]"  -0.40319777 -0.49999988 0.40319824 -0.40319777 -0.25002491 0.50000048
		 -0.5 -0.25002491 0.40319824 0.5 -0.25002491 0.40319824 0.40319777 -0.25002491 0.50000048
		 0.40319777 -0.49999988 0.40319824 -0.5 0.25002503 0.40319824 -0.40319777 0.25002503 0.50000048
		 -0.40319777 0.5 0.40319824 0.40319777 0.5 0.40319824 0.40319777 0.25002503 0.50000048
		 0.5 0.25002503 0.40319824 -0.5 0.25002503 -0.40319729 -0.40319777 0.5 -0.40319729
		 -0.40319777 0.25002503 -0.5 0.40319777 0.25002503 -0.5 0.40319777 0.5 -0.40319729
		 0.5 0.25002503 -0.40319729 -0.5 -0.25002491 -0.40319729 -0.40319777 -0.25002491 -0.5
		 -0.40319777 -0.49999988 -0.40319729 0.40319777 -0.49999988 -0.40319729 0.40319777 -0.25002491 -0.5
		 0.5 -0.25002491 -0.40319729;
	setAttr -s 48 ".ed[0:47]"  0 2 0 2 18 0 18 20 0 20 0 0 1 0 0 0 5 0 5 4 0
		 4 1 0 2 1 0 1 7 0 7 6 0 6 2 0 3 5 0 5 21 0 21 23 0 23 3 0 4 3 0 3 11 0 11 10 0 10 4 0
		 6 8 0 8 13 0 13 12 0 12 6 0 8 7 0 7 10 0 10 9 0 9 8 0 9 11 0 11 17 0 17 16 0 16 9 0
		 12 14 0 14 19 0 19 18 0 18 12 0 14 13 0 13 16 0 16 15 0 15 14 0 15 17 0 17 23 0 23 22 0
		 22 15 0 20 19 0 19 22 0 22 21 0 21 20 0;
	setAttr -s 26 -ch 96 ".fc[0:25]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 28
		f 4 4 5 6 7
		mu 0 4 4 3 35 23
		f 4 8 9 10 11
		mu 0 4 32 4 11 33
		f 4 12 13 14 15
		mu 0 4 5 6 22 7
		f 4 16 17 18 19
		mu 0 4 23 8 36 12
		f 4 20 21 22 23
		mu 0 4 9 24 16 10
		f 4 24 25 26 27
		mu 0 4 24 11 12 25
		f 4 28 29 30 31
		mu 0 4 25 13 37 17
		f 4 32 33 34 35
		mu 0 4 14 26 20 15
		f 4 36 37 38 39
		mu 0 4 26 16 17 27
		f 4 40 41 42 43
		mu 0 4 27 18 19 21
		f 4 44 45 46 47
		mu 0 4 28 20 21 22
		f 4 -8 -20 -26 -10
		mu 0 4 4 23 12 11
		f 4 -28 -32 -38 -22
		mu 0 4 24 25 17 16
		f 4 -40 -44 -46 -34
		mu 0 4 26 27 21 20
		f 4 -48 -14 -6 -4
		mu 0 4 28 22 6 0
		f 4 -16 -42 -30 -18
		mu 0 4 8 29 30 36
		f 4 -2 -12 -24 -36
		mu 0 4 31 32 33 34
		f 3 -5 -9 -1
		mu 0 3 3 4 32
		f 3 -17 -7 -13
		mu 0 3 8 23 35
		f 3 -11 -25 -21
		mu 0 3 33 11 24
		f 3 -27 -19 -29
		mu 0 3 25 12 36
		f 3 -23 -37 -33
		mu 0 3 10 16 26
		f 3 -39 -31 -41
		mu 0 3 27 17 37
		f 3 -35 -45 -3
		mu 0 3 15 20 28
		f 3 -47 -43 -15
		mu 0 3 22 21 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Stone_Corner_UV14" -p "Stone_Corners";
	rename -uid "AD8C98DD-4908-54BC-5864-08864CDC94B8";
	setAttr ".t" -type "double3" 0.059856653213500977 0 -9.2949590682983398 ;
	setAttr ".s" -type "double3" 1.1454533550384749 1 1.1454533550384749 ;
	setAttr ".sp" -type "double3" 0 -4.6629367034256575e-015 0 ;
createNode mesh -n "Stone_Corner_UV14Shape" -p "Stone_Corner_UV14";
	rename -uid "FC681008-4E83-4870-FEEC-38A36E04AD8E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.48789979517459869 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.40315843 0.91174799
		 0.34597653 0.91105062 0.34841052 0.69658822 0.36054614 0.078604899 0.37116751 0.13512561
		 0.67532176 0.91485906 0.61813986 0.9141621 0.67819691 0.70011657 0.62075096 0.10281292
		 0.32776287 0.30445641 0.36622795 0.51301128 0.38283515 0.23409609 0.59807587 0.20837426
		 0.67050654 0.2720364 0.36742982 0.54429901 0.37341779 0.64632869 0.41496503 0.48918194
		 0.6089794 0.48384002 0.66041827 0.54167902 0.65374213 0.64715016 0.4089404 0.64116788
		 0.61860728 0.64172918 0.62104636 0.69939965 0.58488661 0.10927833 0.38419646 0.29002634
		 0.61025238 0.26502323 0.40405473 0.54124254 0.62328339 0.53840429 0.40556103 0.69730544
		 0.83406085 0.078160197 0.84628624 0.17973796 0.12223701 0.16370162 0.33546054 0.13719638
		 0.34733221 0.2405912 0.13438088 0.26527274 0.58197016 0.05321978 0.63342142 0.20627356
		 0.6579926 0.50274861;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt[0:23]" -type "float3"  0.20871794 0.49999988 -0.2087182 
		0.20871794 0.34251964 -0.25882849 0.25882825 0.34251964 -0.2087182 -0.25882825 0.34251964 
		-0.2087182 -0.20871794 0.34251964 -0.25882849 -0.20871794 0.49999988 -0.2087182 0.25882825 
		0.027496099 -0.2087182 0.20871794 0.027496099 -0.25882849 0.20871794 -0.12998417 
		-0.2087182 -0.20871794 -0.12998417 -0.2087182 -0.20871794 0.027496099 -0.25882849 
		-0.25882825 0.027496099 -0.2087182 0.25882825 0.027496099 0.20871769 0.20871794 -0.12998417 
		0.20871769 0.20871794 0.027496099 0.25882825 -0.20871794 0.027496099 0.25882825 -0.20871794 
		-0.12998417 0.20871769 -0.25882825 0.027496099 0.20871769 0.25882825 0.34251964 0.20871769 
		0.20871794 0.34251964 0.25882825 0.20871794 0.49999988 0.20871769 -0.20871794 0.49999988 
		0.20871769 -0.20871794 0.34251964 0.25882825 -0.25882825 0.34251964 0.20871769;
	setAttr -s 24 ".vt[0:23]"  -0.40319777 -0.49999988 0.40319824 -0.40319777 -0.25002491 0.50000048
		 -0.5 -0.25002491 0.40319824 0.5 -0.25002491 0.40319824 0.40319777 -0.25002491 0.50000048
		 0.40319777 -0.49999988 0.40319824 -0.5 0.25002503 0.40319824 -0.40319777 0.25002503 0.50000048
		 -0.40319777 0.5 0.40319824 0.40319777 0.5 0.40319824 0.40319777 0.25002503 0.50000048
		 0.5 0.25002503 0.40319824 -0.5 0.25002503 -0.40319729 -0.40319777 0.5 -0.40319729
		 -0.40319777 0.25002503 -0.5 0.40319777 0.25002503 -0.5 0.40319777 0.5 -0.40319729
		 0.5 0.25002503 -0.40319729 -0.5 -0.25002491 -0.40319729 -0.40319777 -0.25002491 -0.5
		 -0.40319777 -0.49999988 -0.40319729 0.40319777 -0.49999988 -0.40319729 0.40319777 -0.25002491 -0.5
		 0.5 -0.25002491 -0.40319729;
	setAttr -s 48 ".ed[0:47]"  0 2 0 2 18 0 18 20 0 20 0 0 1 0 0 0 5 0 5 4 0
		 4 1 0 2 1 0 1 7 0 7 6 0 6 2 0 3 5 0 5 21 0 21 23 0 23 3 0 4 3 0 3 11 0 11 10 0 10 4 0
		 6 8 0 8 13 0 13 12 0 12 6 0 8 7 0 7 10 0 10 9 0 9 8 0 9 11 0 11 17 0 17 16 0 16 9 0
		 12 14 0 14 19 0 19 18 0 18 12 0 14 13 0 13 16 0 16 15 0 15 14 0 15 17 0 17 23 0 23 22 0
		 22 15 0 20 19 0 19 22 0 22 21 0 21 20 0;
	setAttr -s 26 -ch 96 ".fc[0:25]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 28
		f 4 4 5 6 7
		mu 0 4 4 3 35 23
		f 4 8 9 10 11
		mu 0 4 32 4 11 33
		f 4 12 13 14 15
		mu 0 4 5 6 22 7
		f 4 16 17 18 19
		mu 0 4 23 8 36 12
		f 4 20 21 22 23
		mu 0 4 9 24 16 10
		f 4 24 25 26 27
		mu 0 4 24 11 12 25
		f 4 28 29 30 31
		mu 0 4 25 13 37 17
		f 4 32 33 34 35
		mu 0 4 14 26 20 15
		f 4 36 37 38 39
		mu 0 4 26 16 17 27
		f 4 40 41 42 43
		mu 0 4 27 18 19 21
		f 4 44 45 46 47
		mu 0 4 28 20 21 22
		f 4 -8 -20 -26 -10
		mu 0 4 4 23 12 11
		f 4 -28 -32 -38 -22
		mu 0 4 24 25 17 16
		f 4 -40 -44 -46 -34
		mu 0 4 26 27 21 20
		f 4 -48 -14 -6 -4
		mu 0 4 28 22 6 0
		f 4 -16 -42 -30 -18
		mu 0 4 8 29 30 36
		f 4 -2 -12 -24 -36
		mu 0 4 31 32 33 34
		f 3 -5 -9 -1
		mu 0 3 3 4 32
		f 3 -17 -7 -13
		mu 0 3 8 23 35
		f 3 -11 -25 -21
		mu 0 3 33 11 24
		f 3 -27 -19 -29
		mu 0 3 25 12 36
		f 3 -23 -37 -33
		mu 0 3 10 16 26
		f 3 -39 -31 -41
		mu 0 3 27 17 37
		f 3 -35 -45 -3
		mu 0 3 15 20 28
		f 3 -47 -43 -15
		mu 0 3 22 21 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Stone_Corner_UV15" -p "Stone_Corners";
	rename -uid "ABA01723-4F5A-72C8-C8FE-D1A27A383369";
	setAttr ".t" -type "double3" -6.1230993270874023 1.4169278104116092 -9.2949590682983381 ;
	setAttr ".s" -type "double3" 1 0.82531683073188189 1 ;
	setAttr ".sp" -type "double3" 0 -4.6629367034256575e-015 0 ;
createNode mesh -n "Stone_Corner_UV15Shape" -p "Stone_Corner_UV15";
	rename -uid "A8C65EB4-40F6-9EFF-BEA7-1CBF51533599";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.48789979517459869 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.40315843 0.91174799
		 0.34597653 0.91105062 0.34841052 0.69658822 0.36054614 0.078604899 0.37116751 0.13512561
		 0.67532176 0.91485906 0.61813986 0.9141621 0.67819691 0.70011657 0.62075096 0.10281292
		 0.32776287 0.30445641 0.36622795 0.51301128 0.38283515 0.23409609 0.59807587 0.20837426
		 0.67050654 0.2720364 0.36742982 0.54429901 0.37341779 0.64632869 0.41496503 0.48918194
		 0.6089794 0.48384002 0.66041827 0.54167902 0.65374213 0.64715016 0.4089404 0.64116788
		 0.61860728 0.64172918 0.62104636 0.69939965 0.58488661 0.10927833 0.38419646 0.29002634
		 0.61025238 0.26502323 0.40405473 0.54124254 0.62328339 0.53840429 0.40556103 0.69730544
		 0.83406085 0.078160197 0.84628624 0.17973796 0.12223701 0.16370162 0.33546054 0.13719638
		 0.34733221 0.2405912 0.13438088 0.26527274 0.58197016 0.05321978 0.63342142 0.20627356
		 0.6579926 0.50274861;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt[0:23]" -type "float3"  0.20871794 0.49999988 -0.2087182 
		0.20871794 0.34251964 -0.25882849 0.25882825 0.34251964 -0.2087182 -0.25882825 0.34251964 
		-0.2087182 -0.20871794 0.34251964 -0.25882849 -0.20871794 0.49999988 -0.2087182 0.25882825 
		0.027496099 -0.2087182 0.20871794 0.027496099 -0.25882849 0.20871794 -0.12998417 
		-0.2087182 -0.20871794 -0.12998417 -0.2087182 -0.20871794 0.027496099 -0.25882849 
		-0.25882825 0.027496099 -0.2087182 0.25882825 0.027496099 0.20871769 0.20871794 -0.12998417 
		0.20871769 0.20871794 0.027496099 0.25882825 -0.20871794 0.027496099 0.25882825 -0.20871794 
		-0.12998417 0.20871769 -0.25882825 0.027496099 0.20871769 0.25882825 0.34251964 0.20871769 
		0.20871794 0.34251964 0.25882825 0.20871794 0.49999988 0.20871769 -0.20871794 0.49999988 
		0.20871769 -0.20871794 0.34251964 0.25882825 -0.25882825 0.34251964 0.20871769;
	setAttr -s 24 ".vt[0:23]"  -0.40319777 -0.49999988 0.40319824 -0.40319777 -0.25002491 0.50000048
		 -0.5 -0.25002491 0.40319824 0.5 -0.25002491 0.40319824 0.40319777 -0.25002491 0.50000048
		 0.40319777 -0.49999988 0.40319824 -0.5 0.25002503 0.40319824 -0.40319777 0.25002503 0.50000048
		 -0.40319777 0.5 0.40319824 0.40319777 0.5 0.40319824 0.40319777 0.25002503 0.50000048
		 0.5 0.25002503 0.40319824 -0.5 0.25002503 -0.40319729 -0.40319777 0.5 -0.40319729
		 -0.40319777 0.25002503 -0.5 0.40319777 0.25002503 -0.5 0.40319777 0.5 -0.40319729
		 0.5 0.25002503 -0.40319729 -0.5 -0.25002491 -0.40319729 -0.40319777 -0.25002491 -0.5
		 -0.40319777 -0.49999988 -0.40319729 0.40319777 -0.49999988 -0.40319729 0.40319777 -0.25002491 -0.5
		 0.5 -0.25002491 -0.40319729;
	setAttr -s 48 ".ed[0:47]"  0 2 0 2 18 0 18 20 0 20 0 0 1 0 0 0 5 0 5 4 0
		 4 1 0 2 1 0 1 7 0 7 6 0 6 2 0 3 5 0 5 21 0 21 23 0 23 3 0 4 3 0 3 11 0 11 10 0 10 4 0
		 6 8 0 8 13 0 13 12 0 12 6 0 8 7 0 7 10 0 10 9 0 9 8 0 9 11 0 11 17 0 17 16 0 16 9 0
		 12 14 0 14 19 0 19 18 0 18 12 0 14 13 0 13 16 0 16 15 0 15 14 0 15 17 0 17 23 0 23 22 0
		 22 15 0 20 19 0 19 22 0 22 21 0 21 20 0;
	setAttr -s 26 -ch 96 ".fc[0:25]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 28
		f 4 4 5 6 7
		mu 0 4 4 3 35 23
		f 4 8 9 10 11
		mu 0 4 32 4 11 33
		f 4 12 13 14 15
		mu 0 4 5 6 22 7
		f 4 16 17 18 19
		mu 0 4 23 8 36 12
		f 4 20 21 22 23
		mu 0 4 9 24 16 10
		f 4 24 25 26 27
		mu 0 4 24 11 12 25
		f 4 28 29 30 31
		mu 0 4 25 13 37 17
		f 4 32 33 34 35
		mu 0 4 14 26 20 15
		f 4 36 37 38 39
		mu 0 4 26 16 17 27
		f 4 40 41 42 43
		mu 0 4 27 18 19 21
		f 4 44 45 46 47
		mu 0 4 28 20 21 22
		f 4 -8 -20 -26 -10
		mu 0 4 4 23 12 11
		f 4 -28 -32 -38 -22
		mu 0 4 24 25 17 16
		f 4 -40 -44 -46 -34
		mu 0 4 26 27 21 20
		f 4 -48 -14 -6 -4
		mu 0 4 28 22 6 0
		f 4 -16 -42 -30 -18
		mu 0 4 8 29 30 36
		f 4 -2 -12 -24 -36
		mu 0 4 31 32 33 34
		f 3 -5 -9 -1
		mu 0 3 3 4 32
		f 3 -17 -7 -13
		mu 0 3 8 23 35
		f 3 -11 -25 -21
		mu 0 3 33 11 24
		f 3 -27 -19 -29
		mu 0 3 25 12 36
		f 3 -23 -37 -33
		mu 0 3 10 16 26
		f 3 -39 -31 -41
		mu 0 3 27 17 37
		f 3 -35 -45 -3
		mu 0 3 15 20 28
		f 3 -47 -43 -15
		mu 0 3 22 21 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Stone_Corner_UV16" -p "Stone_Corners";
	rename -uid "D0D9D607-4B4B-26EF-B004-069A622DDF52";
	setAttr ".t" -type "double3" -6.1230993270874023 1.0652904483105976 -9.2949590682983381 ;
	setAttr ".s" -type "double3" 1.1454533550384749 1 1.1454533550384749 ;
	setAttr ".sp" -type "double3" 0 -4.6629367034256575e-015 0 ;
createNode mesh -n "Stone_Corner_UV16Shape" -p "Stone_Corner_UV16";
	rename -uid "1175FF7B-4A5E-A6B6-274F-01808B5024F5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.48789979517459869 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.40315843 0.91174799
		 0.34597653 0.91105062 0.34841052 0.69658822 0.36054614 0.078604899 0.37116751 0.13512561
		 0.67532176 0.91485906 0.61813986 0.9141621 0.67819691 0.70011657 0.62075096 0.10281292
		 0.32776287 0.30445641 0.36622795 0.51301128 0.38283515 0.23409609 0.59807587 0.20837426
		 0.67050654 0.2720364 0.36742982 0.54429901 0.37341779 0.64632869 0.41496503 0.48918194
		 0.6089794 0.48384002 0.66041827 0.54167902 0.65374213 0.64715016 0.4089404 0.64116788
		 0.61860728 0.64172918 0.62104636 0.69939965 0.58488661 0.10927833 0.38419646 0.29002634
		 0.61025238 0.26502323 0.40405473 0.54124254 0.62328339 0.53840429 0.40556103 0.69730544
		 0.83406085 0.078160197 0.84628624 0.17973796 0.12223701 0.16370162 0.33546054 0.13719638
		 0.34733221 0.2405912 0.13438088 0.26527274 0.58197016 0.05321978 0.63342142 0.20627356
		 0.6579926 0.50274861;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt[0:23]" -type "float3"  0.20871794 0.49999988 -0.2087182 
		0.20871794 0.34251964 -0.25882849 0.25882825 0.34251964 -0.2087182 -0.25882825 0.34251964 
		-0.2087182 -0.20871794 0.34251964 -0.25882849 -0.20871794 0.49999988 -0.2087182 0.25882825 
		0.027496099 -0.2087182 0.20871794 0.027496099 -0.25882849 0.20871794 -0.12998417 
		-0.2087182 -0.20871794 -0.12998417 -0.2087182 -0.20871794 0.027496099 -0.25882849 
		-0.25882825 0.027496099 -0.2087182 0.25882825 0.027496099 0.20871769 0.20871794 -0.12998417 
		0.20871769 0.20871794 0.027496099 0.25882825 -0.20871794 0.027496099 0.25882825 -0.20871794 
		-0.12998417 0.20871769 -0.25882825 0.027496099 0.20871769 0.25882825 0.34251964 0.20871769 
		0.20871794 0.34251964 0.25882825 0.20871794 0.49999988 0.20871769 -0.20871794 0.49999988 
		0.20871769 -0.20871794 0.34251964 0.25882825 -0.25882825 0.34251964 0.20871769;
	setAttr -s 24 ".vt[0:23]"  -0.40319777 -0.49999988 0.40319824 -0.40319777 -0.25002491 0.50000048
		 -0.5 -0.25002491 0.40319824 0.5 -0.25002491 0.40319824 0.40319777 -0.25002491 0.50000048
		 0.40319777 -0.49999988 0.40319824 -0.5 0.25002503 0.40319824 -0.40319777 0.25002503 0.50000048
		 -0.40319777 0.5 0.40319824 0.40319777 0.5 0.40319824 0.40319777 0.25002503 0.50000048
		 0.5 0.25002503 0.40319824 -0.5 0.25002503 -0.40319729 -0.40319777 0.5 -0.40319729
		 -0.40319777 0.25002503 -0.5 0.40319777 0.25002503 -0.5 0.40319777 0.5 -0.40319729
		 0.5 0.25002503 -0.40319729 -0.5 -0.25002491 -0.40319729 -0.40319777 -0.25002491 -0.5
		 -0.40319777 -0.49999988 -0.40319729 0.40319777 -0.49999988 -0.40319729 0.40319777 -0.25002491 -0.5
		 0.5 -0.25002491 -0.40319729;
	setAttr -s 48 ".ed[0:47]"  0 2 0 2 18 0 18 20 0 20 0 0 1 0 0 0 5 0 5 4 0
		 4 1 0 2 1 0 1 7 0 7 6 0 6 2 0 3 5 0 5 21 0 21 23 0 23 3 0 4 3 0 3 11 0 11 10 0 10 4 0
		 6 8 0 8 13 0 13 12 0 12 6 0 8 7 0 7 10 0 10 9 0 9 8 0 9 11 0 11 17 0 17 16 0 16 9 0
		 12 14 0 14 19 0 19 18 0 18 12 0 14 13 0 13 16 0 16 15 0 15 14 0 15 17 0 17 23 0 23 22 0
		 22 15 0 20 19 0 19 22 0 22 21 0 21 20 0;
	setAttr -s 26 -ch 96 ".fc[0:25]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 28
		f 4 4 5 6 7
		mu 0 4 4 3 35 23
		f 4 8 9 10 11
		mu 0 4 32 4 11 33
		f 4 12 13 14 15
		mu 0 4 5 6 22 7
		f 4 16 17 18 19
		mu 0 4 23 8 36 12
		f 4 20 21 22 23
		mu 0 4 9 24 16 10
		f 4 24 25 26 27
		mu 0 4 24 11 12 25
		f 4 28 29 30 31
		mu 0 4 25 13 37 17
		f 4 32 33 34 35
		mu 0 4 14 26 20 15
		f 4 36 37 38 39
		mu 0 4 26 16 17 27
		f 4 40 41 42 43
		mu 0 4 27 18 19 21
		f 4 44 45 46 47
		mu 0 4 28 20 21 22
		f 4 -8 -20 -26 -10
		mu 0 4 4 23 12 11
		f 4 -28 -32 -38 -22
		mu 0 4 24 25 17 16
		f 4 -40 -44 -46 -34
		mu 0 4 26 27 21 20
		f 4 -48 -14 -6 -4
		mu 0 4 28 22 6 0
		f 4 -16 -42 -30 -18
		mu 0 4 8 29 30 36
		f 4 -2 -12 -24 -36
		mu 0 4 31 32 33 34
		f 3 -5 -9 -1
		mu 0 3 3 4 32
		f 3 -17 -7 -13
		mu 0 3 8 23 35
		f 3 -11 -25 -21
		mu 0 3 33 11 24
		f 3 -27 -19 -29
		mu 0 3 25 12 36
		f 3 -23 -37 -33
		mu 0 3 10 16 26
		f 3 -39 -31 -41
		mu 0 3 27 17 37
		f 3 -35 -45 -3
		mu 0 3 15 20 28
		f 3 -47 -43 -15
		mu 0 3 22 21 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Stone_Corner_UV17" -p "Stone_Corners";
	rename -uid "AF9B16A7-4FAB-AB01-8CBC-69B1892DB477";
	setAttr ".t" -type "double3" -6.1230993270874023 0.70616884861165197 -9.2949590682983381 ;
	setAttr ".sp" -type "double3" 0 -4.6629367034256575e-015 0 ;
createNode mesh -n "Stone_Corner_UV17Shape" -p "Stone_Corner_UV17";
	rename -uid "51A395C4-44F8-085A-96D9-DAA4290016BE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.48789979517459869 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.40315843 0.91174799
		 0.34597653 0.91105062 0.34841052 0.69658822 0.36054614 0.078604899 0.37116751 0.13512561
		 0.67532176 0.91485906 0.61813986 0.9141621 0.67819691 0.70011657 0.62075096 0.10281292
		 0.32776287 0.30445641 0.36622795 0.51301128 0.38283515 0.23409609 0.59807587 0.20837426
		 0.67050654 0.2720364 0.36742982 0.54429901 0.37341779 0.64632869 0.41496503 0.48918194
		 0.6089794 0.48384002 0.66041827 0.54167902 0.65374213 0.64715016 0.4089404 0.64116788
		 0.61860728 0.64172918 0.62104636 0.69939965 0.58488661 0.10927833 0.38419646 0.29002634
		 0.61025238 0.26502323 0.40405473 0.54124254 0.62328339 0.53840429 0.40556103 0.69730544
		 0.83406085 0.078160197 0.84628624 0.17973796 0.12223701 0.16370162 0.33546054 0.13719638
		 0.34733221 0.2405912 0.13438088 0.26527274 0.58197016 0.05321978 0.63342142 0.20627356
		 0.6579926 0.50274861;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt[0:23]" -type "float3"  0.20871794 0.49999988 -0.2087182 
		0.20871794 0.34251964 -0.25882849 0.25882825 0.34251964 -0.2087182 -0.25882825 0.34251964 
		-0.2087182 -0.20871794 0.34251964 -0.25882849 -0.20871794 0.49999988 -0.2087182 0.25882825 
		0.027496099 -0.2087182 0.20871794 0.027496099 -0.25882849 0.20871794 -0.12998417 
		-0.2087182 -0.20871794 -0.12998417 -0.2087182 -0.20871794 0.027496099 -0.25882849 
		-0.25882825 0.027496099 -0.2087182 0.25882825 0.027496099 0.20871769 0.20871794 -0.12998417 
		0.20871769 0.20871794 0.027496099 0.25882825 -0.20871794 0.027496099 0.25882825 -0.20871794 
		-0.12998417 0.20871769 -0.25882825 0.027496099 0.20871769 0.25882825 0.34251964 0.20871769 
		0.20871794 0.34251964 0.25882825 0.20871794 0.49999988 0.20871769 -0.20871794 0.49999988 
		0.20871769 -0.20871794 0.34251964 0.25882825 -0.25882825 0.34251964 0.20871769;
	setAttr -s 24 ".vt[0:23]"  -0.40319777 -0.49999988 0.40319824 -0.40319777 -0.25002491 0.50000048
		 -0.5 -0.25002491 0.40319824 0.5 -0.25002491 0.40319824 0.40319777 -0.25002491 0.50000048
		 0.40319777 -0.49999988 0.40319824 -0.5 0.25002503 0.40319824 -0.40319777 0.25002503 0.50000048
		 -0.40319777 0.5 0.40319824 0.40319777 0.5 0.40319824 0.40319777 0.25002503 0.50000048
		 0.5 0.25002503 0.40319824 -0.5 0.25002503 -0.40319729 -0.40319777 0.5 -0.40319729
		 -0.40319777 0.25002503 -0.5 0.40319777 0.25002503 -0.5 0.40319777 0.5 -0.40319729
		 0.5 0.25002503 -0.40319729 -0.5 -0.25002491 -0.40319729 -0.40319777 -0.25002491 -0.5
		 -0.40319777 -0.49999988 -0.40319729 0.40319777 -0.49999988 -0.40319729 0.40319777 -0.25002491 -0.5
		 0.5 -0.25002491 -0.40319729;
	setAttr -s 48 ".ed[0:47]"  0 2 0 2 18 0 18 20 0 20 0 0 1 0 0 0 5 0 5 4 0
		 4 1 0 2 1 0 1 7 0 7 6 0 6 2 0 3 5 0 5 21 0 21 23 0 23 3 0 4 3 0 3 11 0 11 10 0 10 4 0
		 6 8 0 8 13 0 13 12 0 12 6 0 8 7 0 7 10 0 10 9 0 9 8 0 9 11 0 11 17 0 17 16 0 16 9 0
		 12 14 0 14 19 0 19 18 0 18 12 0 14 13 0 13 16 0 16 15 0 15 14 0 15 17 0 17 23 0 23 22 0
		 22 15 0 20 19 0 19 22 0 22 21 0 21 20 0;
	setAttr -s 26 -ch 96 ".fc[0:25]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 28
		f 4 4 5 6 7
		mu 0 4 4 3 35 23
		f 4 8 9 10 11
		mu 0 4 32 4 11 33
		f 4 12 13 14 15
		mu 0 4 5 6 22 7
		f 4 16 17 18 19
		mu 0 4 23 8 36 12
		f 4 20 21 22 23
		mu 0 4 9 24 16 10
		f 4 24 25 26 27
		mu 0 4 24 11 12 25
		f 4 28 29 30 31
		mu 0 4 25 13 37 17
		f 4 32 33 34 35
		mu 0 4 14 26 20 15
		f 4 36 37 38 39
		mu 0 4 26 16 17 27
		f 4 40 41 42 43
		mu 0 4 27 18 19 21
		f 4 44 45 46 47
		mu 0 4 28 20 21 22
		f 4 -8 -20 -26 -10
		mu 0 4 4 23 12 11
		f 4 -28 -32 -38 -22
		mu 0 4 24 25 17 16
		f 4 -40 -44 -46 -34
		mu 0 4 26 27 21 20
		f 4 -48 -14 -6 -4
		mu 0 4 28 22 6 0
		f 4 -16 -42 -30 -18
		mu 0 4 8 29 30 36
		f 4 -2 -12 -24 -36
		mu 0 4 31 32 33 34
		f 3 -5 -9 -1
		mu 0 3 3 4 32
		f 3 -17 -7 -13
		mu 0 3 8 23 35
		f 3 -11 -25 -21
		mu 0 3 33 11 24
		f 3 -27 -19 -29
		mu 0 3 25 12 36
		f 3 -23 -37 -33
		mu 0 3 10 16 26
		f 3 -39 -31 -41
		mu 0 3 27 17 37
		f 3 -35 -45 -3
		mu 0 3 15 20 28
		f 3 -47 -43 -15
		mu 0 3 22 21 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Stone_Corner_UV18" -p "Stone_Corners";
	rename -uid "24077A17-40E2-64DA-36FB-9EBECA82BCB7";
	setAttr ".t" -type "double3" -6.1230993270874023 0.35687775924771614 -9.2949590682983381 ;
	setAttr ".s" -type "double3" 1.1454533550384749 1 1.1454533550384749 ;
	setAttr ".sp" -type "double3" 0 -4.6629367034256575e-015 0 ;
createNode mesh -n "Stone_Corner_UV18Shape" -p "Stone_Corner_UV18";
	rename -uid "ABFD0BFA-4970-B640-6F40-A79004C51CEC";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.48789979517459869 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.40315843 0.91174799
		 0.34597653 0.91105062 0.34841052 0.69658822 0.36054614 0.078604899 0.37116751 0.13512561
		 0.67532176 0.91485906 0.61813986 0.9141621 0.67819691 0.70011657 0.62075096 0.10281292
		 0.32776287 0.30445641 0.36622795 0.51301128 0.38283515 0.23409609 0.59807587 0.20837426
		 0.67050654 0.2720364 0.36742982 0.54429901 0.37341779 0.64632869 0.41496503 0.48918194
		 0.6089794 0.48384002 0.66041827 0.54167902 0.65374213 0.64715016 0.4089404 0.64116788
		 0.61860728 0.64172918 0.62104636 0.69939965 0.58488661 0.10927833 0.38419646 0.29002634
		 0.61025238 0.26502323 0.40405473 0.54124254 0.62328339 0.53840429 0.40556103 0.69730544
		 0.83406085 0.078160197 0.84628624 0.17973796 0.12223701 0.16370162 0.33546054 0.13719638
		 0.34733221 0.2405912 0.13438088 0.26527274 0.58197016 0.05321978 0.63342142 0.20627356
		 0.6579926 0.50274861;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt[0:23]" -type "float3"  0.20871794 0.49999988 -0.2087182 
		0.20871794 0.34251964 -0.25882849 0.25882825 0.34251964 -0.2087182 -0.25882825 0.34251964 
		-0.2087182 -0.20871794 0.34251964 -0.25882849 -0.20871794 0.49999988 -0.2087182 0.25882825 
		0.027496099 -0.2087182 0.20871794 0.027496099 -0.25882849 0.20871794 -0.12998417 
		-0.2087182 -0.20871794 -0.12998417 -0.2087182 -0.20871794 0.027496099 -0.25882849 
		-0.25882825 0.027496099 -0.2087182 0.25882825 0.027496099 0.20871769 0.20871794 -0.12998417 
		0.20871769 0.20871794 0.027496099 0.25882825 -0.20871794 0.027496099 0.25882825 -0.20871794 
		-0.12998417 0.20871769 -0.25882825 0.027496099 0.20871769 0.25882825 0.34251964 0.20871769 
		0.20871794 0.34251964 0.25882825 0.20871794 0.49999988 0.20871769 -0.20871794 0.49999988 
		0.20871769 -0.20871794 0.34251964 0.25882825 -0.25882825 0.34251964 0.20871769;
	setAttr -s 24 ".vt[0:23]"  -0.40319777 -0.49999988 0.40319824 -0.40319777 -0.25002491 0.50000048
		 -0.5 -0.25002491 0.40319824 0.5 -0.25002491 0.40319824 0.40319777 -0.25002491 0.50000048
		 0.40319777 -0.49999988 0.40319824 -0.5 0.25002503 0.40319824 -0.40319777 0.25002503 0.50000048
		 -0.40319777 0.5 0.40319824 0.40319777 0.5 0.40319824 0.40319777 0.25002503 0.50000048
		 0.5 0.25002503 0.40319824 -0.5 0.25002503 -0.40319729 -0.40319777 0.5 -0.40319729
		 -0.40319777 0.25002503 -0.5 0.40319777 0.25002503 -0.5 0.40319777 0.5 -0.40319729
		 0.5 0.25002503 -0.40319729 -0.5 -0.25002491 -0.40319729 -0.40319777 -0.25002491 -0.5
		 -0.40319777 -0.49999988 -0.40319729 0.40319777 -0.49999988 -0.40319729 0.40319777 -0.25002491 -0.5
		 0.5 -0.25002491 -0.40319729;
	setAttr -s 48 ".ed[0:47]"  0 2 0 2 18 0 18 20 0 20 0 0 1 0 0 0 5 0 5 4 0
		 4 1 0 2 1 0 1 7 0 7 6 0 6 2 0 3 5 0 5 21 0 21 23 0 23 3 0 4 3 0 3 11 0 11 10 0 10 4 0
		 6 8 0 8 13 0 13 12 0 12 6 0 8 7 0 7 10 0 10 9 0 9 8 0 9 11 0 11 17 0 17 16 0 16 9 0
		 12 14 0 14 19 0 19 18 0 18 12 0 14 13 0 13 16 0 16 15 0 15 14 0 15 17 0 17 23 0 23 22 0
		 22 15 0 20 19 0 19 22 0 22 21 0 21 20 0;
	setAttr -s 26 -ch 96 ".fc[0:25]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 28
		f 4 4 5 6 7
		mu 0 4 4 3 35 23
		f 4 8 9 10 11
		mu 0 4 32 4 11 33
		f 4 12 13 14 15
		mu 0 4 5 6 22 7
		f 4 16 17 18 19
		mu 0 4 23 8 36 12
		f 4 20 21 22 23
		mu 0 4 9 24 16 10
		f 4 24 25 26 27
		mu 0 4 24 11 12 25
		f 4 28 29 30 31
		mu 0 4 25 13 37 17
		f 4 32 33 34 35
		mu 0 4 14 26 20 15
		f 4 36 37 38 39
		mu 0 4 26 16 17 27
		f 4 40 41 42 43
		mu 0 4 27 18 19 21
		f 4 44 45 46 47
		mu 0 4 28 20 21 22
		f 4 -8 -20 -26 -10
		mu 0 4 4 23 12 11
		f 4 -28 -32 -38 -22
		mu 0 4 24 25 17 16
		f 4 -40 -44 -46 -34
		mu 0 4 26 27 21 20
		f 4 -48 -14 -6 -4
		mu 0 4 28 22 6 0
		f 4 -16 -42 -30 -18
		mu 0 4 8 29 30 36
		f 4 -2 -12 -24 -36
		mu 0 4 31 32 33 34
		f 3 -5 -9 -1
		mu 0 3 3 4 32
		f 3 -17 -7 -13
		mu 0 3 8 23 35
		f 3 -11 -25 -21
		mu 0 3 33 11 24
		f 3 -27 -19 -29
		mu 0 3 25 12 36
		f 3 -23 -37 -33
		mu 0 3 10 16 26
		f 3 -39 -31 -41
		mu 0 3 27 17 37
		f 3 -35 -45 -3
		mu 0 3 15 20 28
		f 3 -47 -43 -15
		mu 0 3 22 21 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Stone_Corner_UV19" -p "Stone_Corners";
	rename -uid "954FD5DA-49D0-53DD-93E2-74A7C9CAC0DC";
	setAttr ".t" -type "double3" -6.1230993270874023 0 -9.2949590682983381 ;
	setAttr ".s" -type "double3" 1.3896095528097929 1 1.3896095528097929 ;
	setAttr ".sp" -type "double3" 0 -4.6629367034256575e-015 0 ;
createNode mesh -n "Stone_Corner_UV19Shape" -p "Stone_Corner_UV19";
	rename -uid "88F004B3-4907-440F-4D99-46B5ECE6A46F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.48789979517459869 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.40315843 0.91174799
		 0.34597653 0.91105062 0.34841052 0.69658822 0.36054614 0.078604899 0.37116751 0.13512561
		 0.67532176 0.91485906 0.61813986 0.9141621 0.67819691 0.70011657 0.62075096 0.10281292
		 0.32776287 0.30445641 0.36622795 0.51301128 0.38283515 0.23409609 0.59807587 0.20837426
		 0.67050654 0.2720364 0.36742982 0.54429901 0.37341779 0.64632869 0.41496503 0.48918194
		 0.6089794 0.48384002 0.66041827 0.54167902 0.65374213 0.64715016 0.4089404 0.64116788
		 0.61860728 0.64172918 0.62104636 0.69939965 0.58488661 0.10927833 0.38419646 0.29002634
		 0.61025238 0.26502323 0.40405473 0.54124254 0.62328339 0.53840429 0.40556103 0.69730544
		 0.83406085 0.078160197 0.84628624 0.17973796 0.12223701 0.16370162 0.33546054 0.13719638
		 0.34733221 0.2405912 0.13438088 0.26527274 0.58197016 0.05321978 0.63342142 0.20627356
		 0.6579926 0.50274861;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt[0:23]" -type "float3"  0.20871794 0.49999988 -0.2087182 
		0.20871794 0.34251964 -0.25882849 0.25882825 0.34251964 -0.2087182 -0.25882825 0.34251964 
		-0.2087182 -0.20871794 0.34251964 -0.25882849 -0.20871794 0.49999988 -0.2087182 0.25882825 
		0.027496099 -0.2087182 0.20871794 0.027496099 -0.25882849 0.20871794 -0.12998417 
		-0.2087182 -0.20871794 -0.12998417 -0.2087182 -0.20871794 0.027496099 -0.25882849 
		-0.25882825 0.027496099 -0.2087182 0.25882825 0.027496099 0.20871769 0.20871794 -0.12998417 
		0.20871769 0.20871794 0.027496099 0.25882825 -0.20871794 0.027496099 0.25882825 -0.20871794 
		-0.12998417 0.20871769 -0.25882825 0.027496099 0.20871769 0.25882825 0.34251964 0.20871769 
		0.20871794 0.34251964 0.25882825 0.20871794 0.49999988 0.20871769 -0.20871794 0.49999988 
		0.20871769 -0.20871794 0.34251964 0.25882825 -0.25882825 0.34251964 0.20871769;
	setAttr -s 24 ".vt[0:23]"  -0.40319777 -0.49999988 0.40319824 -0.40319777 -0.25002491 0.50000048
		 -0.5 -0.25002491 0.40319824 0.5 -0.25002491 0.40319824 0.40319777 -0.25002491 0.50000048
		 0.40319777 -0.49999988 0.40319824 -0.5 0.25002503 0.40319824 -0.40319777 0.25002503 0.50000048
		 -0.40319777 0.5 0.40319824 0.40319777 0.5 0.40319824 0.40319777 0.25002503 0.50000048
		 0.5 0.25002503 0.40319824 -0.5 0.25002503 -0.40319729 -0.40319777 0.5 -0.40319729
		 -0.40319777 0.25002503 -0.5 0.40319777 0.25002503 -0.5 0.40319777 0.5 -0.40319729
		 0.5 0.25002503 -0.40319729 -0.5 -0.25002491 -0.40319729 -0.40319777 -0.25002491 -0.5
		 -0.40319777 -0.49999988 -0.40319729 0.40319777 -0.49999988 -0.40319729 0.40319777 -0.25002491 -0.5
		 0.5 -0.25002491 -0.40319729;
	setAttr -s 48 ".ed[0:47]"  0 2 0 2 18 0 18 20 0 20 0 0 1 0 0 0 5 0 5 4 0
		 4 1 0 2 1 0 1 7 0 7 6 0 6 2 0 3 5 0 5 21 0 21 23 0 23 3 0 4 3 0 3 11 0 11 10 0 10 4 0
		 6 8 0 8 13 0 13 12 0 12 6 0 8 7 0 7 10 0 10 9 0 9 8 0 9 11 0 11 17 0 17 16 0 16 9 0
		 12 14 0 14 19 0 19 18 0 18 12 0 14 13 0 13 16 0 16 15 0 15 14 0 15 17 0 17 23 0 23 22 0
		 22 15 0 20 19 0 19 22 0 22 21 0 21 20 0;
	setAttr -s 26 -ch 96 ".fc[0:25]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 28
		f 4 4 5 6 7
		mu 0 4 4 3 35 23
		f 4 8 9 10 11
		mu 0 4 32 4 11 33
		f 4 12 13 14 15
		mu 0 4 5 6 22 7
		f 4 16 17 18 19
		mu 0 4 23 8 36 12
		f 4 20 21 22 23
		mu 0 4 9 24 16 10
		f 4 24 25 26 27
		mu 0 4 24 11 12 25
		f 4 28 29 30 31
		mu 0 4 25 13 37 17
		f 4 32 33 34 35
		mu 0 4 14 26 20 15
		f 4 36 37 38 39
		mu 0 4 26 16 17 27
		f 4 40 41 42 43
		mu 0 4 27 18 19 21
		f 4 44 45 46 47
		mu 0 4 28 20 21 22
		f 4 -8 -20 -26 -10
		mu 0 4 4 23 12 11
		f 4 -28 -32 -38 -22
		mu 0 4 24 25 17 16
		f 4 -40 -44 -46 -34
		mu 0 4 26 27 21 20
		f 4 -48 -14 -6 -4
		mu 0 4 28 22 6 0
		f 4 -16 -42 -30 -18
		mu 0 4 8 29 30 36
		f 4 -2 -12 -24 -36
		mu 0 4 31 32 33 34
		f 3 -5 -9 -1
		mu 0 3 3 4 32
		f 3 -17 -7 -13
		mu 0 3 8 23 35
		f 3 -11 -25 -21
		mu 0 3 33 11 24
		f 3 -27 -19 -29
		mu 0 3 25 12 36
		f 3 -23 -37 -33
		mu 0 3 10 16 26
		f 3 -39 -31 -41
		mu 0 3 27 17 37
		f 3 -35 -45 -3
		mu 0 3 15 20 28
		f 3 -47 -43 -15
		mu 0 3 22 21 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Stone_Corner_UV20" -p "Stone_Corners";
	rename -uid "1113B211-4AA7-621E-33A6-708A12D7F7AA";
	setAttr ".t" -type "double3" -6.1230993270874023 1.4169278104116092 3.0972878932952881 ;
	setAttr ".s" -type "double3" 1 0.82531683073188189 1 ;
	setAttr ".sp" -type "double3" 0 -4.6629367034256575e-015 0 ;
createNode mesh -n "Stone_Corner_UV20Shape" -p "Stone_Corner_UV20";
	rename -uid "FA7AD82F-43C5-135D-7EC9-10BA2C716ED8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.48789979517459869 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.40315843 0.91174799
		 0.34597653 0.91105062 0.34841052 0.69658822 0.36054614 0.078604899 0.37116751 0.13512561
		 0.67532176 0.91485906 0.61813986 0.9141621 0.67819691 0.70011657 0.62075096 0.10281292
		 0.32776287 0.30445641 0.36622795 0.51301128 0.38283515 0.23409609 0.59807587 0.20837426
		 0.67050654 0.2720364 0.36742982 0.54429901 0.37341779 0.64632869 0.41496503 0.48918194
		 0.6089794 0.48384002 0.66041827 0.54167902 0.65374213 0.64715016 0.4089404 0.64116788
		 0.61860728 0.64172918 0.62104636 0.69939965 0.58488661 0.10927833 0.38419646 0.29002634
		 0.61025238 0.26502323 0.40405473 0.54124254 0.62328339 0.53840429 0.40556103 0.69730544
		 0.83406085 0.078160197 0.84628624 0.17973796 0.12223701 0.16370162 0.33546054 0.13719638
		 0.34733221 0.2405912 0.13438088 0.26527274 0.58197016 0.05321978 0.63342142 0.20627356
		 0.6579926 0.50274861;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt[0:23]" -type "float3"  0.20871794 0.49999988 -0.2087182 
		0.20871794 0.34251964 -0.25882849 0.25882825 0.34251964 -0.2087182 -0.25882825 0.34251964 
		-0.2087182 -0.20871794 0.34251964 -0.25882849 -0.20871794 0.49999988 -0.2087182 0.25882825 
		0.027496099 -0.2087182 0.20871794 0.027496099 -0.25882849 0.20871794 -0.12998417 
		-0.2087182 -0.20871794 -0.12998417 -0.2087182 -0.20871794 0.027496099 -0.25882849 
		-0.25882825 0.027496099 -0.2087182 0.25882825 0.027496099 0.20871769 0.20871794 -0.12998417 
		0.20871769 0.20871794 0.027496099 0.25882825 -0.20871794 0.027496099 0.25882825 -0.20871794 
		-0.12998417 0.20871769 -0.25882825 0.027496099 0.20871769 0.25882825 0.34251964 0.20871769 
		0.20871794 0.34251964 0.25882825 0.20871794 0.49999988 0.20871769 -0.20871794 0.49999988 
		0.20871769 -0.20871794 0.34251964 0.25882825 -0.25882825 0.34251964 0.20871769;
	setAttr -s 24 ".vt[0:23]"  -0.40319777 -0.49999988 0.40319824 -0.40319777 -0.25002491 0.50000048
		 -0.5 -0.25002491 0.40319824 0.5 -0.25002491 0.40319824 0.40319777 -0.25002491 0.50000048
		 0.40319777 -0.49999988 0.40319824 -0.5 0.25002503 0.40319824 -0.40319777 0.25002503 0.50000048
		 -0.40319777 0.5 0.40319824 0.40319777 0.5 0.40319824 0.40319777 0.25002503 0.50000048
		 0.5 0.25002503 0.40319824 -0.5 0.25002503 -0.40319729 -0.40319777 0.5 -0.40319729
		 -0.40319777 0.25002503 -0.5 0.40319777 0.25002503 -0.5 0.40319777 0.5 -0.40319729
		 0.5 0.25002503 -0.40319729 -0.5 -0.25002491 -0.40319729 -0.40319777 -0.25002491 -0.5
		 -0.40319777 -0.49999988 -0.40319729 0.40319777 -0.49999988 -0.40319729 0.40319777 -0.25002491 -0.5
		 0.5 -0.25002491 -0.40319729;
	setAttr -s 48 ".ed[0:47]"  0 2 0 2 18 0 18 20 0 20 0 0 1 0 0 0 5 0 5 4 0
		 4 1 0 2 1 0 1 7 0 7 6 0 6 2 0 3 5 0 5 21 0 21 23 0 23 3 0 4 3 0 3 11 0 11 10 0 10 4 0
		 6 8 0 8 13 0 13 12 0 12 6 0 8 7 0 7 10 0 10 9 0 9 8 0 9 11 0 11 17 0 17 16 0 16 9 0
		 12 14 0 14 19 0 19 18 0 18 12 0 14 13 0 13 16 0 16 15 0 15 14 0 15 17 0 17 23 0 23 22 0
		 22 15 0 20 19 0 19 22 0 22 21 0 21 20 0;
	setAttr -s 26 -ch 96 ".fc[0:25]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 28
		f 4 4 5 6 7
		mu 0 4 4 3 35 23
		f 4 8 9 10 11
		mu 0 4 32 4 11 33
		f 4 12 13 14 15
		mu 0 4 5 6 22 7
		f 4 16 17 18 19
		mu 0 4 23 8 36 12
		f 4 20 21 22 23
		mu 0 4 9 24 16 10
		f 4 24 25 26 27
		mu 0 4 24 11 12 25
		f 4 28 29 30 31
		mu 0 4 25 13 37 17
		f 4 32 33 34 35
		mu 0 4 14 26 20 15
		f 4 36 37 38 39
		mu 0 4 26 16 17 27
		f 4 40 41 42 43
		mu 0 4 27 18 19 21
		f 4 44 45 46 47
		mu 0 4 28 20 21 22
		f 4 -8 -20 -26 -10
		mu 0 4 4 23 12 11
		f 4 -28 -32 -38 -22
		mu 0 4 24 25 17 16
		f 4 -40 -44 -46 -34
		mu 0 4 26 27 21 20
		f 4 -48 -14 -6 -4
		mu 0 4 28 22 6 0
		f 4 -16 -42 -30 -18
		mu 0 4 8 29 30 36
		f 4 -2 -12 -24 -36
		mu 0 4 31 32 33 34
		f 3 -5 -9 -1
		mu 0 3 3 4 32
		f 3 -17 -7 -13
		mu 0 3 8 23 35
		f 3 -11 -25 -21
		mu 0 3 33 11 24
		f 3 -27 -19 -29
		mu 0 3 25 12 36
		f 3 -23 -37 -33
		mu 0 3 10 16 26
		f 3 -39 -31 -41
		mu 0 3 27 17 37
		f 3 -35 -45 -3
		mu 0 3 15 20 28
		f 3 -47 -43 -15
		mu 0 3 22 21 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Stone_Corner_UV21" -p "Stone_Corners";
	rename -uid "CA8C9C3C-4581-CEE9-5D1C-8595DDC23F06";
	setAttr ".t" -type "double3" -6.1230993270874023 1.0652904483105976 3.0972878932952881 ;
	setAttr ".s" -type "double3" 1.1454533550384749 1 1.1454533550384749 ;
	setAttr ".sp" -type "double3" 0 -4.6629367034256575e-015 0 ;
createNode mesh -n "Stone_Corner_UV21Shape" -p "Stone_Corner_UV21";
	rename -uid "BDEAEB7C-448B-51B6-B393-36A0238A28E1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.48789979517459869 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.40315843 0.91174799
		 0.34597653 0.91105062 0.34841052 0.69658822 0.36054614 0.078604899 0.37116751 0.13512561
		 0.67532176 0.91485906 0.61813986 0.9141621 0.67819691 0.70011657 0.62075096 0.10281292
		 0.32776287 0.30445641 0.36622795 0.51301128 0.38283515 0.23409609 0.59807587 0.20837426
		 0.67050654 0.2720364 0.36742982 0.54429901 0.37341779 0.64632869 0.41496503 0.48918194
		 0.6089794 0.48384002 0.66041827 0.54167902 0.65374213 0.64715016 0.4089404 0.64116788
		 0.61860728 0.64172918 0.62104636 0.69939965 0.58488661 0.10927833 0.38419646 0.29002634
		 0.61025238 0.26502323 0.40405473 0.54124254 0.62328339 0.53840429 0.40556103 0.69730544
		 0.83406085 0.078160197 0.84628624 0.17973796 0.12223701 0.16370162 0.33546054 0.13719638
		 0.34733221 0.2405912 0.13438088 0.26527274 0.58197016 0.05321978 0.63342142 0.20627356
		 0.6579926 0.50274861;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt[0:23]" -type "float3"  0.20871794 0.49999988 -0.2087182 
		0.20871794 0.34251964 -0.25882849 0.25882825 0.34251964 -0.2087182 -0.25882825 0.34251964 
		-0.2087182 -0.20871794 0.34251964 -0.25882849 -0.20871794 0.49999988 -0.2087182 0.25882825 
		0.027496099 -0.2087182 0.20871794 0.027496099 -0.25882849 0.20871794 -0.12998417 
		-0.2087182 -0.20871794 -0.12998417 -0.2087182 -0.20871794 0.027496099 -0.25882849 
		-0.25882825 0.027496099 -0.2087182 0.25882825 0.027496099 0.20871769 0.20871794 -0.12998417 
		0.20871769 0.20871794 0.027496099 0.25882825 -0.20871794 0.027496099 0.25882825 -0.20871794 
		-0.12998417 0.20871769 -0.25882825 0.027496099 0.20871769 0.25882825 0.34251964 0.20871769 
		0.20871794 0.34251964 0.25882825 0.20871794 0.49999988 0.20871769 -0.20871794 0.49999988 
		0.20871769 -0.20871794 0.34251964 0.25882825 -0.25882825 0.34251964 0.20871769;
	setAttr -s 24 ".vt[0:23]"  -0.40319777 -0.49999988 0.40319824 -0.40319777 -0.25002491 0.50000048
		 -0.5 -0.25002491 0.40319824 0.5 -0.25002491 0.40319824 0.40319777 -0.25002491 0.50000048
		 0.40319777 -0.49999988 0.40319824 -0.5 0.25002503 0.40319824 -0.40319777 0.25002503 0.50000048
		 -0.40319777 0.5 0.40319824 0.40319777 0.5 0.40319824 0.40319777 0.25002503 0.50000048
		 0.5 0.25002503 0.40319824 -0.5 0.25002503 -0.40319729 -0.40319777 0.5 -0.40319729
		 -0.40319777 0.25002503 -0.5 0.40319777 0.25002503 -0.5 0.40319777 0.5 -0.40319729
		 0.5 0.25002503 -0.40319729 -0.5 -0.25002491 -0.40319729 -0.40319777 -0.25002491 -0.5
		 -0.40319777 -0.49999988 -0.40319729 0.40319777 -0.49999988 -0.40319729 0.40319777 -0.25002491 -0.5
		 0.5 -0.25002491 -0.40319729;
	setAttr -s 48 ".ed[0:47]"  0 2 0 2 18 0 18 20 0 20 0 0 1 0 0 0 5 0 5 4 0
		 4 1 0 2 1 0 1 7 0 7 6 0 6 2 0 3 5 0 5 21 0 21 23 0 23 3 0 4 3 0 3 11 0 11 10 0 10 4 0
		 6 8 0 8 13 0 13 12 0 12 6 0 8 7 0 7 10 0 10 9 0 9 8 0 9 11 0 11 17 0 17 16 0 16 9 0
		 12 14 0 14 19 0 19 18 0 18 12 0 14 13 0 13 16 0 16 15 0 15 14 0 15 17 0 17 23 0 23 22 0
		 22 15 0 20 19 0 19 22 0 22 21 0 21 20 0;
	setAttr -s 26 -ch 96 ".fc[0:25]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 28
		f 4 4 5 6 7
		mu 0 4 4 3 35 23
		f 4 8 9 10 11
		mu 0 4 32 4 11 33
		f 4 12 13 14 15
		mu 0 4 5 6 22 7
		f 4 16 17 18 19
		mu 0 4 23 8 36 12
		f 4 20 21 22 23
		mu 0 4 9 24 16 10
		f 4 24 25 26 27
		mu 0 4 24 11 12 25
		f 4 28 29 30 31
		mu 0 4 25 13 37 17
		f 4 32 33 34 35
		mu 0 4 14 26 20 15
		f 4 36 37 38 39
		mu 0 4 26 16 17 27
		f 4 40 41 42 43
		mu 0 4 27 18 19 21
		f 4 44 45 46 47
		mu 0 4 28 20 21 22
		f 4 -8 -20 -26 -10
		mu 0 4 4 23 12 11
		f 4 -28 -32 -38 -22
		mu 0 4 24 25 17 16
		f 4 -40 -44 -46 -34
		mu 0 4 26 27 21 20
		f 4 -48 -14 -6 -4
		mu 0 4 28 22 6 0
		f 4 -16 -42 -30 -18
		mu 0 4 8 29 30 36
		f 4 -2 -12 -24 -36
		mu 0 4 31 32 33 34
		f 3 -5 -9 -1
		mu 0 3 3 4 32
		f 3 -17 -7 -13
		mu 0 3 8 23 35
		f 3 -11 -25 -21
		mu 0 3 33 11 24
		f 3 -27 -19 -29
		mu 0 3 25 12 36
		f 3 -23 -37 -33
		mu 0 3 10 16 26
		f 3 -39 -31 -41
		mu 0 3 27 17 37
		f 3 -35 -45 -3
		mu 0 3 15 20 28
		f 3 -47 -43 -15
		mu 0 3 22 21 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Stone_Corner_UV22" -p "Stone_Corners";
	rename -uid "0EABE940-45F5-F46B-7B9D-36BF4C323EED";
	setAttr ".t" -type "double3" -6.1230993270874023 0.70616884861165197 3.0972878932952881 ;
	setAttr ".sp" -type "double3" 0 -4.6629367034256575e-015 0 ;
createNode mesh -n "Stone_Corner_UV22Shape" -p "Stone_Corner_UV22";
	rename -uid "4179A73C-4E6D-0456-E0DD-458A49B0929F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.48789979517459869 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.40315843 0.91174799
		 0.34597653 0.91105062 0.34841052 0.69658822 0.36054614 0.078604899 0.37116751 0.13512561
		 0.67532176 0.91485906 0.61813986 0.9141621 0.67819691 0.70011657 0.62075096 0.10281292
		 0.32776287 0.30445641 0.36622795 0.51301128 0.38283515 0.23409609 0.59807587 0.20837426
		 0.67050654 0.2720364 0.36742982 0.54429901 0.37341779 0.64632869 0.41496503 0.48918194
		 0.6089794 0.48384002 0.66041827 0.54167902 0.65374213 0.64715016 0.4089404 0.64116788
		 0.61860728 0.64172918 0.62104636 0.69939965 0.58488661 0.10927833 0.38419646 0.29002634
		 0.61025238 0.26502323 0.40405473 0.54124254 0.62328339 0.53840429 0.40556103 0.69730544
		 0.83406085 0.078160197 0.84628624 0.17973796 0.12223701 0.16370162 0.33546054 0.13719638
		 0.34733221 0.2405912 0.13438088 0.26527274 0.58197016 0.05321978 0.63342142 0.20627356
		 0.6579926 0.50274861;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt[0:23]" -type "float3"  0.20871794 0.49999988 -0.2087182 
		0.20871794 0.34251964 -0.25882849 0.25882825 0.34251964 -0.2087182 -0.25882825 0.34251964 
		-0.2087182 -0.20871794 0.34251964 -0.25882849 -0.20871794 0.49999988 -0.2087182 0.25882825 
		0.027496099 -0.2087182 0.20871794 0.027496099 -0.25882849 0.20871794 -0.12998417 
		-0.2087182 -0.20871794 -0.12998417 -0.2087182 -0.20871794 0.027496099 -0.25882849 
		-0.25882825 0.027496099 -0.2087182 0.25882825 0.027496099 0.20871769 0.20871794 -0.12998417 
		0.20871769 0.20871794 0.027496099 0.25882825 -0.20871794 0.027496099 0.25882825 -0.20871794 
		-0.12998417 0.20871769 -0.25882825 0.027496099 0.20871769 0.25882825 0.34251964 0.20871769 
		0.20871794 0.34251964 0.25882825 0.20871794 0.49999988 0.20871769 -0.20871794 0.49999988 
		0.20871769 -0.20871794 0.34251964 0.25882825 -0.25882825 0.34251964 0.20871769;
	setAttr -s 24 ".vt[0:23]"  -0.40319777 -0.49999988 0.40319824 -0.40319777 -0.25002491 0.50000048
		 -0.5 -0.25002491 0.40319824 0.5 -0.25002491 0.40319824 0.40319777 -0.25002491 0.50000048
		 0.40319777 -0.49999988 0.40319824 -0.5 0.25002503 0.40319824 -0.40319777 0.25002503 0.50000048
		 -0.40319777 0.5 0.40319824 0.40319777 0.5 0.40319824 0.40319777 0.25002503 0.50000048
		 0.5 0.25002503 0.40319824 -0.5 0.25002503 -0.40319729 -0.40319777 0.5 -0.40319729
		 -0.40319777 0.25002503 -0.5 0.40319777 0.25002503 -0.5 0.40319777 0.5 -0.40319729
		 0.5 0.25002503 -0.40319729 -0.5 -0.25002491 -0.40319729 -0.40319777 -0.25002491 -0.5
		 -0.40319777 -0.49999988 -0.40319729 0.40319777 -0.49999988 -0.40319729 0.40319777 -0.25002491 -0.5
		 0.5 -0.25002491 -0.40319729;
	setAttr -s 48 ".ed[0:47]"  0 2 0 2 18 0 18 20 0 20 0 0 1 0 0 0 5 0 5 4 0
		 4 1 0 2 1 0 1 7 0 7 6 0 6 2 0 3 5 0 5 21 0 21 23 0 23 3 0 4 3 0 3 11 0 11 10 0 10 4 0
		 6 8 0 8 13 0 13 12 0 12 6 0 8 7 0 7 10 0 10 9 0 9 8 0 9 11 0 11 17 0 17 16 0 16 9 0
		 12 14 0 14 19 0 19 18 0 18 12 0 14 13 0 13 16 0 16 15 0 15 14 0 15 17 0 17 23 0 23 22 0
		 22 15 0 20 19 0 19 22 0 22 21 0 21 20 0;
	setAttr -s 26 -ch 96 ".fc[0:25]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 28
		f 4 4 5 6 7
		mu 0 4 4 3 35 23
		f 4 8 9 10 11
		mu 0 4 32 4 11 33
		f 4 12 13 14 15
		mu 0 4 5 6 22 7
		f 4 16 17 18 19
		mu 0 4 23 8 36 12
		f 4 20 21 22 23
		mu 0 4 9 24 16 10
		f 4 24 25 26 27
		mu 0 4 24 11 12 25
		f 4 28 29 30 31
		mu 0 4 25 13 37 17
		f 4 32 33 34 35
		mu 0 4 14 26 20 15
		f 4 36 37 38 39
		mu 0 4 26 16 17 27
		f 4 40 41 42 43
		mu 0 4 27 18 19 21
		f 4 44 45 46 47
		mu 0 4 28 20 21 22
		f 4 -8 -20 -26 -10
		mu 0 4 4 23 12 11
		f 4 -28 -32 -38 -22
		mu 0 4 24 25 17 16
		f 4 -40 -44 -46 -34
		mu 0 4 26 27 21 20
		f 4 -48 -14 -6 -4
		mu 0 4 28 22 6 0
		f 4 -16 -42 -30 -18
		mu 0 4 8 29 30 36
		f 4 -2 -12 -24 -36
		mu 0 4 31 32 33 34
		f 3 -5 -9 -1
		mu 0 3 3 4 32
		f 3 -17 -7 -13
		mu 0 3 8 23 35
		f 3 -11 -25 -21
		mu 0 3 33 11 24
		f 3 -27 -19 -29
		mu 0 3 25 12 36
		f 3 -23 -37 -33
		mu 0 3 10 16 26
		f 3 -39 -31 -41
		mu 0 3 27 17 37
		f 3 -35 -45 -3
		mu 0 3 15 20 28
		f 3 -47 -43 -15
		mu 0 3 22 21 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Stone_Corner_UV23" -p "Stone_Corners";
	rename -uid "5FDC24AB-4F9A-2E83-DA75-229AC3E9D1C0";
	setAttr ".t" -type "double3" -6.1230993270874023 0.35687775924771614 3.0972878932952881 ;
	setAttr ".sp" -type "double3" 0 -4.6629367034256575e-015 0 ;
createNode mesh -n "Stone_Corner_UV23Shape" -p "Stone_Corner_UV23";
	rename -uid "13B7C6C1-4166-722B-59CF-10A52445F3FE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.48789979517459869 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.40315843 0.91174799
		 0.34597653 0.91105062 0.34841052 0.69658822 0.36054614 0.078604899 0.37116751 0.13512561
		 0.67532176 0.91485906 0.61813986 0.9141621 0.67819691 0.70011657 0.62075096 0.10281292
		 0.32776287 0.30445641 0.36622795 0.51301128 0.38283515 0.23409609 0.59807587 0.20837426
		 0.67050654 0.2720364 0.36742982 0.54429901 0.37341779 0.64632869 0.41496503 0.48918194
		 0.6089794 0.48384002 0.66041827 0.54167902 0.65374213 0.64715016 0.4089404 0.64116788
		 0.61860728 0.64172918 0.62104636 0.69939965 0.58488661 0.10927833 0.38419646 0.29002634
		 0.61025238 0.26502323 0.40405473 0.54124254 0.62328339 0.53840429 0.40556103 0.69730544
		 0.83406085 0.078160197 0.84628624 0.17973796 0.12223701 0.16370162 0.33546054 0.13719638
		 0.34733221 0.2405912 0.13438088 0.26527274 0.58197016 0.05321978 0.63342142 0.20627356
		 0.6579926 0.50274861;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt[0:23]" -type "float3"  0.20871794 0.49999988 -0.2087182 
		0.20871794 0.34251964 -0.25882849 0.25882825 0.34251964 -0.2087182 -0.25882825 0.34251964 
		-0.2087182 -0.20871794 0.34251964 -0.25882849 -0.20871794 0.49999988 -0.2087182 0.25882825 
		0.027496099 -0.2087182 0.20871794 0.027496099 -0.25882849 0.20871794 -0.12998417 
		-0.2087182 -0.20871794 -0.12998417 -0.2087182 -0.20871794 0.027496099 -0.25882849 
		-0.25882825 0.027496099 -0.2087182 0.25882825 0.027496099 0.20871769 0.20871794 -0.12998417 
		0.20871769 0.20871794 0.027496099 0.25882825 -0.20871794 0.027496099 0.25882825 -0.20871794 
		-0.12998417 0.20871769 -0.25882825 0.027496099 0.20871769 0.25882825 0.34251964 0.20871769 
		0.20871794 0.34251964 0.25882825 0.20871794 0.49999988 0.20871769 -0.20871794 0.49999988 
		0.20871769 -0.20871794 0.34251964 0.25882825 -0.25882825 0.34251964 0.20871769;
	setAttr -s 24 ".vt[0:23]"  -0.40319777 -0.49999988 0.40319824 -0.40319777 -0.25002491 0.50000048
		 -0.5 -0.25002491 0.40319824 0.5 -0.25002491 0.40319824 0.40319777 -0.25002491 0.50000048
		 0.40319777 -0.49999988 0.40319824 -0.5 0.25002503 0.40319824 -0.40319777 0.25002503 0.50000048
		 -0.40319777 0.5 0.40319824 0.40319777 0.5 0.40319824 0.40319777 0.25002503 0.50000048
		 0.5 0.25002503 0.40319824 -0.5 0.25002503 -0.40319729 -0.40319777 0.5 -0.40319729
		 -0.40319777 0.25002503 -0.5 0.40319777 0.25002503 -0.5 0.40319777 0.5 -0.40319729
		 0.5 0.25002503 -0.40319729 -0.5 -0.25002491 -0.40319729 -0.40319777 -0.25002491 -0.5
		 -0.40319777 -0.49999988 -0.40319729 0.40319777 -0.49999988 -0.40319729 0.40319777 -0.25002491 -0.5
		 0.5 -0.25002491 -0.40319729;
	setAttr -s 48 ".ed[0:47]"  0 2 0 2 18 0 18 20 0 20 0 0 1 0 0 0 5 0 5 4 0
		 4 1 0 2 1 0 1 7 0 7 6 0 6 2 0 3 5 0 5 21 0 21 23 0 23 3 0 4 3 0 3 11 0 11 10 0 10 4 0
		 6 8 0 8 13 0 13 12 0 12 6 0 8 7 0 7 10 0 10 9 0 9 8 0 9 11 0 11 17 0 17 16 0 16 9 0
		 12 14 0 14 19 0 19 18 0 18 12 0 14 13 0 13 16 0 16 15 0 15 14 0 15 17 0 17 23 0 23 22 0
		 22 15 0 20 19 0 19 22 0 22 21 0 21 20 0;
	setAttr -s 26 -ch 96 ".fc[0:25]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 28
		f 4 4 5 6 7
		mu 0 4 4 3 35 23
		f 4 8 9 10 11
		mu 0 4 32 4 11 33
		f 4 12 13 14 15
		mu 0 4 5 6 22 7
		f 4 16 17 18 19
		mu 0 4 23 8 36 12
		f 4 20 21 22 23
		mu 0 4 9 24 16 10
		f 4 24 25 26 27
		mu 0 4 24 11 12 25
		f 4 28 29 30 31
		mu 0 4 25 13 37 17
		f 4 32 33 34 35
		mu 0 4 14 26 20 15
		f 4 36 37 38 39
		mu 0 4 26 16 17 27
		f 4 40 41 42 43
		mu 0 4 27 18 19 21
		f 4 44 45 46 47
		mu 0 4 28 20 21 22
		f 4 -8 -20 -26 -10
		mu 0 4 4 23 12 11
		f 4 -28 -32 -38 -22
		mu 0 4 24 25 17 16
		f 4 -40 -44 -46 -34
		mu 0 4 26 27 21 20
		f 4 -48 -14 -6 -4
		mu 0 4 28 22 6 0
		f 4 -16 -42 -30 -18
		mu 0 4 8 29 30 36
		f 4 -2 -12 -24 -36
		mu 0 4 31 32 33 34
		f 3 -5 -9 -1
		mu 0 3 3 4 32
		f 3 -17 -7 -13
		mu 0 3 8 23 35
		f 3 -11 -25 -21
		mu 0 3 33 11 24
		f 3 -27 -19 -29
		mu 0 3 25 12 36
		f 3 -23 -37 -33
		mu 0 3 10 16 26
		f 3 -39 -31 -41
		mu 0 3 27 17 37
		f 3 -35 -45 -3
		mu 0 3 15 20 28
		f 3 -47 -43 -15
		mu 0 3 22 21 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Stone_Corner_UV24" -p "Stone_Corners";
	rename -uid "D0462170-4DCC-0C94-11AD-E196A2DD77C7";
	setAttr ".t" -type "double3" -6.1230993270874023 0 3.0972878932952881 ;
	setAttr ".s" -type "double3" 1.1454533550384749 1 1.1454533550384749 ;
	setAttr ".sp" -type "double3" 0 -4.6629367034256575e-015 0 ;
createNode mesh -n "Stone_Corner_UV24Shape" -p "Stone_Corner_UV24";
	rename -uid "343A5919-4F8C-A996-05E5-B38A588D5481";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.48789979517459869 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.40315843 0.91174799
		 0.34597653 0.91105062 0.34841052 0.69658822 0.36054614 0.078604899 0.37116751 0.13512561
		 0.67532176 0.91485906 0.61813986 0.9141621 0.67819691 0.70011657 0.62075096 0.10281292
		 0.32776287 0.30445641 0.36622795 0.51301128 0.38283515 0.23409609 0.59807587 0.20837426
		 0.67050654 0.2720364 0.36742982 0.54429901 0.37341779 0.64632869 0.41496503 0.48918194
		 0.6089794 0.48384002 0.66041827 0.54167902 0.65374213 0.64715016 0.4089404 0.64116788
		 0.61860728 0.64172918 0.62104636 0.69939965 0.58488661 0.10927833 0.38419646 0.29002634
		 0.61025238 0.26502323 0.40405473 0.54124254 0.62328339 0.53840429 0.40556103 0.69730544
		 0.83406085 0.078160197 0.84628624 0.17973796 0.12223701 0.16370162 0.33546054 0.13719638
		 0.34733221 0.2405912 0.13438088 0.26527274 0.58197016 0.05321978 0.63342142 0.20627356
		 0.6579926 0.50274861;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt[0:23]" -type "float3"  0.20871794 0.49999988 -0.2087182 
		0.20871794 0.34251964 -0.25882849 0.25882825 0.34251964 -0.2087182 -0.25882825 0.34251964 
		-0.2087182 -0.20871794 0.34251964 -0.25882849 -0.20871794 0.49999988 -0.2087182 0.25882825 
		0.027496099 -0.2087182 0.20871794 0.027496099 -0.25882849 0.20871794 -0.12998417 
		-0.2087182 -0.20871794 -0.12998417 -0.2087182 -0.20871794 0.027496099 -0.25882849 
		-0.25882825 0.027496099 -0.2087182 0.25882825 0.027496099 0.20871769 0.20871794 -0.12998417 
		0.20871769 0.20871794 0.027496099 0.25882825 -0.20871794 0.027496099 0.25882825 -0.20871794 
		-0.12998417 0.20871769 -0.25882825 0.027496099 0.20871769 0.25882825 0.34251964 0.20871769 
		0.20871794 0.34251964 0.25882825 0.20871794 0.49999988 0.20871769 -0.20871794 0.49999988 
		0.20871769 -0.20871794 0.34251964 0.25882825 -0.25882825 0.34251964 0.20871769;
	setAttr -s 24 ".vt[0:23]"  -0.40319777 -0.49999988 0.40319824 -0.40319777 -0.25002491 0.50000048
		 -0.5 -0.25002491 0.40319824 0.5 -0.25002491 0.40319824 0.40319777 -0.25002491 0.50000048
		 0.40319777 -0.49999988 0.40319824 -0.5 0.25002503 0.40319824 -0.40319777 0.25002503 0.50000048
		 -0.40319777 0.5 0.40319824 0.40319777 0.5 0.40319824 0.40319777 0.25002503 0.50000048
		 0.5 0.25002503 0.40319824 -0.5 0.25002503 -0.40319729 -0.40319777 0.5 -0.40319729
		 -0.40319777 0.25002503 -0.5 0.40319777 0.25002503 -0.5 0.40319777 0.5 -0.40319729
		 0.5 0.25002503 -0.40319729 -0.5 -0.25002491 -0.40319729 -0.40319777 -0.25002491 -0.5
		 -0.40319777 -0.49999988 -0.40319729 0.40319777 -0.49999988 -0.40319729 0.40319777 -0.25002491 -0.5
		 0.5 -0.25002491 -0.40319729;
	setAttr -s 48 ".ed[0:47]"  0 2 0 2 18 0 18 20 0 20 0 0 1 0 0 0 5 0 5 4 0
		 4 1 0 2 1 0 1 7 0 7 6 0 6 2 0 3 5 0 5 21 0 21 23 0 23 3 0 4 3 0 3 11 0 11 10 0 10 4 0
		 6 8 0 8 13 0 13 12 0 12 6 0 8 7 0 7 10 0 10 9 0 9 8 0 9 11 0 11 17 0 17 16 0 16 9 0
		 12 14 0 14 19 0 19 18 0 18 12 0 14 13 0 13 16 0 16 15 0 15 14 0 15 17 0 17 23 0 23 22 0
		 22 15 0 20 19 0 19 22 0 22 21 0 21 20 0;
	setAttr -s 26 -ch 96 ".fc[0:25]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 28
		f 4 4 5 6 7
		mu 0 4 4 3 35 23
		f 4 8 9 10 11
		mu 0 4 32 4 11 33
		f 4 12 13 14 15
		mu 0 4 5 6 22 7
		f 4 16 17 18 19
		mu 0 4 23 8 36 12
		f 4 20 21 22 23
		mu 0 4 9 24 16 10
		f 4 24 25 26 27
		mu 0 4 24 11 12 25
		f 4 28 29 30 31
		mu 0 4 25 13 37 17
		f 4 32 33 34 35
		mu 0 4 14 26 20 15
		f 4 36 37 38 39
		mu 0 4 26 16 17 27
		f 4 40 41 42 43
		mu 0 4 27 18 19 21
		f 4 44 45 46 47
		mu 0 4 28 20 21 22
		f 4 -8 -20 -26 -10
		mu 0 4 4 23 12 11
		f 4 -28 -32 -38 -22
		mu 0 4 24 25 17 16
		f 4 -40 -44 -46 -34
		mu 0 4 26 27 21 20
		f 4 -48 -14 -6 -4
		mu 0 4 28 22 6 0
		f 4 -16 -42 -30 -18
		mu 0 4 8 29 30 36
		f 4 -2 -12 -24 -36
		mu 0 4 31 32 33 34
		f 3 -5 -9 -1
		mu 0 3 3 4 32
		f 3 -17 -7 -13
		mu 0 3 8 23 35
		f 3 -11 -25 -21
		mu 0 3 33 11 24
		f 3 -27 -19 -29
		mu 0 3 25 12 36
		f 3 -23 -37 -33
		mu 0 3 10 16 26
		f 3 -39 -31 -41
		mu 0 3 27 17 37
		f 3 -35 -45 -3
		mu 0 3 15 20 28
		f 3 -47 -43 -15
		mu 0 3 22 21 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Stone_Corner_UV25" -p "Stone_Corners";
	rename -uid "5EC79001-49EC-87AA-CFBD-0F84E1412A8D";
	setAttr ".t" -type "double3" 0.059856653213500977 2.4830182269950245 -9.2949590682983398 ;
	setAttr ".s" -type "double3" 1.1726647624146347 1.2111798121458142 1.1726647624146347 ;
	setAttr ".sp" -type "double3" 0 -4.6629367034256575e-015 0 ;
createNode mesh -n "Stone_Corner_UV25Shape" -p "Stone_Corner_UV25";
	rename -uid "DB415600-47F7-0482-8508-20B600A9089F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.48789979517459869 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.40315843 0.91174799
		 0.34597653 0.91105062 0.34841052 0.69658822 0.36054614 0.078604899 0.37116751 0.13512561
		 0.67532176 0.91485906 0.61813986 0.9141621 0.67819691 0.70011657 0.62075096 0.10281292
		 0.32776287 0.30445641 0.36622795 0.51301128 0.38283515 0.23409609 0.59807587 0.20837426
		 0.67050654 0.2720364 0.36742982 0.54429901 0.37341779 0.64632869 0.41496503 0.48918194
		 0.6089794 0.48384002 0.66041827 0.54167902 0.65374213 0.64715016 0.4089404 0.64116788
		 0.61860728 0.64172918 0.62104636 0.69939965 0.58488661 0.10927833 0.38419646 0.29002634
		 0.61025238 0.26502323 0.40405473 0.54124254 0.62328339 0.53840429 0.40556103 0.69730544
		 0.83406085 0.078160197 0.84628624 0.17973796 0.12223701 0.16370162 0.33546054 0.13719638
		 0.34733221 0.2405912 0.13438088 0.26527274 0.58197016 0.05321978 0.63342142 0.20627356
		 0.6579926 0.50274861;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt[0:23]" -type "float3"  0.20871794 0.49999988 -0.2087182 
		0.20871794 0.34251964 -0.25882849 0.25882825 0.34251964 -0.2087182 -0.25882825 0.34251964 
		-0.2087182 -0.20871794 0.34251964 -0.25882849 -0.20871794 0.49999988 -0.2087182 0.25882825 
		0.027496099 -0.2087182 0.20871794 0.027496099 -0.25882849 0.20871794 -0.12998417 
		-0.2087182 -0.20871794 -0.12998417 -0.2087182 -0.20871794 0.027496099 -0.25882849 
		-0.25882825 0.027496099 -0.2087182 0.25882825 0.027496099 0.20871769 0.20871794 -0.12998417 
		0.20871769 0.20871794 0.027496099 0.25882825 -0.20871794 0.027496099 0.25882825 -0.20871794 
		-0.12998417 0.20871769 -0.25882825 0.027496099 0.20871769 0.25882825 0.34251964 0.20871769 
		0.20871794 0.34251964 0.25882825 0.20871794 0.49999988 0.20871769 -0.20871794 0.49999988 
		0.20871769 -0.20871794 0.34251964 0.25882825 -0.25882825 0.34251964 0.20871769;
	setAttr -s 24 ".vt[0:23]"  -0.40319777 -0.49999988 0.40319824 -0.40319777 -0.25002491 0.50000048
		 -0.5 -0.25002491 0.40319824 0.5 -0.25002491 0.40319824 0.40319777 -0.25002491 0.50000048
		 0.40319777 -0.49999988 0.40319824 -0.5 0.25002503 0.40319824 -0.40319777 0.25002503 0.50000048
		 -0.40319777 0.5 0.40319824 0.40319777 0.5 0.40319824 0.40319777 0.25002503 0.50000048
		 0.5 0.25002503 0.40319824 -0.5 0.25002503 -0.40319729 -0.40319777 0.5 -0.40319729
		 -0.40319777 0.25002503 -0.5 0.40319777 0.25002503 -0.5 0.40319777 0.5 -0.40319729
		 0.5 0.25002503 -0.40319729 -0.5 -0.25002491 -0.40319729 -0.40319777 -0.25002491 -0.5
		 -0.40319777 -0.49999988 -0.40319729 0.40319777 -0.49999988 -0.40319729 0.40319777 -0.25002491 -0.5
		 0.5 -0.25002491 -0.40319729;
	setAttr -s 48 ".ed[0:47]"  0 2 0 2 18 0 18 20 0 20 0 0 1 0 0 0 5 0 5 4 0
		 4 1 0 2 1 0 1 7 0 7 6 0 6 2 0 3 5 0 5 21 0 21 23 0 23 3 0 4 3 0 3 11 0 11 10 0 10 4 0
		 6 8 0 8 13 0 13 12 0 12 6 0 8 7 0 7 10 0 10 9 0 9 8 0 9 11 0 11 17 0 17 16 0 16 9 0
		 12 14 0 14 19 0 19 18 0 18 12 0 14 13 0 13 16 0 16 15 0 15 14 0 15 17 0 17 23 0 23 22 0
		 22 15 0 20 19 0 19 22 0 22 21 0 21 20 0;
	setAttr -s 26 -ch 96 ".fc[0:25]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 28
		f 4 4 5 6 7
		mu 0 4 4 3 35 23
		f 4 8 9 10 11
		mu 0 4 32 4 11 33
		f 4 12 13 14 15
		mu 0 4 5 6 22 7
		f 4 16 17 18 19
		mu 0 4 23 8 36 12
		f 4 20 21 22 23
		mu 0 4 9 24 16 10
		f 4 24 25 26 27
		mu 0 4 24 11 12 25
		f 4 28 29 30 31
		mu 0 4 25 13 37 17
		f 4 32 33 34 35
		mu 0 4 14 26 20 15
		f 4 36 37 38 39
		mu 0 4 26 16 17 27
		f 4 40 41 42 43
		mu 0 4 27 18 19 21
		f 4 44 45 46 47
		mu 0 4 28 20 21 22
		f 4 -8 -20 -26 -10
		mu 0 4 4 23 12 11
		f 4 -28 -32 -38 -22
		mu 0 4 24 25 17 16
		f 4 -40 -44 -46 -34
		mu 0 4 26 27 21 20
		f 4 -48 -14 -6 -4
		mu 0 4 28 22 6 0
		f 4 -16 -42 -30 -18
		mu 0 4 8 29 30 36
		f 4 -2 -12 -24 -36
		mu 0 4 31 32 33 34
		f 3 -5 -9 -1
		mu 0 3 3 4 32
		f 3 -17 -7 -13
		mu 0 3 8 23 35
		f 3 -11 -25 -21
		mu 0 3 33 11 24
		f 3 -27 -19 -29
		mu 0 3 25 12 36
		f 3 -23 -37 -33
		mu 0 3 10 16 26
		f 3 -39 -31 -41
		mu 0 3 27 17 37
		f 3 -35 -45 -3
		mu 0 3 15 20 28
		f 3 -47 -43 -15
		mu 0 3 22 21 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Stone_Corner_UV26" -p "Stone_Corners";
	rename -uid "65D25D1F-4B47-A9AC-1905-0F91564774DA";
	setAttr ".t" -type "double3" 0.059856653213500977 2.1313808648940129 -9.2949590682983398 ;
	setAttr ".s" -type "double3" 1.1454533550384749 1 1.1454533550384749 ;
	setAttr ".sp" -type "double3" 0 -4.6629367034256575e-015 0 ;
createNode mesh -n "Stone_Corner_UV26Shape" -p "Stone_Corner_UV26";
	rename -uid "35FF1BB7-4C92-5976-447B-C38180C65244";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.48789979517459869 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.40315843 0.91174799
		 0.34597653 0.91105062 0.34841052 0.69658822 0.36054614 0.078604899 0.37116751 0.13512561
		 0.67532176 0.91485906 0.61813986 0.9141621 0.67819691 0.70011657 0.62075096 0.10281292
		 0.32776287 0.30445641 0.36622795 0.51301128 0.38283515 0.23409609 0.59807587 0.20837426
		 0.67050654 0.2720364 0.36742982 0.54429901 0.37341779 0.64632869 0.41496503 0.48918194
		 0.6089794 0.48384002 0.66041827 0.54167902 0.65374213 0.64715016 0.4089404 0.64116788
		 0.61860728 0.64172918 0.62104636 0.69939965 0.58488661 0.10927833 0.38419646 0.29002634
		 0.61025238 0.26502323 0.40405473 0.54124254 0.62328339 0.53840429 0.40556103 0.69730544
		 0.83406085 0.078160197 0.84628624 0.17973796 0.12223701 0.16370162 0.33546054 0.13719638
		 0.34733221 0.2405912 0.13438088 0.26527274 0.58197016 0.05321978 0.63342142 0.20627356
		 0.6579926 0.50274861;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt[0:23]" -type "float3"  0.20871794 0.49999988 -0.2087182 
		0.20871794 0.34251964 -0.25882849 0.25882825 0.34251964 -0.2087182 -0.25882825 0.34251964 
		-0.2087182 -0.20871794 0.34251964 -0.25882849 -0.20871794 0.49999988 -0.2087182 0.25882825 
		0.027496099 -0.2087182 0.20871794 0.027496099 -0.25882849 0.20871794 -0.12998417 
		-0.2087182 -0.20871794 -0.12998417 -0.2087182 -0.20871794 0.027496099 -0.25882849 
		-0.25882825 0.027496099 -0.2087182 0.25882825 0.027496099 0.20871769 0.20871794 -0.12998417 
		0.20871769 0.20871794 0.027496099 0.25882825 -0.20871794 0.027496099 0.25882825 -0.20871794 
		-0.12998417 0.20871769 -0.25882825 0.027496099 0.20871769 0.25882825 0.34251964 0.20871769 
		0.20871794 0.34251964 0.25882825 0.20871794 0.49999988 0.20871769 -0.20871794 0.49999988 
		0.20871769 -0.20871794 0.34251964 0.25882825 -0.25882825 0.34251964 0.20871769;
	setAttr -s 24 ".vt[0:23]"  -0.40319777 -0.49999988 0.40319824 -0.40319777 -0.25002491 0.50000048
		 -0.5 -0.25002491 0.40319824 0.5 -0.25002491 0.40319824 0.40319777 -0.25002491 0.50000048
		 0.40319777 -0.49999988 0.40319824 -0.5 0.25002503 0.40319824 -0.40319777 0.25002503 0.50000048
		 -0.40319777 0.5 0.40319824 0.40319777 0.5 0.40319824 0.40319777 0.25002503 0.50000048
		 0.5 0.25002503 0.40319824 -0.5 0.25002503 -0.40319729 -0.40319777 0.5 -0.40319729
		 -0.40319777 0.25002503 -0.5 0.40319777 0.25002503 -0.5 0.40319777 0.5 -0.40319729
		 0.5 0.25002503 -0.40319729 -0.5 -0.25002491 -0.40319729 -0.40319777 -0.25002491 -0.5
		 -0.40319777 -0.49999988 -0.40319729 0.40319777 -0.49999988 -0.40319729 0.40319777 -0.25002491 -0.5
		 0.5 -0.25002491 -0.40319729;
	setAttr -s 48 ".ed[0:47]"  0 2 0 2 18 0 18 20 0 20 0 0 1 0 0 0 5 0 5 4 0
		 4 1 0 2 1 0 1 7 0 7 6 0 6 2 0 3 5 0 5 21 0 21 23 0 23 3 0 4 3 0 3 11 0 11 10 0 10 4 0
		 6 8 0 8 13 0 13 12 0 12 6 0 8 7 0 7 10 0 10 9 0 9 8 0 9 11 0 11 17 0 17 16 0 16 9 0
		 12 14 0 14 19 0 19 18 0 18 12 0 14 13 0 13 16 0 16 15 0 15 14 0 15 17 0 17 23 0 23 22 0
		 22 15 0 20 19 0 19 22 0 22 21 0 21 20 0;
	setAttr -s 26 -ch 96 ".fc[0:25]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 28
		f 4 4 5 6 7
		mu 0 4 4 3 35 23
		f 4 8 9 10 11
		mu 0 4 32 4 11 33
		f 4 12 13 14 15
		mu 0 4 5 6 22 7
		f 4 16 17 18 19
		mu 0 4 23 8 36 12
		f 4 20 21 22 23
		mu 0 4 9 24 16 10
		f 4 24 25 26 27
		mu 0 4 24 11 12 25
		f 4 28 29 30 31
		mu 0 4 25 13 37 17
		f 4 32 33 34 35
		mu 0 4 14 26 20 15
		f 4 36 37 38 39
		mu 0 4 26 16 17 27
		f 4 40 41 42 43
		mu 0 4 27 18 19 21
		f 4 44 45 46 47
		mu 0 4 28 20 21 22
		f 4 -8 -20 -26 -10
		mu 0 4 4 23 12 11
		f 4 -28 -32 -38 -22
		mu 0 4 24 25 17 16
		f 4 -40 -44 -46 -34
		mu 0 4 26 27 21 20
		f 4 -48 -14 -6 -4
		mu 0 4 28 22 6 0
		f 4 -16 -42 -30 -18
		mu 0 4 8 29 30 36
		f 4 -2 -12 -24 -36
		mu 0 4 31 32 33 34
		f 3 -5 -9 -1
		mu 0 3 3 4 32
		f 3 -17 -7 -13
		mu 0 3 8 23 35
		f 3 -11 -25 -21
		mu 0 3 33 11 24
		f 3 -27 -19 -29
		mu 0 3 25 12 36
		f 3 -23 -37 -33
		mu 0 3 10 16 26
		f 3 -39 -31 -41
		mu 0 3 27 17 37
		f 3 -35 -45 -3
		mu 0 3 15 20 28
		f 3 -47 -43 -15
		mu 0 3 22 21 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Stone_Corner_UV27" -p "Stone_Corners";
	rename -uid "95135C9F-47E8-928D-3C79-53B4E60F5D1F";
	setAttr ".t" -type "double3" 0.059856653213500977 1.7722592651950677 -9.2949590682983398 ;
	setAttr ".s" -type "double3" 1.3631827905822198 1 1.3631827905822198 ;
	setAttr ".sp" -type "double3" 0 -4.6629367034256575e-015 0 ;
createNode mesh -n "Stone_Corner_UV27Shape" -p "Stone_Corner_UV27";
	rename -uid "65944D3E-491D-D6B9-AC87-6D98512E2A7F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.48789979517459869 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.40315843 0.91174799
		 0.34597653 0.91105062 0.34841052 0.69658822 0.36054614 0.078604899 0.37116751 0.13512561
		 0.67532176 0.91485906 0.61813986 0.9141621 0.67819691 0.70011657 0.62075096 0.10281292
		 0.32776287 0.30445641 0.36622795 0.51301128 0.38283515 0.23409609 0.59807587 0.20837426
		 0.67050654 0.2720364 0.36742982 0.54429901 0.37341779 0.64632869 0.41496503 0.48918194
		 0.6089794 0.48384002 0.66041827 0.54167902 0.65374213 0.64715016 0.4089404 0.64116788
		 0.61860728 0.64172918 0.62104636 0.69939965 0.58488661 0.10927833 0.38419646 0.29002634
		 0.61025238 0.26502323 0.40405473 0.54124254 0.62328339 0.53840429 0.40556103 0.69730544
		 0.83406085 0.078160197 0.84628624 0.17973796 0.12223701 0.16370162 0.33546054 0.13719638
		 0.34733221 0.2405912 0.13438088 0.26527274 0.58197016 0.05321978 0.63342142 0.20627356
		 0.6579926 0.50274861;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt[0:23]" -type "float3"  0.20871794 0.49999988 -0.2087182 
		0.20871794 0.34251964 -0.25882849 0.25882825 0.34251964 -0.2087182 -0.25882825 0.34251964 
		-0.2087182 -0.20871794 0.34251964 -0.25882849 -0.20871794 0.49999988 -0.2087182 0.25882825 
		0.027496099 -0.2087182 0.20871794 0.027496099 -0.25882849 0.20871794 -0.12998417 
		-0.2087182 -0.20871794 -0.12998417 -0.2087182 -0.20871794 0.027496099 -0.25882849 
		-0.25882825 0.027496099 -0.2087182 0.25882825 0.027496099 0.20871769 0.20871794 -0.12998417 
		0.20871769 0.20871794 0.027496099 0.25882825 -0.20871794 0.027496099 0.25882825 -0.20871794 
		-0.12998417 0.20871769 -0.25882825 0.027496099 0.20871769 0.25882825 0.34251964 0.20871769 
		0.20871794 0.34251964 0.25882825 0.20871794 0.49999988 0.20871769 -0.20871794 0.49999988 
		0.20871769 -0.20871794 0.34251964 0.25882825 -0.25882825 0.34251964 0.20871769;
	setAttr -s 24 ".vt[0:23]"  -0.40319777 -0.49999988 0.40319824 -0.40319777 -0.25002491 0.50000048
		 -0.5 -0.25002491 0.40319824 0.5 -0.25002491 0.40319824 0.40319777 -0.25002491 0.50000048
		 0.40319777 -0.49999988 0.40319824 -0.5 0.25002503 0.40319824 -0.40319777 0.25002503 0.50000048
		 -0.40319777 0.5 0.40319824 0.40319777 0.5 0.40319824 0.40319777 0.25002503 0.50000048
		 0.5 0.25002503 0.40319824 -0.5 0.25002503 -0.40319729 -0.40319777 0.5 -0.40319729
		 -0.40319777 0.25002503 -0.5 0.40319777 0.25002503 -0.5 0.40319777 0.5 -0.40319729
		 0.5 0.25002503 -0.40319729 -0.5 -0.25002491 -0.40319729 -0.40319777 -0.25002491 -0.5
		 -0.40319777 -0.49999988 -0.40319729 0.40319777 -0.49999988 -0.40319729 0.40319777 -0.25002491 -0.5
		 0.5 -0.25002491 -0.40319729;
	setAttr -s 48 ".ed[0:47]"  0 2 0 2 18 0 18 20 0 20 0 0 1 0 0 0 5 0 5 4 0
		 4 1 0 2 1 0 1 7 0 7 6 0 6 2 0 3 5 0 5 21 0 21 23 0 23 3 0 4 3 0 3 11 0 11 10 0 10 4 0
		 6 8 0 8 13 0 13 12 0 12 6 0 8 7 0 7 10 0 10 9 0 9 8 0 9 11 0 11 17 0 17 16 0 16 9 0
		 12 14 0 14 19 0 19 18 0 18 12 0 14 13 0 13 16 0 16 15 0 15 14 0 15 17 0 17 23 0 23 22 0
		 22 15 0 20 19 0 19 22 0 22 21 0 21 20 0;
	setAttr -s 26 -ch 96 ".fc[0:25]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 28
		f 4 4 5 6 7
		mu 0 4 4 3 35 23
		f 4 8 9 10 11
		mu 0 4 32 4 11 33
		f 4 12 13 14 15
		mu 0 4 5 6 22 7
		f 4 16 17 18 19
		mu 0 4 23 8 36 12
		f 4 20 21 22 23
		mu 0 4 9 24 16 10
		f 4 24 25 26 27
		mu 0 4 24 11 12 25
		f 4 28 29 30 31
		mu 0 4 25 13 37 17
		f 4 32 33 34 35
		mu 0 4 14 26 20 15
		f 4 36 37 38 39
		mu 0 4 26 16 17 27
		f 4 40 41 42 43
		mu 0 4 27 18 19 21
		f 4 44 45 46 47
		mu 0 4 28 20 21 22
		f 4 -8 -20 -26 -10
		mu 0 4 4 23 12 11
		f 4 -28 -32 -38 -22
		mu 0 4 24 25 17 16
		f 4 -40 -44 -46 -34
		mu 0 4 26 27 21 20
		f 4 -48 -14 -6 -4
		mu 0 4 28 22 6 0
		f 4 -16 -42 -30 -18
		mu 0 4 8 29 30 36
		f 4 -2 -12 -24 -36
		mu 0 4 31 32 33 34
		f 3 -5 -9 -1
		mu 0 3 3 4 32
		f 3 -17 -7 -13
		mu 0 3 8 23 35
		f 3 -11 -25 -21
		mu 0 3 33 11 24
		f 3 -27 -19 -29
		mu 0 3 25 12 36
		f 3 -23 -37 -33
		mu 0 3 10 16 26
		f 3 -39 -31 -41
		mu 0 3 27 17 37
		f 3 -35 -45 -3
		mu 0 3 15 20 28
		f 3 -47 -43 -15
		mu 0 3 22 21 19;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Roof_Crossbar2" -p "|Entire_thing|Farm_House";
	rename -uid "B5F93FE7-4FEB-3914-5F7E-5697F80D2E77";
	setAttr ".t" -type "double3" -1.3541324182461967 2.9248795509338379 -9.2949590682983398 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".s" -type "double3" 0.24 0.24 8.3001238392825663 ;
createNode mesh -n "Roof_Crossbar2Shape" -p "Roof_Crossbar2";
	rename -uid "A2B7EF5A-4173-C548-C942-D99440F4C9B0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.75 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 0 0.012555702 0 0 0.012555702 
		0 0 -0.013391194 0 0 -0.013391194 0 0 0.027234523 0 0 0.027234523 0 0 0.00057348481 
		0 0 0.00057348481;
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
createNode transform -n "Roof_Crossbar3" -p "|Entire_thing|Farm_House";
	rename -uid "5FD32486-4362-4FCF-C5D7-04815CE8FE62";
	setAttr ".t" -type "double3" -1.3541324182461976 2.9248795509338366 3.0972878932952863 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".s" -type "double3" 0.24 0.24 8.3001238392825663 ;
createNode mesh -n "Roof_Crossbar3Shape" -p "Roof_Crossbar3";
	rename -uid "CCA77C90-438C-0E9C-AA8E-09B421F20737";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.75 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 0 0.012555702 0 0 0.012555702 
		0 0 -0.013391194 0 0 -0.013391194 0 0 0.027234523 0 0 0.027234523 0 0 0.00057348481 
		0 0 0.00057348481;
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
createNode transform -n "Roof_Post_Front_Small2" -p "|Entire_thing|Farm_House";
	rename -uid "4BEEA8DB-4381-DEF9-3675-C8AC2A68420B";
	setAttr ".t" -type "double3" 1.0915419260703394 4.486388509811472 -3.4803788661956765 ;
	setAttr ".r" -type "double3" 0 0 -40.843257985617896 ;
	setAttr ".s" -type "double3" 5.2398096956441345 0.24518504002228819 0.24518504002228819 ;
createNode mesh -n "Roof_Post_Front_Small2Shape" -p "Roof_Post_Front_Small2";
	rename -uid "C5614640-4E2D-2996-565F-82AC11D31C86";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[1]" -type "float3" 0.31952736 3.5527137e-015 0 ;
	setAttr ".pt[3]" -type "float3" 0.31952736 3.5527137e-015 0 ;
	setAttr ".pt[5]" -type "float3" 0.31952736 3.5527137e-015 0 ;
	setAttr ".pt[7]" -type "float3" 0.31952736 3.5527137e-015 0 ;
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
createNode transform -n "Roof_Post_Back_Small2" -p "|Entire_thing|Farm_House";
	rename -uid "E04B1DAA-4406-B6F4-412D-1EAF3B386C24";
	setAttr ".t" -type "double3" -3.537240377862287 4.5389440697553045 -3.4803788661956889 ;
	setAttr ".r" -type "double3" 0 0 32.331723169803325 ;
	setAttr ".s" -type "double3" 3.0393835493288681 0.24518504002228819 0.24518504002228819 ;
	setAttr ".rp" -type "double3" 0.83713135183498744 -2.3980817331903381e-014 1.1102230246251565e-014 ;
	setAttr ".rpt" -type "double3" -0.20383775403727544 0.54747430918128537 0 ;
	setAttr ".sp" -type "double3" 0.15976369380950928 0 0 ;
	setAttr ".spt" -type "double3" 0.67736765802547816 -2.3980817331903381e-014 1.1102230246251565e-014 ;
createNode mesh -n "Roof_Post_Back_Small2Shape" -p "Roof_Post_Back_Small2";
	rename -uid "2AAC0A39-4AA3-92B6-C3ED-BC82BD6D816C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.125 0 0.375 0 0.375 0.25 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt";
	setAttr ".pt[0]" -type "float3" 0.028744046 0.083320498 -4.8405724e-014 ;
	setAttr ".pt[2]" -type "float3" 0.014127351 0.066768266 -4.8405724e-014 ;
	setAttr ".pt[4]" -type "float3" 0.014127351 0.066768266 -4.5741189e-014 ;
	setAttr ".pt[6]" -type "float3" 0.028744046 0.083320498 -4.5741189e-014 ;
	setAttr ".pt[8]" -type "float3" 0.011136668 0.019436484 -2.6077032e-008 ;
	setAttr ".pt[9]" -type "float3" 0.011136661 0.019436462 2.9802322e-008 ;
	setAttr ".pt[10]" -type "float3" -0.011136657 -0.019436495 -3.3527613e-008 ;
	setAttr ".pt[11]" -type "float3" -0.011136664 -0.019436562 2.9802322e-008 ;
	setAttr -s 12 ".vt[0:11]"  -0.49999997 -0.5 0.5 0.81952751 -0.49999809 0.5
		 -0.49999991 0.5 0.5 0.81952745 0.5 0.5 -0.49999991 0.5 -0.5 0.81952745 0.5 -0.5 -0.49999997 -0.5 -0.5
		 0.81952751 -0.49999809 -0.5 -1.40859795 -4.68057823 -0.5 -1.40859795 -4.68057823 0.5
		 -1.40859795 -3.68057823 0.5 -1.40859795 -3.68057823 -0.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 1 1 3 0 2 4 1
		 3 5 0 4 6 1 5 7 0 6 0 1 7 1 0 6 8 0 0 9 0 8 9 0 2 10 0 9 10 0 4 11 0 10 11 0 11 8 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
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
		f 4 14 16 18 19
		mu 0 4 14 15 16 17
		f 4 10 13 -15 -13
		mu 0 4 12 0 15 14
		f 4 4 15 -17 -14
		mu 0 4 0 2 16 15
		f 4 6 17 -19 -16
		mu 0 4 2 13 17 16
		f 4 8 12 -20 -18
		mu 0 4 13 12 14 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape1" -p "Roof_Post_Back_Small2";
	rename -uid "EA5DD95E-4B03-E06C-E0E7-0FBCE73DE0DA";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt";
	setAttr ".pt[1]" -type "float3" 0.31952736 3.5527137e-015 0 ;
	setAttr ".pt[3]" -type "float3" 0.31952736 3.5527137e-015 0 ;
	setAttr ".pt[5]" -type "float3" 0.31952736 3.5527137e-015 0 ;
	setAttr ".pt[7]" -type "float3" 0.31952736 3.5527137e-015 0 ;
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
	rename -uid "1598DC96-4F82-FD2C-4007-898AD10E6C7E";
	setAttr -s 6 ".lnk";
	setAttr -s 6 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "67A424AB-48B3-12C0-E27E-BC9454685F29";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "742345FA-4160-88E7-1443-E9A7C7143DE2";
createNode displayLayerManager -n "layerManager";
	rename -uid "B9DA990E-4E16-8033-4FDA-16A47855F4C6";
createNode displayLayer -n "defaultLayer";
	rename -uid "11E99169-4D85-6EFD-72E8-59A634C83F01";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "63E74681-4025-CD3F-4980-D887A6F0DE00";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "C8263C63-4D0B-0FBA-CE2F-C397ACA5486D";
	setAttr ".g" yes;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "CB132036-4C39-0D4E-29A1-17844A69C3B0";
	setAttr ".r" 0.5;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCube -n "polyCube1";
	rename -uid "F8E0B199-4499-EC92-BE74-8EB8F173D9AB";
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing1";
	rename -uid "7107C06F-4314-DC0E-3F3D-ECAB90B077AA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 2.9248791548716722 0 0 0 0 2.9248791548716722 0 0 0 0 2.9248791548716722 0
		 0 1.4624395774358361 0 1;
	setAttr ".wt" 0.78366070985794067;
	setAttr ".dr" no;
	setAttr ".re" 2;
	setAttr ".sma" 0;
	setAttr ".div" 8;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak1";
	rename -uid "A49FCDB9-4749-0988-4AF0-2B83D85B294E";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[0:7]" -type "float3"  -0.85332406 0 0.55894566 0.85332406
		 0 0.55894566 -0.85332406 0 0.55894566 0.85332406 0 0.55894566 -0.85332406 0 -0.55894566
		 0.85332406 0 -0.55894566 -0.85332406 0 -0.55894566 0.85332406 0 -0.55894566;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "17EB66BC-4228-63C8-FD46-D6B1086930EC";
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 2.9248791548716722 0 0 0 0 2.9248791548716722 0 0 0 0 2.9248791548716722 0
		 0 1.4624395774358361 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.85633785 1.4624395 -3.0972881 ;
	setAttr ".rs" 49396;
	setAttr ".lt" -type "double3" 4.4408920985006262e-016 -3.1416388597162238e-016 6.1916063990826604 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -3.958309320220522 0 -3.097288074857885 ;
	setAttr ".cbx" -type "double3" 2.245633574683064 2.9248791548716722 -3.097288074857885 ;
createNode polySplitRing -n "polySplitRing2";
	rename -uid "6BDC3C9A-416E-3E77-A643-75ADA335D7D1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[6:7]" "e[10:11]" "e[16]" "e[19]";
	setAttr ".ix" -type "matrix" 2.9248791548716722 0 0 0 0 2.9248791548716722 0 0 0 0 2.9248791548716722 0
		 0 1.4624395774358361 0 1;
	setAttr ".wt" 0.51687735319137573;
	setAttr ".re" 7;
	setAttr ".sma" 0;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak2";
	rename -uid "F60F6AA1-4BDC-84B0-2233-A8855490AD7F";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[0]" -type "float3" -0.63061923 0 0 ;
	setAttr ".tk[2]" -type "float3" -0.63061923 0 0 ;
	setAttr ".tk[4]" -type "float3" -0.63061923 0 0 ;
	setAttr ".tk[6]" -type "float3" -0.63061923 0 0 ;
	setAttr ".tk[8]" -type "float3" -0.7473051 0 0 ;
	setAttr ".tk[9]" -type "float3" -0.7473051 0 0 ;
	setAttr ".tk[10]" -type "float3" -0.7473051 0 0 ;
	setAttr ".tk[11]" -type "float3" -0.7473051 0 0 ;
	setAttr ".tk[12]" -type "float3" -0.63061923 0 0 ;
	setAttr ".tk[13]" -type "float3" -0.7473051 0 0 ;
	setAttr ".tk[14]" -type "float3" -0.7473051 0 0 ;
	setAttr ".tk[15]" -type "float3" -0.63061923 0 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "DFB9BEC6-4771-FB24-818A-9EA0B7C4F92D";
	setAttr ".ics" -type "componentList" 1 "f[25]";
	setAttr ".ix" -type "matrix" 2.9248791548716722 0 0 0 0 2.9248791548716722 0 0 0 0 2.9248791548716722 0
		 0 1.4624395774358361 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.9583094 1.4624395 1.2671757 ;
	setAttr ".rs" 63462;
	setAttr ".lt" -type "double3" -1.4237525551067899e-016 -1.7810441832001112e-016 
		0.35879885233532693 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 3.958309320220522 0 0.23474629330058677 ;
	setAttr ".cbx" -type "double3" 3.958309320220522 2.9248791548716722 2.2996049808164463 ;
createNode polyTweak -n "polyTweak3";
	rename -uid "0792FB94-491C-DE39-8DF1-A6861996918E";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[16:27]" -type "float3"  0 0 0.43324026 0 0 0.43324026
		 0 0 0.43324026 0 0 0.43324026 0 0 0.43324026 0 0 0.43324026 0 0 0.43324026 0 0 0.43324026
		 0 0 0.43324026 0 0 0.43324026 0 0 0.43324026 0 0 0.43324026;
createNode polySplitRing -n "polySplitRing3";
	rename -uid "4810CC38-49EB-8470-EA0F-AB8A1449C96A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[33]" "e[35]" "e[37]" "e[40:41]" "e[43]" "e[56]" "e[59]";
	setAttr ".ix" -type "matrix" 2.9248791548716722 0 0 0 0 2.9248791548716722 0 0 0 0 2.9248791548716722 0
		 0 1.4624395774358361 0 1;
	setAttr ".wt" 0.50565195083618164;
	setAttr ".re" 59;
	setAttr ".sma" 0;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "3602D2E2-4FF1-6134-B0C6-EBBE0C366463";
	setAttr ".dc" -type "componentList" 5 "f[1]" "f[9:10]" "f[14:15]" "f[20:21]" "f[29:32]";
createNode deleteComponent -n "deleteComponent2";
	rename -uid "4C80916F-4256-E84D-7BC6-1E8FCD5D4880";
	setAttr ".dc" -type "componentList" 6 "f[2]" "f[6]" "f[9]" "f[12:13]" "f[16:17]" "f[23:24]";
createNode polyExtrudeEdge -n "polyExtrudeEdge1";
	rename -uid "5668EF8B-4AAF-6B16-D9E3-7AB8113242FC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[36]" "e[40]";
	setAttr ".ix" -type "matrix" 2.9248791548716722 0 0 0 0 2.9248791548716722 0 0 0 0 2.9248791548716722 0
		 0 1.4624395774358361 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 4.1377087 2.9248791 1.2671757 ;
	setAttr ".rs" 48056;
	setAttr ".lt" -type "double3" 0 1.1744437106474623 -0.79577356633849261 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 3.958309320220522 2.9248791548716722 0.23474629330058677 ;
	setAttr ".cbx" -type "double3" 4.3171082407669887 2.9248791548716722 2.2996049808164463 ;
createNode polyTweak -n "polyTweak4";
	rename -uid "B998796F-4016-D588-52FF-D08993F72E68";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[28]" -type "float3" 0 0.40163916 0 ;
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "0A8ED60A-4B1F-FDD6-8456-8986FEA0C79B";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[39]" -type "float2" -0.0091637941 0.093699053 ;
	setAttr ".uvtk[40]" -type "float2" 0.0033007083 0.093321674 ;
	setAttr ".uvtk[43]" -type "float2" -0.0033007083 0.093321681 ;
	setAttr ".uvtk[44]" -type "float2" 0.0091637764 0.093699053 ;
createNode polyMergeVert -n "polyMergeVert1";
	rename -uid "8E72B8B6-43E9-E6B1-224A-ED97FFD8CAE2";
	setAttr ".ics" -type "componentList" 1 "vtx[33:36]";
	setAttr ".ix" -type "matrix" 2.9248791548716722 0 0 0 0 2.9248791548716722 0 0 0 0 2.9248791548716722 0
		 0 1.4624395774358361 0 1;
	setAttr ".d" 1e-006;
createNode polyTweak -n "polyTweak5";
	rename -uid "51F4A600-4BDB-A109-7F5E-CEA82598514D";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[33:36]" -type "float3"  0 0 -0.080911279 0 0 -0.080911279
		 0 0 0.080911279 0 0 0.080911279;
createNode polyMergeVert -n "polyMergeVert2";
	rename -uid "FFD43986-45CA-8B7B-EFAF-70A3A5D7041D";
	setAttr ".ics" -type "componentList" 2 "vtx[28]" "vtx[34]";
	setAttr ".ix" -type "matrix" 2.9248791548716722 0 0 0 0 2.9248791548716722 0 0 0 0 2.9248791548716722 0
		 0 1.4624395774358361 0 1;
	setAttr ".d" 1e-006;
createNode polyTweak -n "polyTweak6";
	rename -uid "FA4944DE-4107-F43D-CFD8-4EB4C0E4AD19";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[28]" -type "float3" 0 -5.1677227e-005 0 ;
	setAttr ".tk[34]" -type "float3" 0 5.1677227e-005 0 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge2";
	rename -uid "D037D0C0-4C1B-C2B5-F142-3681BBA761CE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[51]" "e[53]";
	setAttr ".ix" -type "matrix" 2.9248791548716722 0 0 0 0 2.9248791548716722 0 0 0 0 2.9248791548716722 0
		 0 1.4624395774358361 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.9583094 3.5121388 1.2671757 ;
	setAttr ".rs" 46829;
	setAttr ".lt" -type "double3" 6.6709078534621844e-016 1.9153102503447634 3.7374576318204e-016 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 3.958309320220522 2.9248791548716722 0.23474629330058677 ;
	setAttr ".cbx" -type "double3" 3.958309320220522 4.0993987089941255 2.2996049808164463 ;
createNode polyTweak -n "polyTweak7";
	rename -uid "B58EF883-4561-E311-7238-1FB6855D1971";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[28]" -type "float3" 0 -2.5847461e-005 0 ;
	setAttr ".tk[33]" -type "float3" 0 2.5852098e-005 0 ;
createNode polySplitRing -n "polySplitRing4";
	rename -uid "795FDEB7-426B-62EE-41C2-7EB5D4C481B0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 14 "e[2:3]" "e[6:7]" "e[12]" "e[15]" "e[20]" "e[23]" "e[27]" "e[29]" "e[32]" "e[34]" "e[37]" "e[41]" "e[46]" "e[50]";
	setAttr ".ix" -type "matrix" 2.9248791548716722 0 0 0 0 2.9248791548716722 0 0 0 0 2.9248791548716722 0
		 0 1.4624395774358361 0 1;
	setAttr ".wt" 0.94632905721664429;
	setAttr ".re" 20;
	setAttr ".sma" 0;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode deleteComponent -n "deleteComponent3";
	rename -uid "08CF7FEC-4E44-9C1B-844E-28905D43EE09";
	setAttr ".dc" -type "componentList" 1 "f[37]";
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "7BC9738B-4AE5-1820-444F-9A9251052085";
	setAttr ".ics" -type "componentList" 1 "f[36]";
	setAttr ".ix" -type "matrix" 2.9248791548716722 0 0 0 0 2.9248791548716722 0 0 0 0 2.9248791548716722 0
		 0 1.4624395774358361 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.009083 0.078490511 -3.0972881 ;
	setAttr ".rs" 34922;
	setAttr ".lt" -type "double3" -1.7763568394002505e-015 4.5173163478918723e-017 6.2037358845283332 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.059856653751947875 0 -3.097288074857885 ;
	setAttr ".cbx" -type "double3" 3.958309320220522 0.15698102176934725 -3.097288074857885 ;
createNode deleteComponent -n "deleteComponent4";
	rename -uid "C16AB3C6-4E45-FEA9-32E4-A8BA949DA47C";
	setAttr ".dc" -type "componentList" 1 "f[40]";
createNode deleteComponent -n "deleteComponent5";
	rename -uid "D5E97603-40DB-4973-56A2-52A8BFEE5716";
	setAttr ".dc" -type "componentList" 1 "f[39]";
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "795EFD8A-4128-B546-2AFC-3E9CFFDCFA32";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[17]" -type "float2" -2.6690989e-006 -0.00022591805 ;
	setAttr ".uvtk[52]" -type "float2" -8.6510443e-007 -3.2269677e-006 ;
	setAttr ".uvtk[70]" -type "float2" -0.003704271 0.00011327265 ;
	setAttr ".uvtk[73]" -type "float2" -0.0041495878 -0.00022299965 ;
createNode polyMergeVert -n "polyMergeVert3";
	rename -uid "E315352A-45E5-CBDE-E9FE-7783C271AD3A";
	setAttr ".ics" -type "componentList" 4 "vtx[13]" "vtx[36]" "vtx[53]" "vtx[55]";
	setAttr ".ix" -type "matrix" 2.9248791548716722 0 0 0 0 2.9248791548716722 0 0 0 0 2.9248791548716722 0
		 0 1.4624395774358361 0 1;
	setAttr ".d" 1e-006;
createNode polyTweak -n "polyTweak8";
	rename -uid "ECF729BC-465A-086E-2CF1-708B3AF6C4F1";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[53]" -type "float3" 0 0 0.0041468143 ;
	setAttr ".tk[55]" -type "float3" 0 0 0.0041468143 ;
createNode polyCube -n "polyCube2";
	rename -uid "EFDA6B5D-4CB8-F57B-B674-46A3F150D953";
	setAttr ".cuv" 4;
createNode deleteComponent -n "deleteComponent6";
	rename -uid "0E5B8A3C-4DC1-373E-0C3B-58965857ED6D";
	setAttr ".dc" -type "componentList" 2 "f[0]" "f[2:5]";
createNode polyExtrudeEdge -n "polyExtrudeEdge3";
	rename -uid "4A28EFB9-4A8D-C8BC-9AA1-40B29D91424D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 3.1806166210044049 -3.0723062547852797 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.30432504 6.2644153 -3.0723062 ;
	setAttr ".rs" 62756;
	setAttr ".lt" -type "double3" -6.2163961282050497e-016 -1.3322676295501878e-015 
		-7.4781716857158518 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.30432504415512085 6.2644152679312848 -10.537850955407839 ;
	setAttr ".cbx" -type "double3" -0.30432504415512085 6.2644152679312848 4.3932384458372784 ;
createNode polyTweak -n "polyTweak9";
	rename -uid "9E98AF85-4758-398D-31A5-90AA01EDDEBE";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[0:3]" -type "float3"  0.19567496 2.58379865 6.9655447
		 3.81351256 -2.52007937 6.9655447 0.19567496 2.58379865 -6.9655447 3.81351256 -2.52007937
		 -6.9655447;
createNode polySplitRing -n "polySplitRing5";
	rename -uid "126AFBA3-4014-1B9F-260D-6C8B8ABA6BEF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[2:3]" "e[6]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 3.1806166210044049 -3.0723062547852797 1;
	setAttr ".wt" 0.5003896951675415;
	setAttr ".dr" no;
	setAttr ".re" 3;
	setAttr ".sma" 0;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak10";
	rename -uid "1F97D80D-4B4D-E019-43F6-6FBC4705F379";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[0:5]" -type "float3"  -0.70896202 0 0 0 0.5103687
		 0 -0.70896202 0 0 0 0.5103687 0 -0.533943 0.42372257 0 -0.533943 0.42372257 0;
createNode polySplitRing -n "polySplitRing6";
	rename -uid "A625AF8A-4F4F-F556-1BB7-E7BCEAF0FF7E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[0:1]" "e[9]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 3.1806166210044049 -3.0723062547852797 1;
	setAttr ".wt" 0.72332370281219482;
	setAttr ".dr" no;
	setAttr ".re" 1;
	setAttr ".sma" 0;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode deleteComponent -n "deleteComponent7";
	rename -uid "679DC6E4-4341-739D-5273-BAA0604E9728";
	setAttr ".dc" -type "componentList" 1 "f[2]";
createNode polySplitRing -n "polySplitRing7";
	rename -uid "4BBDF6DA-49AE-7B3F-0CEC-2AAFA067E345";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[12:13]" "e[73]";
	setAttr ".ix" -type "matrix" 2.9248791548716722 0 0 0 0 2.9248791548716722 0 0 0 0 2.9248791548716722 0
		 0 1.4624395774358361 0 1;
	setAttr ".wt" 0.70768493413925171;
	setAttr ".dr" no;
	setAttr ".re" 13;
	setAttr ".sma" 0;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak11";
	rename -uid "9FA7988A-45B5-32B8-5D54-7CABFDDF8E8B";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk";
	setAttr ".tk[3]" -type "float3" -1.4901161e-008 0 0 ;
	setAttr ".tk[5]" -type "float3" -1.4901161e-008 0 0 ;
	setAttr ".tk[11]" -type "float3" 0 0 -0.0020733657 ;
	setAttr ".tk[12]" -type "float3" 0 0 -0.0020733657 ;
	setAttr ".tk[13]" -type "float3" 0 0 -0.0020733657 ;
	setAttr ".tk[14]" -type "float3" 0 0 -0.0020733657 ;
	setAttr ".tk[15]" -type "float3" -1.4901161e-008 0 0 ;
	setAttr ".tk[19]" -type "float3" -1.4901161e-008 0 0 ;
	setAttr ".tk[33]" -type "float3" -0.2604585 0 0 ;
	setAttr ".tk[34]" -type "float3" -0.2604585 0 0 ;
	setAttr ".tk[35]" -type "float3" -0.2604585 0 0 ;
	setAttr ".tk[36]" -type "float3" -3.7252903e-009 0 -0.0020733657 ;
	setAttr ".tk[37]" -type "float3" 0 0 -0.0020733657 ;
	setAttr ".tk[51]" -type "float3" -3.7252903e-009 2.9802322e-008 0 ;
	setAttr ".tk[52]" -type "float3" 0 0 0.0020733657 ;
	setAttr ".tk[53]" -type "float3" 0 0 0.0020733657 ;
createNode polySplitRing -n "polySplitRing8";
	rename -uid "8D25A95A-4E91-1A01-84BD-CA95A4D1FE0E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 16 "e[6:7]" "e[11]" "e[18]" "e[21]" "e[25]" "e[30]" "e[44]" "e[68]" "e[70]" "e[72]" "e[74]" "e[76]" "e[78]" "e[80]" "e[82]" "e[95]";
	setAttr ".ix" -type "matrix" 2.9248791548716722 0 0 0 0 2.9248791548716722 0 0 0 0 2.9248791548716722 0
		 0 1.4624395774358361 0 1;
	setAttr ".wt" 0.62340050935745239;
	setAttr ".dr" no;
	setAttr ".re" 72;
	setAttr ".sma" 0;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing9";
	rename -uid "6982C9A2-4984-E0E9-3F6A-B693054382EA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[10]" "e[86]" "e[89]" "e[92]" "e[120]";
	setAttr ".ix" -type "matrix" 2.9248791548716722 0 0 0 0 2.9248791548716722 0 0 0 0 2.9248791548716722 0
		 0 1.4624395774358361 0 1;
	setAttr ".wt" 0.70148736238479614;
	setAttr ".dr" no;
	setAttr ".re" 10;
	setAttr ".sma" 0;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode deleteComponent -n "deleteComponent8";
	rename -uid "0BEC29EA-4DB1-19BE-CBD7-51AD73063387";
	setAttr ".dc" -type "componentList" 2 "f[52]" "f[57]";
createNode polyExtrudeEdge -n "polyExtrudeEdge4";
	rename -uid "49924C27-45A4-AA9D-8227-01A49DE31AF5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[50]" "e[53]";
	setAttr ".ix" -type "matrix" 2.9248791548716722 0 0 0 0 2.9248791548716722 0 0 0 0 2.9248791548716722 0
		 0 1.4624395774358361 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.6197493 2.9248791 1.2671757 ;
	setAttr ".rs" 34688;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.2811892749520897 2.9248791548716722 0.23474629330058677 ;
	setAttr ".cbx" -type "double3" 3.958309320220522 2.9248791548716722 2.2996049808164463 ;
createNode polyTweak -n "polyTweak12";
	rename -uid "2B99FFE1-45B9-9ED0-3EF9-E1A44FD0B5D1";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[3]" -type "float3" -0.19406594 -0.18500595 0 ;
	setAttr ".tk[5]" -type "float3" -0.19406594 -0.18500595 0 ;
createNode polyTweakUV -n "polyTweakUV3";
	rename -uid "87AC1FD5-4DD5-626E-0C35-299752C933DA";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[94]" -type "float2" -1.6834976e-005 -2.5489167e-006 ;
	setAttr ".uvtk[103]" -type "float2" -0.066655718 -0.001783562 ;
createNode polyMergeVert -n "polyMergeVert4";
	rename -uid "5AEDF024-4B03-A06C-BF21-BBBA5C35AF42";
	setAttr ".ics" -type "componentList" 2 "vtx[73]" "vtx[79]";
	setAttr ".ix" -type "matrix" 2.9248791548716722 0 0 0 0 2.9248791548716722 0 0 0 0 2.9248791548716722 0
		 0 1.4624395774358361 0 1;
	setAttr ".d" 1e-006;
createNode polyTweak -n "polyTweak13";
	rename -uid "B6AF6A8A-4C2D-1EDD-E658-B483974C2C57";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[79]" -type "float3" 2.2351742e-008 -0.35638702 0 ;
	setAttr ".tk[80]" -type "float3" 0 -0.35687673 0 ;
	setAttr ".tk[81]" -type "float3" -0.079358667 -0.35687673 0 ;
	setAttr ".tk[82]" -type "float3" 0 -0.35687673 0 ;
createNode polyTweakUV -n "polyTweakUV4";
	rename -uid "3DA09838-4838-641A-8880-52936D062683";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[90]" -type "float2" 9.5021488e-007 -2.5483585e-006 ;
	setAttr ".uvtk[106]" -type "float2" 0.066655718 -0.001783562 ;
createNode polyMergeVert -n "polyMergeVert5";
	rename -uid "BCBE0CAF-4E5A-4B85-A563-94BD422B379A";
	setAttr ".ics" -type "componentList" 2 "vtx[69]" "vtx[80]";
	setAttr ".ix" -type "matrix" 2.9248791548716722 0 0 0 0 2.9248791548716722 0 0 0 0 2.9248791548716722 0
		 0 1.4624395774358361 0 1;
	setAttr ".d" 1e-006;
createNode polyTweak -n "polyTweak14";
	rename -uid "ED86DF33-4DD4-B4A9-9CE2-8BB25DD75B82";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[80]" -type "float3" 0.079358697 0.00048971176 0 ;
createNode polyTweak -n "polyTweak15";
	rename -uid "068E2374-40B5-E91C-E990-BCAF184E6D21";
	setAttr ".uopa" yes;
	setAttr -s 21 ".tk";
	setAttr ".tk[2]" -type "float3" 0.32019815 0 0 ;
	setAttr ".tk[4]" -type "float3" 0.32019815 0 0 ;
	setAttr ".tk[11]" -type "float3" 0.32019815 0 0 ;
	setAttr ".tk[16]" -type "float3" 0.32019815 0 0 ;
	setAttr ".tk[20]" -type "float3" 0.32019815 0 0 ;
	setAttr ".tk[28]" -type "float3" 0.32019815 0 0 ;
	setAttr ".tk[47]" -type "float3" 0 -0.02308972 0 ;
	setAttr ".tk[70]" -type "float3" 0 0.30762616 0 ;
	setAttr ".tk[71]" -type "float3" 0 0.058765914 0 ;
	setAttr ".tk[72]" -type "float3" 0 0.30762616 0 ;
createNode deleteComponent -n "deleteComponent9";
	rename -uid "34125565-4744-AAA4-ABDC-15985BBF3E6E";
	setAttr ".dc" -type "componentList" 2 "f[13]" "f[16]";
createNode polyCube -n "polyCube3";
	rename -uid "E92A7ECA-4A4C-0F84-D84D-2C8986334087";
	setAttr ".cuv" 4;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "B82A5B93-400A-E3B8-3532-B3B173E016EA";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n"
		+ "            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 546\n            -height 337\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 546\n            -height 337\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n"
		+ "            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 546\n            -height 337\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
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
		+ "                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n"
		+ "                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n"
		+ "                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n"
		+ "                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1099\\n    -height 718\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1099\\n    -height 718\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "D968D485-4540-A5D0-A0A3-4897A9399A9F";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "34C6FC20-4871-AEDB-0332-95B68DC02ABB";
	setAttr ".ics" -type "componentList" 3 "f[11]" "f[15]" "f[30:31]";
	setAttr ".ix" -type "matrix" 2.9248791548716722 0 0 0 0 2.9248791548716722 0 0 0 0 2.9248791548716722 0
		 0 1.4624395774358361 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 4.3171082 1.4051547 1.2671757 ;
	setAttr ".rs" 32978;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 4.3171082407669887 0 0.23474629330058677 ;
	setAttr ".cbx" -type "double3" 4.3171082407669887 2.8103093808447106 2.2996049808164463 ;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "F5EE3DC8-455C-D7D3-10B8-52BB9CDDF477";
	setAttr ".ics" -type "componentList" 4 "f[11]" "f[15]" "f[30:31]" "f[65:66]";
	setAttr ".ix" -type "matrix" 2.9248791548716722 0 0 0 0 2.9248791548716722 0 0 0 0 2.9248791548716722 0
		 0 1.4624395774358361 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 4.3171082 1.343918 1.2671757 ;
	setAttr ".rs" 37740;
	setAttr ".lt" -type "double3" 1.8537110086222269e-016 -2.0226606892430306e-017 -0.16516277923163525 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 4.3171082407669887 0 0.23474629330058677 ;
	setAttr ".cbx" -type "double3" 4.3171082407669887 2.6878358925563806 2.2996049808164463 ;
createNode polyTweak -n "polyTweak16";
	rename -uid "B38F017B-40C1-DF9A-6AAF-E99C2745A394";
	setAttr ".uopa" yes;
	setAttr -s 14 ".tk";
	setAttr ".tk[79]" -type "float3" 0 0.037195079 -0.03076598 ;
	setAttr ".tk[80]" -type "float3" 0 -0.041037176 -0.03076598 ;
	setAttr ".tk[81]" -type "float3" 0 0.037329078 -1.3558143e-009 ;
	setAttr ".tk[82]" -type "float3" 0 -0.041873038 -1.3558143e-009 ;
	setAttr ".tk[83]" -type "float3" 0 0.037195079 0.030765979 ;
	setAttr ".tk[84]" -type "float3" 0 -0.041037176 0.030765979 ;
	setAttr ".tk[85]" -type "float3" 0 0.041873038 -0.03076598 ;
	setAttr ".tk[86]" -type "float3" 0 0.041873038 -1.3558143e-009 ;
	setAttr ".tk[87]" -type "float3" 0 0.041873038 0.030765979 ;
createNode deleteComponent -n "deleteComponent10";
	rename -uid "72EA4CD1-4C58-A609-2946-56BBFA316C4B";
	setAttr ".dc" -type "componentList" 2 "f[74]" "f[76]";
createNode deleteComponent -n "deleteComponent11";
	rename -uid "E2A5BB09-4FBD-C373-8534-62B3E75CC5A3";
	setAttr ".dc" -type "componentList" 1 "f[65:66]";
createNode polyTweak -n "polyTweak17";
	rename -uid "025BAAF8-4EC9-B7A2-18AE-498B66BA6746";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk";
	setAttr ".tk[83]" -type "float3" 0 -0.041415054 0 ;
	setAttr ".tk[84]" -type "float3" 0 -0.041415054 0 ;
	setAttr ".tk[91]" -type "float3" 0 -0.041415058 0 ;
	setAttr ".tk[92]" -type "float3" 0 -0.041415058 0 ;
	setAttr ".tk[93]" -type "float3" 0 -0.041415058 0 ;
createNode deleteComponent -n "deleteComponent12";
	rename -uid "86C9ECD2-4C7B-6333-7B34-3E9334BEE2E1";
	setAttr ".dc" -type "componentList" 1 "f[72:73]";
createNode polySplitRing -n "polySplitRing10";
	rename -uid "2208E0FB-4D06-C6FB-A16B-7FA2305119D7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[2:3]" "e[6]" "e[14]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 3.1806166210044049 -3.0723062547852797 1;
	setAttr ".wt" 0.57945132255554199;
	setAttr ".re" 3;
	setAttr ".sma" 0;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing11";
	rename -uid "3842AB8A-44E6-85A4-8273-ED8F304AFD10";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[2:3]" "e[6]" "e[16]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 3.1806166210044049 -3.0723062547852797 1;
	setAttr ".wt" 0.50514936447143555;
	setAttr ".dr" no;
	setAttr ".re" 3;
	setAttr ".sma" 0;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode deleteComponent -n "deleteComponent13";
	rename -uid "8E832D4C-4195-1AC5-FE7B-55A343B04460";
	setAttr ".dc" -type "componentList" 1 "f[8]";
createNode polyTweak -n "polyTweak18";
	rename -uid "CBA2979F-4F4B-F8D3-AB40-6F8A3874922F";
	setAttr ".uopa" yes;
	setAttr -s 31 ".tk";
	setAttr ".tk[15]" -type "float3" 0 0 -0.11201277 ;
	setAttr ".tk[18]" -type "float3" 0 0 -0.11201277 ;
	setAttr ".tk[25]" -type "float3" 0 0 -0.11201277 ;
	setAttr ".tk[26]" -type "float3" 0 0 -0.11201277 ;
	setAttr ".tk[27]" -type "float3" 0 0.058440786 -0.05193273 ;
	setAttr ".tk[30]" -type "float3" 0 0.058440786 -0.05193273 ;
	setAttr ".tk[32]" -type "float3" 0 0.058440786 -0.05193273 ;
	setAttr ".tk[33]" -type "float3" 0 0 -0.11201277 ;
	setAttr ".tk[45]" -type "float3" 0 0 -0.11201277 ;
	setAttr ".tk[46]" -type "float3" 0 0 -0.11201277 ;
	setAttr ".tk[66]" -type "float3" 0 0 -0.11201277 ;
	setAttr ".tk[67]" -type "float3" 0 0 -0.11201277 ;
	setAttr ".tk[68]" -type "float3" 0 0 -0.05193273 ;
	setAttr ".tk[77]" -type "float3" 0 0 -0.11201277 ;
	setAttr ".tk[78]" -type "float3" 0 -0.036493354 -0.063554652 ;
	setAttr ".tk[79]" -type "float3" 0 0 -0.063554652 ;
	setAttr ".tk[80]" -type "float3" 0 0 -0.05193273 ;
	setAttr ".tk[81]" -type "float3" 0 -0.036493354 -0.04845814 ;
	setAttr ".tk[82]" -type "float3" 0 0 -0.04845814 ;
	setAttr ".tk[83]" -type "float3" 0 -0.00045803189 -0.063554652 ;
	setAttr ".tk[84]" -type "float3" 0 -0.00045803189 -0.04845814 ;
	setAttr ".tk[85]" -type "float3" 0 -0.036493354 -0.063554652 ;
	setAttr ".tk[86]" -type "float3" 0 0 -0.063554652 ;
	setAttr ".tk[87]" -type "float3" 0 -0.036493354 -0.05193273 ;
	setAttr ".tk[88]" -type "float3" 0 0 -0.05193273 ;
	setAttr ".tk[89]" -type "float3" 0 -0.036493354 -0.04845814 ;
	setAttr ".tk[90]" -type "float3" 0 0 -0.04845814 ;
	setAttr ".tk[91]" -type "float3" 0 -0.00045803189 -0.063554652 ;
	setAttr ".tk[92]" -type "float3" 0 -0.00045803189 -0.05193273 ;
	setAttr ".tk[93]" -type "float3" 0 -0.00045803189 -0.04845814 ;
createNode deleteComponent -n "deleteComponent14";
	rename -uid "2F365386-45D7-AEAB-BD46-0E998DC780AA";
	setAttr ".dc" -type "componentList" 2 "f[36]" "f[56]";
createNode deleteComponent -n "deleteComponent15";
	rename -uid "E6E85122-47A9-4F80-3799-63B11EB2E3D5";
	setAttr ".dc" -type "componentList" 1 "f[55]";
createNode polyExtrudeEdge -n "polyExtrudeEdge5";
	rename -uid "44309830-42DD-97F3-E8DA-D1A598A02DC8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[75]" "e[123]";
	setAttr ".ix" -type "matrix" 2.9248791548716722 0 0 0 0 2.9248791548716722 0 0 0 0 2.9248791548716722 0
		 0 1.4624395774358361 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.3764405 0.15698102 -6.1961236 ;
	setAttr ".rs" 42684;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.7945719483797626 0.15698102176934725 -9.2949590440453296 ;
	setAttr ".cbx" -type "double3" 3.958309320220522 0.15698102176934725 -3.097288074857885 ;
createNode polyMergeVert -n "polyMergeVert6";
	rename -uid "A9E6F21A-476E-3751-9E13-21B7917ACB51";
	setAttr ".ics" -type "componentList" 2 "vtx[73]" "vtx[94]";
	setAttr ".ix" -type "matrix" 2.9248791548716722 0 0 0 0 2.9248791548716722 0 0 0 0 2.9248791548716722 0
		 0 1.4624395774358361 0 1;
	setAttr ".d" 1e-006;
createNode polyTweak -n "polyTweak19";
	rename -uid "0B6BF292-45C4-3794-69DF-008F31CBED9C";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[92]" -type "float3" 0 -0.053670943 0 ;
	setAttr ".tk[93]" -type "float3" 0 -0.053670943 0 ;
	setAttr ".tk[94]" -type "float3" 0 -0.053670943 0 ;
createNode polyMergeVert -n "polyMergeVert7";
	rename -uid "355FAF45-4877-87F9-AF35-54B0DC5BFF29";
	setAttr ".ics" -type "componentList" 2 "vtx[7]" "vtx[92]";
	setAttr ".ix" -type "matrix" 2.9248791548716722 0 0 0 0 2.9248791548716722 0 0 0 0 2.9248791548716722 0
		 0 1.4624395774358361 0 1;
	setAttr ".d" 1e-006;
createNode polyExtrudeEdge -n "polyExtrudeEdge6";
	rename -uid "75CC6488-4265-A434-716C-4C9DEBDD11EA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[15]";
	setAttr ".ix" -type "matrix" 2.9248791548716722 0 0 0 0 2.9248791548716722 0 0 0 0 2.9248791548716722 0
		 0 1.4624395774358361 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.059856653 2.9248798 -6.1961236 ;
	setAttr ".rs" 47696;
	setAttr ".lt" -type "double3" -2.8094965845151271e-016 -4.4408920985006262e-016 
		2.7347152228878993 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.059856653751947875 2.9248796778808215 -9.2949590440453296 ;
	setAttr ".cbx" -type "double3" 0.059856653751947875 2.9248796778808215 -3.097288074857885 ;
createNode polyTweak -n "polyTweak20";
	rename -uid "749E3FDE-431E-9C18-AEED-7E90FD3C1120";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk";
	setAttr ".tk[8]" -type "float3" 0 1.7881393e-007 0 ;
	setAttr ".tk[9]" -type "float3" -0.36174768 1.110223e-016 0 ;
	setAttr ".tk[10]" -type "float3" -0.36174768 1.0697407 0 ;
	setAttr ".tk[12]" -type "float3" 0 1.7881393e-007 0 ;
	setAttr ".tk[41]" -type "float3" -0.36174768 0 0 ;
	setAttr ".tk[54]" -type "float3" -0.36174768 0 0 ;
	setAttr ".tk[73]" -type "float3" 0 -4.4703484e-008 0 ;
	setAttr ".tk[92]" -type "float3" 0 -4.4703484e-008 0 ;
createNode polyMergeVert -n "polyMergeVert8";
	rename -uid "D687D3CD-410E-116D-F15D-078369E7AB28";
	setAttr ".ics" -type "componentList" 2 "vtx[69]" "vtx[93]";
	setAttr ".ix" -type "matrix" 2.9248791548716722 0 0 0 0 2.9248791548716722 0 0 0 0 2.9248791548716722 0
		 0 1.4624395774358361 0 1;
	setAttr ".d" 1e-006;
createNode polyExtrudeEdge -n "polyExtrudeEdge7";
	rename -uid "397CFA04-42F3-6779-292D-76A57E4C7DCD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[16]" "e[164]";
	setAttr ".ix" -type "matrix" 2.9248791548716722 0 0 0 0 2.9248791548716722 0 0 0 0 2.9248791548716722 0
		 0 1.4624395774358361 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.0358405 2.9248793 -9.2949591 ;
	setAttr ".rs" 52805;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -4.8662532030775862 2.9248791548716722 -9.2949590440453296 ;
	setAttr ".cbx" -type "double3" 2.7945721227161457 2.9248795035444379 -9.2949590440453296 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge8";
	rename -uid "C1FEB7D9-4175-C98B-9525-C6B5864BFC1C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[168]" "e[170]";
	setAttr ".ix" -type "matrix" 2.9248791548716722 0 0 0 0 2.9248791548716722 0 0 0 0 2.9248791548716722 0
		 0 1.4624395774358361 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.0358406 4.0223842 -9.2949591 ;
	setAttr ".rs" 51232;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -3.4412035497117111 4.0223840427600521 -9.2949590440453296 ;
	setAttr ".cbx" -type "double3" 1.3695222950138872 4.0223843914328175 -9.2949590440453296 ;
createNode polyTweak -n "polyTweak21";
	rename -uid "C0F5A56A-4C38-CC73-1332-28BEB32A49A2";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[69]" -type "float3" 5.9604645e-008 5.9604645e-008 0 ;
	setAttr ".tk[93]" -type "float3" 0 -5.9604645e-008 0 ;
	setAttr ".tk[94]" -type "float3" 0.48721665 0.37523085 0 ;
	setAttr ".tk[95]" -type "float3" -0.13936889 0.37523085 0 ;
	setAttr ".tk[96]" -type "float3" -0.48721665 0.37523085 0 ;
createNode polyDelEdge -n "polyDelEdge1";
	rename -uid "181CA9EC-40AE-291E-AD45-68882BACE4BB";
	setAttr ".ics" -type "componentList" 2 "e[168]" "e[170]";
	setAttr ".cv" yes;
createNode polyTweak -n "polyTweak22";
	rename -uid "0EB49030-4C0A-2032-7ABF-1F8B54AA7F0A";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[97]" -type "float3" 0.41142288 0.39514959 0 ;
	setAttr ".tk[98]" -type "float3" -0.21368131 0.7282058 0 ;
	setAttr ".tk[99]" -type "float3" -0.30027908 0.28007159 0 ;
createNode polyDelEdge -n "polyDelEdge2";
	rename -uid "D16CD528-4518-C8E8-AC5C-1990B74EC77D";
	setAttr ".ics" -type "componentList" 1 "e[168]";
	setAttr ".cv" yes;
createNode polyTweak -n "polyTweak23";
	rename -uid "5135B83E-47C7-BF09-B2B6-13848ABF932F";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[94]" -type "float3" -0.20932524 -0.20193751 0 ;
createNode polyTweak -n "polyTweak24";
	rename -uid "B910BCC9-4436-A944-5268-5BA6A6BC1AD9";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[95]" -type "float3" -0.49509487 0.37475765 0 ;
createNode deleteComponent -n "deleteComponent16";
	rename -uid "764E9108-41E3-BC24-CD4F-689F8AD653C8";
	setAttr ".dc" -type "componentList" 1 "vtx[94]";
createNode polyTweak -n "polyTweak25";
	rename -uid "DDD17D96-462B-E8CE-EB02-B5B8F47319A3";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[94]" -type "float3" -0.015626663 0.090823427 0 ;
createNode deleteComponent -n "deleteComponent17";
	rename -uid "65F60B76-4166-E8D3-CA25-1C97356058CA";
	setAttr ".dc" -type "componentList" 1 "f[41:45]";
createNode polySplitRing -n "polySplitRing12";
	rename -uid "D10F366D-403E-2A63-912B-639F760D37B0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[4:5]" "e[10]" "e[21]" "e[27]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 3.1806166210044049 -3.0723062547852797 1;
	setAttr ".wt" 0.53652501106262207;
	setAttr ".re" 10;
	setAttr ".sma" 0;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak26";
	rename -uid "17FE9791-469C-AA81-10C4-A8BC31F047D2";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[8]" -type "float3" 0.23077524 -0.19900657 0 ;
	setAttr ".tk[9]" -type "float3" 0.23077524 -0.19900657 0 ;
	setAttr ".tk[10]" -type "float3" 0.23077524 -0.19900657 0 ;
	setAttr ".tk[12]" -type "float3" 0.23077524 -0.19900657 0 ;
	setAttr ".tk[16]" -type "float3" 0.23077524 -0.19900657 0 ;
createNode polySoftEdge -n "polySoftEdge1";
	rename -uid "8375C30D-4CA1-03A4-2165-38A60822CB4D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 2.9248791548716722 0 0 0 0 2.9248791548716722 0 0 0 0 2.9248791548716722 0
		 0 1.4624395774358361 0 1;
	setAttr ".a" 0;
createNode polyTweak -n "polyTweak27";
	rename -uid "F02535A6-485E-B302-35F8-F89B4BFA2E30";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk";
	setAttr ".tk[0]" -type "float3" -0.10951063 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.1145179 0.35409981 0 ;
	setAttr ".tk[5]" -type "float3" -0.10951063 0 0 ;
	setAttr ".tk[10]" -type "float3" 0.1145179 0.35409981 0 ;
	setAttr ".tk[13]" -type "float3" -0.10951063 0 0 ;
	setAttr ".tk[15]" -type "float3" -0.10951063 0 0 ;
	setAttr ".tk[18]" -type "float3" -0.10951063 0 0 ;
	setAttr ".tk[25]" -type "float3" -0.10951063 0 0 ;
	setAttr ".tk[31]" -type "float3" -0.10951063 0 0 ;
	setAttr ".tk[32]" -type "float3" -0.10951063 0 0 ;
	setAttr ".tk[33]" -type "float3" -0.10951063 0 0 ;
	setAttr ".tk[34]" -type "float3" -0.10951063 0 0 ;
	setAttr ".tk[35]" -type "float3" -0.10951063 0 0 ;
	setAttr ".tk[36]" -type "float3" -0.10951063 0 0 ;
	setAttr ".tk[51]" -type "float3" -0.10951063 0 0 ;
	setAttr ".tk[52]" -type "float3" -0.10951063 0 0 ;
	setAttr ".tk[53]" -type "float3" -0.10951063 0 0 ;
	setAttr ".tk[54]" -type "float3" -0.10951063 0 0 ;
	setAttr ".tk[55]" -type "float3" -0.10951063 0 0 ;
	setAttr ".tk[56]" -type "float3" -0.10951063 0 0 ;
createNode polySoftEdge -n "polySoftEdge2";
	rename -uid "FD8BC120-40FA-99B5-4D1D-DB99FF1E7C53";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -1.0132870674133301 6.0481656378568296 -3.1532133080875555 1;
	setAttr ".a" 0;
createNode polyTweak -n "polyTweak28";
	rename -uid "CF04553E-4AC7-30AD-B159-C3B4929BDAF9";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[0:7]" -type "float3"  0.22864828 0.22864828 7.67002821
		 -0.22864828 0.22864828 7.67002821 0.22864828 -0.22864828 7.85492277 -0.22864828 -0.22864828
		 7.85492277 0.22864828 -0.22864828 -7.85492277 -0.22864828 -0.22864828 -7.85492277
		 0.22864828 0.22864828 -7.67002821 -0.22864828 0.22864828 -7.67002821;
createNode polySoftEdge -n "polySoftEdge3";
	rename -uid "4351DFA0-496E-A1BC-3F06-08B644F02B38";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 3.1806166210044049 -3.0723062547852797 1;
	setAttr ".a" 0;
createNode polyTweak -n "polyTweak29";
	rename -uid "5EBB238E-4B24-5752-79DE-ACAEF08DC53B";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk";
	setAttr ".tk[19]" -type "float3" -0.65854365 0.26446527 0 ;
	setAttr ".tk[20]" -type "float3" -0.65854365 0.26446527 0 ;
	setAttr ".tk[21]" -type "float3" -0.65854365 0.26446527 0 ;
	setAttr ".tk[22]" -type "float3" -0.65854365 0.26446527 0 ;
	setAttr ".tk[23]" -type "float3" -0.65854365 0.26446527 0 ;
createNode polyCube -n "polyCube4";
	rename -uid "8D3FEAE9-403E-5DB6-6EEA-139D3BAA9368";
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "4833A8CE-439F-4B4C-AC56-DFA5557E6595";
	setAttr ".ics" -type "componentList" 1 "f[5]";
	setAttr ".ix" -type "matrix" 2.5681752945143166 1.6255239206413579 0 0 -0.13112992851055064 0.2071729849655812 0 0
		 0 0 0.24518504002228819 0 -3.3142479514665073 4.8267186729991884 4.393238544464122 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -4.5983357 4.0139565 4.3932385 ;
	setAttr ".rs" 52910;
	setAttr ".lt" -type "double3" 1.0250139557298414 -1.1376604228929544e-014 2.7615784913794146 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -4.6639005629789407 3.9103702201957189 4.2706460244529776 ;
	setAttr ".cbx" -type "double3" -4.53277063446839 4.1175432051612999 4.5158310644752664 ;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	rename -uid "3AE3845C-4BF1-4FF1-D606-C392E0D658A1";
	setAttr ".ics" -type "componentList" 1 "f[16:19]";
	setAttr ".ix" -type "matrix" 2.9248791548716722 0 0 0 0 2.9248791548716722 0 0 0 0 2.9248791548716722 0
		 0 1.4624395774358361 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.7991488 3.597605 1.1033638 ;
	setAttr ".rs" 42688;
	setAttr ".lt" -type "double3" -8.8817841970012523e-016 -2.9143354396410359e-016 
		0.14629436941737084 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.2811892749520897 2.9248791548716722 -0.09287751193456853 ;
	setAttr ".cbx" -type "double3" 4.3171082407669887 4.2703309998160144 2.2996049808164463 ;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	rename -uid "99B48D55-4A08-85EF-B7B9-C29BF935DF46";
	setAttr ".ics" -type "componentList" 2 "f[68:71]" "f[73:74]";
	setAttr ".ix" -type "matrix" 2.9248791548716722 0 0 0 0 2.9248791548716722 0 0 0 0 2.9248791548716722 0
		 0 1.4624395774358361 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.7991488 3.6462061 1.1038444 ;
	setAttr ".rs" 55928;
	setAttr ".lt" -type "double3" -8.8817841970012523e-016 -2.6367796834847468e-016 
		0.22787686043634178 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.2811892749520897 2.9248791548716722 -0.20172785403528076 ;
	setAttr ".cbx" -type "double3" 4.3171082407669887 4.3675332961966307 2.4094166791093685 ;
createNode polySoftEdge -n "polySoftEdge4";
	rename -uid "C71DAFA4-41D5-4D57-25F0-49B5BE82C2C1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 2.9248791548716722 0 0 0 0 2.9248791548716722 0 0 0 0 2.9248791548716722 0
		 0 1.4624395774358361 0 1;
	setAttr ".a" 0;
createNode polyTweak -n "polyTweak30";
	rename -uid "2B460C5E-40C1-599F-C64E-6FAD2186A34B";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk";
	setAttr ".tk[24]" -type "float3" 0 -0.049878381 0 ;
	setAttr ".tk[92]" -type "float3" 0 0.0083919549 0 ;
	setAttr ".tk[93]" -type "float3" 0 -0.008391723 0 ;
	setAttr ".tk[96]" -type "float3" 0 0.0083917817 0 ;
	setAttr ".tk[99]" -type "float3" 0.045728765 0 0 ;
	setAttr ".tk[101]" -type "float3" 0 0 -9.3132257e-010 ;
	setAttr ".tk[102]" -type "float3" 0.045728765 0 0 ;
	setAttr ".tk[103]" -type "float3" 0 -0.049878381 0 ;
	setAttr ".tk[104]" -type "float3" 0 0.0083919549 0 ;
	setAttr ".tk[105]" -type "float3" 0.045728765 0 0 ;
	setAttr ".tk[107]" -type "float3" 0.045728765 0 0 ;
createNode deleteComponent -n "deleteComponent18";
	rename -uid "F4DCA583-4287-5A59-23FC-88BB2FAEC061";
	setAttr ".dc" -type "componentList" 4 "f[72]" "f[75]" "f[86]" "f[88]";
createNode polyExtrudeFace -n "polyExtrudeFace9";
	rename -uid "F3F62D16-4A64-5439-36E9-92963820EBF8";
	setAttr ".ics" -type "componentList" 1 "f[0:13]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 3.1806166210044049 -3.0723062547852797 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.035032 3.9676607 -3.0723064 ;
	setAttr ".rs" 33500;
	setAttr ".lt" -type "double3" 2.9143354396410359e-016 -1.2240156928923129e-017 -0.078170880145835314 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -6.3835768699645996 1.6709059514868878 -10.537851432244997 ;
	setAttr ".cbx" -type "double3" 4.3135128021240234 6.2644152679312848 4.3932384458372784 ;
createNode polyNormal -n "polyNormal1";
	rename -uid "76B42DE7-440F-B166-C2F6-E8A093EAA097";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".unm" no;
createNode deleteComponent -n "deleteComponent19";
	rename -uid "EDB5CC13-44C2-CC66-9F5A-4E9512738D14";
	setAttr ".dc" -type "componentList" 1 "f[6:9]";
createNode polyCube -n "polyCube5";
	rename -uid "5A118CFC-49FD-7713-E720-62A41AD1A63E";
	setAttr ".cuv" 4;
createNode lambert -n "Roof1";
	rename -uid "B0C01990-4B23-084B-1971-F6952604FD86";
	setAttr ".c" -type "float3" 0.5 0.47707883 0.20199999 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "B2CB15C6-4FFF-6A18-1DD6-5CA537E14B80";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "78B722C4-4C4E-8422-CE7A-C78F8DE6AABD";
createNode lambert -n "FarmHouse";
	rename -uid "95B67EF0-4D0A-EC40-C292-33BD2AA0706F";
	setAttr ".c" -type "float3" 0.68699998 0.68699998 0.68699998 ;
createNode shadingEngine -n "lambert3SG";
	rename -uid "DFED56B6-45C1-AC4A-E95B-4BA581F79F14";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
createNode materialInfo -n "materialInfo2";
	rename -uid "7D183308-464A-F76E-F687-DE8396E034C6";
createNode lambert -n "Wood";
	rename -uid "C646722D-4F2B-4553-723D-C6A6F6DF1A5A";
	setAttr ".c" -type "float3" 0.223 0.16554232 0.087192997 ;
createNode shadingEngine -n "lambert4SG";
	rename -uid "B094E926-4CF3-3747-F06F-2EB33685953F";
	setAttr ".ihi" 0;
	setAttr -s 22 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "382F61E8-4843-886E-D638-0192F1D99580";
createNode groupId -n "groupId1";
	rename -uid "C5E3BCE4-4D6D-CFA1-C8F6-5AAC398FF519";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "AE9F1413-4365-7754-E476-E8B85906A2CF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[0:15]" "f[20:67]";
	setAttr ".irc" -type "componentList" 2 "f[16:19]" "f[68:85]";
createNode groupId -n "groupId2";
	rename -uid "9F3CD628-47BC-E849-B38D-E594804F23B7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	rename -uid "CE81E271-41A2-A381-40BE-638FB53D2503";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "A6AA5371-4CFA-7257-231B-AB9DFF184C5D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 2 "f[16:19]" "f[68:85]";
createNode polyCube -n "polyCube6";
	rename -uid "BB001D00-4E46-65FD-96E6-668863FDFF41";
	setAttr ".cuv" 4;
createNode deleteComponent -n "deleteComponent20";
	rename -uid "06CA8D04-428F-587E-3AD7-3CA20D45ECE5";
	setAttr ".dc" -type "componentList" 1 "f[3]";
createNode polyBevel3 -n "polyBevel1";
	rename -uid "4E8D99EE-403C-AA8C-C8C8-5B8E5406BA52";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.43801735615620341 0 0 0 0 1 0 0 0 12.172223464728336 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyCube -n "polyCube7";
	rename -uid "2552E1C7-4BC0-0FD0-189B-14BA11390D6A";
	setAttr ".cuv" 4;
createNode lambert -n "dirt";
	rename -uid "6C2AC0EC-42D7-84AA-4456-B8AEC89DB52B";
	setAttr ".c" -type "float3" 0.1069 0.083800003 0.0524 ;
createNode shadingEngine -n "lambert5SG";
	rename -uid "E0A4EFDE-48B1-091A-2763-D5932872A1A7";
	setAttr ".ihi" 0;
	setAttr -s 9 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "E494BD2E-4560-6671-2345-2BBCF1CD604D";
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
	setAttr -s 6 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 8 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 29 ".dsm";
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
connectAttr "polyCylinder1.out" "Person_ScaleShape.i";
connectAttr "polyBevel1.out" "Dirt_MoundShape.i";
connectAttr "polyCube7.out" "Fence_PostShape.i";
connectAttr "groupId1.id" "Farm_HouseShape.iog.og[0].gid";
connectAttr "lambert3SG.mwc" "Farm_HouseShape.iog.og[0].gco";
connectAttr "groupId3.id" "Farm_HouseShape.iog.og[1].gid";
connectAttr "lambert4SG.mwc" "Farm_HouseShape.iog.og[1].gco";
connectAttr "groupParts2.og" "Farm_HouseShape.i";
connectAttr "polyTweakUV4.uvtk[0]" "Farm_HouseShape.uvst[0].uvtw";
connectAttr "groupId2.id" "Farm_HouseShape.ciog.cog[0].cgid";
connectAttr "deleteComponent19.og" "RoofShape.i";
connectAttr "polySoftEdge2.out" "Roof_Post_TopShape.i";
connectAttr "polyCube4.out" "Roof_Post_Front_SmallShape.i";
connectAttr "polyExtrudeFace6.out" "Roof_Post_Back_SmallShape.i";
connectAttr "polyCube5.out" "Roof_Support_PillarShape.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert5SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyTweak1.out" "polySplitRing1.ip";
connectAttr "Farm_HouseShape.wm" "polySplitRing1.mp";
connectAttr "polyCube1.out" "polyTweak1.ip";
connectAttr "polySplitRing1.out" "polyExtrudeFace1.ip";
connectAttr "Farm_HouseShape.wm" "polyExtrudeFace1.mp";
connectAttr "polyTweak2.out" "polySplitRing2.ip";
connectAttr "Farm_HouseShape.wm" "polySplitRing2.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polyExtrudeFace2.ip";
connectAttr "Farm_HouseShape.wm" "polyExtrudeFace2.mp";
connectAttr "polySplitRing2.out" "polyTweak3.ip";
connectAttr "polyExtrudeFace2.out" "polySplitRing3.ip";
connectAttr "Farm_HouseShape.wm" "polySplitRing3.mp";
connectAttr "polySplitRing3.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "polyTweak4.out" "polyExtrudeEdge1.ip";
connectAttr "Farm_HouseShape.wm" "polyExtrudeEdge1.mp";
connectAttr "deleteComponent2.og" "polyTweak4.ip";
connectAttr "polyExtrudeEdge1.out" "polyTweakUV1.ip";
connectAttr "polyTweak5.out" "polyMergeVert1.ip";
connectAttr "Farm_HouseShape.wm" "polyMergeVert1.mp";
connectAttr "polyTweakUV1.out" "polyTweak5.ip";
connectAttr "polyTweak6.out" "polyMergeVert2.ip";
connectAttr "Farm_HouseShape.wm" "polyMergeVert2.mp";
connectAttr "polyMergeVert1.out" "polyTweak6.ip";
connectAttr "polyTweak7.out" "polyExtrudeEdge2.ip";
connectAttr "Farm_HouseShape.wm" "polyExtrudeEdge2.mp";
connectAttr "polyMergeVert2.out" "polyTweak7.ip";
connectAttr "polyExtrudeEdge2.out" "polySplitRing4.ip";
connectAttr "Farm_HouseShape.wm" "polySplitRing4.mp";
connectAttr "polySplitRing4.out" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "polyExtrudeFace3.ip";
connectAttr "Farm_HouseShape.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace3.out" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "polyTweakUV2.ip";
connectAttr "polyTweak8.out" "polyMergeVert3.ip";
connectAttr "Farm_HouseShape.wm" "polyMergeVert3.mp";
connectAttr "polyTweakUV2.out" "polyTweak8.ip";
connectAttr "polyCube2.out" "deleteComponent6.ig";
connectAttr "polyTweak9.out" "polyExtrudeEdge3.ip";
connectAttr "RoofShape.wm" "polyExtrudeEdge3.mp";
connectAttr "deleteComponent6.og" "polyTweak9.ip";
connectAttr "polyTweak10.out" "polySplitRing5.ip";
connectAttr "RoofShape.wm" "polySplitRing5.mp";
connectAttr "polyExtrudeEdge3.out" "polyTweak10.ip";
connectAttr "polySplitRing5.out" "polySplitRing6.ip";
connectAttr "RoofShape.wm" "polySplitRing6.mp";
connectAttr "polySplitRing6.out" "deleteComponent7.ig";
connectAttr "polyTweak11.out" "polySplitRing7.ip";
connectAttr "Farm_HouseShape.wm" "polySplitRing7.mp";
connectAttr "polyMergeVert3.out" "polyTweak11.ip";
connectAttr "polySplitRing7.out" "polySplitRing8.ip";
connectAttr "Farm_HouseShape.wm" "polySplitRing8.mp";
connectAttr "polySplitRing8.out" "polySplitRing9.ip";
connectAttr "Farm_HouseShape.wm" "polySplitRing9.mp";
connectAttr "polySplitRing9.out" "deleteComponent8.ig";
connectAttr "polyTweak12.out" "polyExtrudeEdge4.ip";
connectAttr "Farm_HouseShape.wm" "polyExtrudeEdge4.mp";
connectAttr "deleteComponent8.og" "polyTweak12.ip";
connectAttr "polyExtrudeEdge4.out" "polyTweakUV3.ip";
connectAttr "polyTweak13.out" "polyMergeVert4.ip";
connectAttr "Farm_HouseShape.wm" "polyMergeVert4.mp";
connectAttr "polyTweakUV3.out" "polyTweak13.ip";
connectAttr "polyMergeVert4.out" "polyTweakUV4.ip";
connectAttr "polyTweak14.out" "polyMergeVert5.ip";
connectAttr "Farm_HouseShape.wm" "polyMergeVert5.mp";
connectAttr "polyTweakUV4.out" "polyTweak14.ip";
connectAttr "polyMergeVert5.out" "polyTweak15.ip";
connectAttr "polyTweak15.out" "deleteComponent9.ig";
connectAttr "deleteComponent9.og" "polyExtrudeFace4.ip";
connectAttr "Farm_HouseShape.wm" "polyExtrudeFace4.mp";
connectAttr "polyTweak16.out" "polyExtrudeFace5.ip";
connectAttr "Farm_HouseShape.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak16.ip";
connectAttr "polyExtrudeFace5.out" "deleteComponent10.ig";
connectAttr "deleteComponent10.og" "deleteComponent11.ig";
connectAttr "deleteComponent11.og" "polyTweak17.ip";
connectAttr "polyTweak17.out" "deleteComponent12.ig";
connectAttr "deleteComponent7.og" "polySplitRing10.ip";
connectAttr "RoofShape.wm" "polySplitRing10.mp";
connectAttr "polySplitRing10.out" "polySplitRing11.ip";
connectAttr "RoofShape.wm" "polySplitRing11.mp";
connectAttr "polySplitRing11.out" "deleteComponent13.ig";
connectAttr "deleteComponent12.og" "polyTweak18.ip";
connectAttr "polyTweak18.out" "deleteComponent14.ig";
connectAttr "deleteComponent14.og" "deleteComponent15.ig";
connectAttr "deleteComponent15.og" "polyExtrudeEdge5.ip";
connectAttr "Farm_HouseShape.wm" "polyExtrudeEdge5.mp";
connectAttr "polyTweak19.out" "polyMergeVert6.ip";
connectAttr "Farm_HouseShape.wm" "polyMergeVert6.mp";
connectAttr "polyExtrudeEdge5.out" "polyTweak19.ip";
connectAttr "polyMergeVert6.out" "polyMergeVert7.ip";
connectAttr "Farm_HouseShape.wm" "polyMergeVert7.mp";
connectAttr "polyTweak20.out" "polyExtrudeEdge6.ip";
connectAttr "Farm_HouseShape.wm" "polyExtrudeEdge6.mp";
connectAttr "polyMergeVert7.out" "polyTweak20.ip";
connectAttr "polyExtrudeEdge6.out" "polyMergeVert8.ip";
connectAttr "Farm_HouseShape.wm" "polyMergeVert8.mp";
connectAttr "polyMergeVert8.out" "polyExtrudeEdge7.ip";
connectAttr "Farm_HouseShape.wm" "polyExtrudeEdge7.mp";
connectAttr "polyTweak21.out" "polyExtrudeEdge8.ip";
connectAttr "Farm_HouseShape.wm" "polyExtrudeEdge8.mp";
connectAttr "polyExtrudeEdge7.out" "polyTweak21.ip";
connectAttr "polyTweak22.out" "polyDelEdge1.ip";
connectAttr "polyExtrudeEdge8.out" "polyTweak22.ip";
connectAttr "polyTweak23.out" "polyDelEdge2.ip";
connectAttr "polyDelEdge1.out" "polyTweak23.ip";
connectAttr "polyDelEdge2.out" "polyTweak24.ip";
connectAttr "polyTweak24.out" "deleteComponent16.ig";
connectAttr "deleteComponent16.og" "polyTweak25.ip";
connectAttr "polyTweak25.out" "deleteComponent17.ig";
connectAttr "polyTweak26.out" "polySplitRing12.ip";
connectAttr "RoofShape.wm" "polySplitRing12.mp";
connectAttr "deleteComponent13.og" "polyTweak26.ip";
connectAttr "polyTweak27.out" "polySoftEdge1.ip";
connectAttr "Farm_HouseShape.wm" "polySoftEdge1.mp";
connectAttr "deleteComponent17.og" "polyTweak27.ip";
connectAttr "polyTweak28.out" "polySoftEdge2.ip";
connectAttr "Roof_Post_TopShape.wm" "polySoftEdge2.mp";
connectAttr "polyCube3.out" "polyTweak28.ip";
connectAttr "polyTweak29.out" "polySoftEdge3.ip";
connectAttr "RoofShape.wm" "polySoftEdge3.mp";
connectAttr "polySplitRing12.out" "polyTweak29.ip";
connectAttr "|Entire_thing|Farm_House|Roof_Post_Back_Small|polySurfaceShape1.o" "polyExtrudeFace6.ip"
		;
connectAttr "Roof_Post_Back_SmallShape.wm" "polyExtrudeFace6.mp";
connectAttr "polySoftEdge1.out" "polyExtrudeFace7.ip";
connectAttr "Farm_HouseShape.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace7.out" "polyExtrudeFace8.ip";
connectAttr "Farm_HouseShape.wm" "polyExtrudeFace8.mp";
connectAttr "polyExtrudeFace8.out" "polySoftEdge4.ip";
connectAttr "Farm_HouseShape.wm" "polySoftEdge4.mp";
connectAttr "polySoftEdge4.out" "polyTweak30.ip";
connectAttr "polyTweak30.out" "deleteComponent18.ig";
connectAttr "polySoftEdge3.out" "polyExtrudeFace9.ip";
connectAttr "RoofShape.wm" "polyExtrudeFace9.mp";
connectAttr "polyExtrudeFace9.out" "polyNormal1.ip";
connectAttr "polyNormal1.out" "deleteComponent19.ig";
connectAttr "Roof1.oc" "lambert2SG.ss";
connectAttr "RoofShape.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "Roof1.msg" "materialInfo1.m";
connectAttr "FarmHouse.oc" "lambert3SG.ss";
connectAttr "Farm_HouseShape.iog.og[0]" "lambert3SG.dsm" -na;
connectAttr "Farm_HouseShape.ciog.cog[0]" "lambert3SG.dsm" -na;
connectAttr "groupId1.msg" "lambert3SG.gn" -na;
connectAttr "groupId2.msg" "lambert3SG.gn" -na;
connectAttr "lambert3SG.msg" "materialInfo2.sg";
connectAttr "FarmHouse.msg" "materialInfo2.m";
connectAttr "Wood.oc" "lambert4SG.ss";
connectAttr "Roof_Post_Back_Small2Shape.iog" "lambert4SG.dsm" -na;
connectAttr "Roof_Post_Front_Small2Shape.iog" "lambert4SG.dsm" -na;
connectAttr "Roof_Crossbar3Shape.iog" "lambert4SG.dsm" -na;
connectAttr "Roof_Crossbar2Shape.iog" "lambert4SG.dsm" -na;
connectAttr "Roof_Support_PillarShape.iog" "lambert4SG.dsm" -na;
connectAttr "Roof_Crossbar1Shape.iog" "lambert4SG.dsm" -na;
connectAttr "Roof_CrossbarShape.iog" "lambert4SG.dsm" -na;
connectAttr "Roof_Post_Back_Small1Shape.iog" "lambert4SG.dsm" -na;
connectAttr "Roof_Post_Back_SmallShape.iog" "lambert4SG.dsm" -na;
connectAttr "Roof_Post_Front_Small1Shape.iog" "lambert4SG.dsm" -na;
connectAttr "Roof_Post_Front_SmallShape.iog" "lambert4SG.dsm" -na;
connectAttr "Roof_Post_TopShape.iog" "lambert4SG.dsm" -na;
connectAttr "Farm_HouseShape.iog.og[1]" "lambert4SG.dsm" -na;
connectAttr "Fence_PostShape.iog" "lambert4SG.dsm" -na;
connectAttr "Fence_Post8Shape.iog" "lambert4SG.dsm" -na;
connectAttr "Fence_Post7Shape.iog" "lambert4SG.dsm" -na;
connectAttr "Fence_Post6Shape.iog" "lambert4SG.dsm" -na;
connectAttr "Fence_Post5Shape.iog" "lambert4SG.dsm" -na;
connectAttr "Fence_Post4Shape.iog" "lambert4SG.dsm" -na;
connectAttr "Fence_Post3Shape.iog" "lambert4SG.dsm" -na;
connectAttr "Fence_Post2Shape.iog" "lambert4SG.dsm" -na;
connectAttr "Fence_Post1Shape.iog" "lambert4SG.dsm" -na;
connectAttr "groupId3.msg" "lambert4SG.gn" -na;
connectAttr "lambert4SG.msg" "materialInfo3.sg";
connectAttr "Wood.msg" "materialInfo3.m";
connectAttr "deleteComponent18.og" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "groupParts1.og" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "polyCube6.out" "deleteComponent20.ig";
connectAttr "deleteComponent20.og" "polyBevel1.ip";
connectAttr "Dirt_MoundShape.wm" "polyBevel1.mp";
connectAttr "dirt.oc" "lambert5SG.ss";
connectAttr "Dirt_Mound5Shape.iog" "lambert5SG.dsm" -na;
connectAttr "Dirt_Mound6Shape.iog" "lambert5SG.dsm" -na;
connectAttr "Dirt_Mound7Shape.iog" "lambert5SG.dsm" -na;
connectAttr "Dirt_Mound8Shape.iog" "lambert5SG.dsm" -na;
connectAttr "Dirt_MoundShape.iog" "lambert5SG.dsm" -na;
connectAttr "Dirt_Mound3Shape.iog" "lambert5SG.dsm" -na;
connectAttr "Dirt_Mound4Shape.iog" "lambert5SG.dsm" -na;
connectAttr "Dirt_Mound2Shape.iog" "lambert5SG.dsm" -na;
connectAttr "Dirt_Mound1Shape.iog" "lambert5SG.dsm" -na;
connectAttr "lambert5SG.msg" "materialInfo4.sg";
connectAttr "dirt.msg" "materialInfo4.m";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "lambert5SG.pa" ":renderPartition.st" -na;
connectAttr "Roof1.msg" ":defaultShaderList1.s" -na;
connectAttr "FarmHouse.msg" ":defaultShaderList1.s" -na;
connectAttr "Wood.msg" ":defaultShaderList1.s" -na;
connectAttr "dirt.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "Person_ScaleShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Stone_Corner_UVShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Stone_Corner_UV1Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Stone_Corner_UV2Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Stone_Corner_UV3Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Stone_Corner_UV4Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Stone_Corner_UV5Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Stone_Corner_UV6Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Stone_Corner_UV7Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Stone_Corner_UV8Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Stone_Corner_UV9Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Stone_Corner_UV10Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Stone_Corner_UV11Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Stone_Corner_UV12Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Stone_Corner_UV13Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Stone_Corner_UV14Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Stone_Corner_UV15Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Stone_Corner_UV16Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Stone_Corner_UV17Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Stone_Corner_UV18Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Stone_Corner_UV19Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Stone_Corner_UV20Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Stone_Corner_UV21Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Stone_Corner_UV22Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Stone_Corner_UV23Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Stone_Corner_UV24Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Stone_Corner_UV25Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Stone_Corner_UV26Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Stone_Corner_UV27Shape.iog" ":initialShadingGroup.dsm" -na;
// End of Game Farm House.ma
