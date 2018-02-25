//Maya ASCII 2017ff05 scene
//Name: Game Mine.ma
//Last modified: Tue, Feb 20, 2018 09:18:39 AM
//Codeset: 1252
requires maya "2017ff05";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2017";
fileInfo "version" "2017";
fileInfo "cutIdentifier" "201706020738-1017329";
fileInfo "osv" "Microsoft Windows 8 Enterprise Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "D9173DCE-4177-8551-8469-769AF404CA02";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 18.837951087225093 2.1641351353543978 -3.7876813670041392 ;
	setAttr ".r" -type "double3" -1.5383527315472743 -623.79999999988809 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "F2A505AB-4F11-D64E-49FB-0BA8C8B374F0";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 22.966516818622896;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 2.7584585845472613 0.038597090628072817 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
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
	setAttr ".ai_translator" -type "string" "orthographic";
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
	setAttr ".ai_translator" -type "string" "orthographic";
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
	setAttr ".ai_translator" -type "string" "orthographic";
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
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 65 ".pt";
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
	setAttr ".dr" 1;
	setAttr ".ai_translator" -type "string" "polymesh";
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
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
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
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
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
	setAttr ".ai_translator" -type "string" "polymesh";
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
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "8ED58105-41AC-091E-D1EC-4F8FBA00FBFE";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "5357841E-492A-7B56-42C0-939DA019AF29";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "36B1E023-42CF-E104-ADED-1BAA5858BFCE";
createNode displayLayerManager -n "layerManager";
	rename -uid "9BB15111-4D02-6F16-AC12-8382CBF40664";
createNode displayLayer -n "defaultLayer";
	rename -uid "D9CACEAE-4CEC-7E72-A5F1-48B4F3513BE5";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "F292C413-49FB-15B3-A253-798399503627";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "FB925F4B-4B65-B54C-64D6-BE8EE64E3DE9";
	setAttr ".g" yes;
createNode polySphere -n "polySphere1";
	rename -uid "CEEF50B0-493D-BBD4-BC4C-38BF50F96E51";
	setAttr ".sa" 8;
	setAttr ".sh" 8;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "2D148660-4DB2-A54F-88BF-B9B2837DDFB6";
	setAttr ".dc" -type "componentList" 2 "f[0:23]" "f[48:55]";
createNode polyCube -n "polyCube1";
	rename -uid "3FE06D5F-4C7B-218E-2AEC-B4BAC6DE6809";
	setAttr ".cuv" 4;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "7D4AC5CD-4327-EFB5-F42F-EEBA51EEE866";
	setAttr ".r" 0.5;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polySplitRing -n "polySplitRing1";
	rename -uid "15981102-4BAE-D28C-431D-BBAF694FC2DC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[6]" "e[14]" "e[22]" "e[30]";
	setAttr ".ix" -type "matrix" 5.2841029886834558 0 -2.1887471228888922 0 0 5.7194718604927006 0 0
		 2.1887471228888922 0 5.2841029886834558 0 -5.591213063246891 0 0 1;
	setAttr ".wt" 0.78730416297912598;
	setAttr ".dr" no;
	setAttr ".re" 14;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak1";
	rename -uid "7F314CDC-4958-9BD3-2564-6EB9E1083DB3";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[6]" -type "float3" 0.024476694 0 0.010138579 ;
	setAttr ".tk[7]" -type "float3" 0.024476694 0 0.010138579 ;
	setAttr ".tk[14]" -type "float3" 0.086165681 0.15348735 0.035690989 ;
	setAttr ".tk[15]" -type "float3" 0.086165681 0.15348735 0.035690989 ;
createNode polySplitRing -n "polySplitRing2";
	rename -uid "52DCEC33-496F-F275-19DE-DF89D09940DE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[6]" "e[14]" "e[22]" "e[30]" "e[63]";
	setAttr ".ix" -type "matrix" 5.2841029886834558 0 -2.1887471228888922 0 0 5.7194718604927006 0 0
		 2.1887471228888922 0 5.2841029886834558 0 -5.591213063246891 0 0 1;
	setAttr ".wt" 0.24466346204280853;
	setAttr ".re" 14;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode deleteComponent -n "deleteComponent2";
	rename -uid "6A7DB821-44DB-973B-8AF7-2B9A4549FC53";
	setAttr ".dc" -type "componentList" 1 "f[35]";
createNode polyExtrudeEdge -n "polyExtrudeEdge1";
	rename -uid "E12E23E9-48F7-A3EC-2E19-DDAD51403226";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[66]" "e[71:72]";
	setAttr ".ix" -type "matrix" 5.2841029886834558 0 -2.1887471228888922 0 0 5.7194718604927006 0 0
		 2.1887471228888922 0 5.2841029886834558 0 -5.591213063246891 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.1555821 1.4436096 0.043930896 ;
	setAttr ".rs" 39658;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.17591228834865191 0 -1.2576722479465174 ;
	setAttr ".cbx" -type "double3" -0.15558203901069856 2.8872191779108736 1.3455340415613619 ;
createNode polyTweak -n "polyTweak2";
	rename -uid "01A51F5F-4F41-1F39-54F6-2791587E84C1";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[14]" -type "float3" 0 -0.031365562 0 ;
	setAttr ".tk[15]" -type "float3" 0 -0.031365562 0 ;
	setAttr ".tk[34]" -type "float3" 0 -0.031365562 0 ;
	setAttr ".tk[38]" -type "float3" 0 -0.031365562 0 ;
createNode polyBridgeEdge -n "polyBridgeEdge1";
	rename -uid "DC286DE8-4FF2-6D3A-75ED-CABA1254E71B";
	setAttr ".ics" -type "componentList" 2 "e[81]" "e[85]";
	setAttr ".ix" -type "matrix" 5.2841029886834558 0 -2.1887471228888922 0 0 5.7194718604927006 0 0
		 2.1887471228888922 0 5.2841029886834558 0 -5.591213063246891 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 42;
	setAttr ".sv2" 44;
	setAttr ".d" 1;
	setAttr ".td" 1;
createNode polyTweak -n "polyTweak3";
	rename -uid "9F5043AF-47E4-F70A-B56A-B79108E1BB83";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[42:45]" -type "float3"  -0.25041375 0 -0.012205938
		 -0.24803393 -0.24385552 -0.017951494 -0.18824635 -0.24385552 -0.16229145 -0.18570016
		 0 -0.16843836;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "B8AC44CC-4FAD-6F82-6E52-B1A0AFF2D3D1";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n"
		+ "            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 554\n            -height 333\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 554\n            -height 333\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n"
		+ "            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 554\n            -height 333\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1115\n            -height 710\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1115\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1115\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "BBD82661-4C7E-2706-DEFB-5EB21BDE9F52";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "27FF495D-40D0-97D8-E13A-09B862B69420";
	setAttr ".ics" -type "componentList" 3 "f[16]" "f[23:24]" "f[31]";
	setAttr ".ix" -type "matrix" 5.2841029886834558 0 -2.1887471228888922 0 0 5.7194718604927006 0 0
		 2.1887471228888922 0 5.2841029886834558 0 -5.591213063246891 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -4.3723855 4.8818746 -2.642051 ;
	setAttr ".rs" 60246;
	setAttr ".lt" -type "double3" 1.4581683138854091e-015 8.3266726846886741e-016 0.76729206678040296 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -7.1388914691114618 4.0442772681451693 -3.7364244159639122 ;
	setAttr ".cbx" -type "double3" -1.6058793733148611 5.7194718604927006 0 ;
createNode polyTweak -n "polyTweak4";
	rename -uid "49CE12B7-4FE6-3434-4C4A-E1901E56A219";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[22]" -type "float3" 0.040206846 0.026958704 0.016654221 ;
	setAttr ".tk[23]" -type "float3" 0.040206846 0.026958704 0.016654221 ;
	setAttr ".tk[35]" -type "float3" 0.040206846 0.026958704 0.016654221 ;
	setAttr ".tk[39]" -type "float3" 0.040206846 0.026958704 0.016654221 ;
createNode polySoftEdge -n "polySoftEdge1";
	rename -uid "E70EA05E-40F1-B420-03DE-6D8CC1D44A34";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 5.2841029886834558 0 -2.1887471228888922 0 0 5.7194718604927006 0 0
		 2.1887471228888922 0 5.2841029886834558 0 -5.591213063246891 0 0 1;
	setAttr ".a" 0;
createNode polyTweak -n "polyTweak5";
	rename -uid "224C0445-4AAD-9673-6034-0DB6C36F7F9D";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[45:52]" -type "float3"  -0.10073838 0.085200615 0.16103122
		 0.18226524 0.086232737 0.28499922 0.1875376 -0.038462862 0.094836392 0.037336685
		 -0.016536742 0.021135354 -0.2455422 0.069424316 -0.1322349 -0.035481911 -0.039494954
		 -0.1293371 0.18863112 -0.086232722 -0.13136898 0.13324469 -0.076046892 -0.13554792;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "7ADDC23D-416D-E08E-38ED-CEB8F674173C";
	setAttr ".ics" -type "componentList" 1 "f[4:5]";
	setAttr ".ix" -type "matrix" 5.2841029886834558 0 -2.1887471228888922 0 0 5.7194718604927006 0 0
		 2.1887471228888922 0 5.2841029886834558 0 -5.591213063246891 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -3.6964607 1.4436096 4.3326621 ;
	setAttr ".rs" 51351;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -7.7799602791364668 0 2.0221384399686899 ;
	setAttr ".cbx" -type "double3" -0.15558195580139955 2.8872191779108736 5.2841025832928032 ;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "34CC2944-4D93-049E-09FB-BBAD88649046";
	setAttr ".ics" -type "componentList" 2 "f[19:20]" "f[27:28]";
	setAttr ".ix" -type "matrix" 5.2841029886834558 0 -2.1887471228888922 0 0 5.7194718604927006 0 0
		 2.1887471228888922 0 5.2841029886834558 0 -5.591213063246891 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -6.6855869 4.8818746 2.6420515 ;
	setAttr ".rs" 49720;
	setAttr ".lt" -type "double3" -2.3314683517128287e-015 8.8817841970012523e-016 2.59142494949405 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -9.3276386850010375 4.0442772681451693 0 ;
	setAttr ".cbx" -type "double3" -4.043534972339403 5.7194718604927006 3.7364245563315057 ;
createNode polyTweak -n "polyTweak6";
	rename -uid "F561BFBE-4FF0-250F-B94F-9B81CE690A1F";
	setAttr ".uopa" yes;
	setAttr -s 14 ".tk";
	setAttr ".tk[12]" -type "float3" 3.3306691e-016 0.14325804 0.079260014 ;
	setAttr ".tk[13]" -type "float3" 3.3363132e-016 0.14325804 0.079260014 ;
	setAttr ".tk[14]" -type "float3" 3.3306691e-016 0.14325804 0.079260014 ;
	setAttr ".tk[53]" -type "float3" 0 0 0.45620733 ;
	setAttr ".tk[54]" -type "float3" 0 0 0.45620733 ;
	setAttr ".tk[55]" -type "float3" -5.9557004e-023 0 0.45620733 ;
	setAttr ".tk[56]" -type "float3" 0 0 0.45620733 ;
	setAttr ".tk[57]" -type "float3" 0 0 0.45620733 ;
	setAttr ".tk[58]" -type "float3" 0 0 0.45620733 ;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "2E637779-4E2D-E042-BE79-0C8FB9CC735A";
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 5.2841029886834558 0 -2.1887471228888922 0 0 5.7194718604927006 0 0
		 2.1887471228888922 0 5.2841029886834558 0 -5.591213063246891 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -5.5323086 1.0943736 -5.1418929 ;
	setAttr ".rs" 41562;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -7.7799599252167937 0 -5.2841024528333085 ;
	setAttr ".cbx" -type "double3" -3.4024661623143961 2.1887470872946122 -4.8818727981398595 ;
createNode polyTweak -n "polyTweak7";
	rename -uid "FF705660-4FFA-C877-3D5C-998EF09BBC61";
	setAttr ".uopa" yes;
	setAttr -s 11 ".tk";
	setAttr ".tk[19]" -type "float3" -0.15911603 0.11130998 0.15357935 ;
	setAttr ".tk[20]" -type "float3" -0.15911603 0.11130998 0.15357935 ;
	setAttr ".tk[21]" -type "float3" -0.15911603 0.11130998 0.15357935 ;
	setAttr ".tk[58]" -type "float3" 0.35320282 0.1308718 0.17838269 ;
	setAttr ".tk[59]" -type "float3" 0.15516794 0.1308718 -0.22758061 ;
	setAttr ".tk[60]" -type "float3" -0.034716003 -0.053907424 -0.037696838 ;
	setAttr ".tk[61]" -type "float3" 0.067089669 -0.049925469 0.20149623 ;
	setAttr ".tk[62]" -type "float3" -0.25079563 0.1308718 -0.42561537 ;
	setAttr ".tk[63]" -type "float3" -0.27390879 -0.049925469 -0.13950247 ;
	setAttr ".tk[64]" -type "float3" -0.2787028 -0.1308718 0.20628999 ;
createNode polySoftEdge -n "polySoftEdge2";
	rename -uid "A46C8CC7-4389-02B2-8ACA-D19EEB427655";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 5.2841029886834558 0 -2.1887471228888922 0 0 5.7194718604927006 0 0
		 2.1887471228888922 0 5.2841029886834558 0 -5.591213063246891 0 0 1;
	setAttr ".a" 0;
createNode polyTweak -n "polyTweak8";
	rename -uid "1D320E82-4397-E7F3-CAE0-758213B56A69";
	setAttr ".uopa" yes;
	setAttr -s 11 ".tk";
	setAttr ".tk[1]" -type "float3" -0.10354348 0 -0.18517798 ;
	setAttr ".tk[2]" -type "float3" -0.10354349 0 -0.18517801 ;
	setAttr ".tk[8]" -type "float3" 0 0.12127109 0 ;
	setAttr ".tk[9]" -type "float3" -0.10354348 0.12127109 -0.18517798 ;
	setAttr ".tk[10]" -type "float3" -0.10354349 0 -0.18517801 ;
	setAttr ".tk[17]" -type "float3" 0 0.057906002 0 ;
	setAttr ".tk[18]" -type "float3" 0 0.057906002 0 ;
	setAttr ".tk[65]" -type "float3" -2.9802322e-008 -7.4505806e-009 -0.49197793 ;
	setAttr ".tk[66]" -type "float3" 0.27501601 -7.4505806e-009 -0.50544339 ;
	setAttr ".tk[67]" -type "float3" 0.27501601 -7.4505806e-009 -0.50544339 ;
	setAttr ".tk[68]" -type "float3" -2.9802322e-008 -7.4505806e-009 -0.49197793 ;
createNode polySplitRing -n "polySplitRing3";
	rename -uid "46A3288A-4855-8128-6A2E-DD9EC85C3FD6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[28:34]" "e[57]" "e[63]" "e[72]" "e[76]" "e[100]" "e[103]" "e[107]" "e[129]" "e[132]";
	setAttr ".ix" -type "matrix" 5.2841029886834558 0 -2.1887471228888922 0 0 5.7194718604927006 0 0
		 2.1887471228888922 0 5.2841029886834558 0 -5.591213063246891 0 0 1;
	setAttr ".wt" 0.42803290486335754;
	setAttr ".dr" no;
	setAttr ".re" 100;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing4";
	rename -uid "066F038F-44DC-E00D-4AFC-5182FC53C431";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[96:97]" "e[99]" "e[101]" "e[104]" "e[106]" "e[137]" "e[163]";
	setAttr ".ix" -type "matrix" 5.2841029886834558 0 -2.1887471228888922 0 0 5.7194718604927006 0 0
		 2.1887471228888922 0 5.2841029886834558 0 -5.591213063246891 0 0 1;
	setAttr ".wt" 0.47013339400291443;
	setAttr ".re" 99;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode deleteComponent -n "deleteComponent3";
	rename -uid "AD0173FB-4527-7705-ED4C-178D900012FB";
	setAttr ".dc" -type "componentList" 5 "f[49]" "f[52]" "f[61]" "f[81]" "f[84:85]";
createNode polyBridgeEdge -n "polyBridgeEdge2";
	rename -uid "5463111E-4A50-CFCE-B42B-60906BBCE3ED";
	setAttr ".ics" -type "componentList" 2 "e[104]" "e[163]";
	setAttr ".ix" -type "matrix" 5.2841029886834558 0 -2.1887471228888922 0 0 5.7194718604927006 0 0
		 2.1887471228888922 0 5.2841029886834558 0 -5.591213063246891 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 53;
	setAttr ".sv2" 85;
	setAttr ".d" 1;
createNode polySoftEdge -n "polySoftEdge3";
	rename -uid "04F29AA3-4B80-6081-DBAF-A4A7A3DACADA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 5.2841029886834558 0 -2.1887471228888922 0 0 5.7194718604927006 0 0
		 2.1887471228888922 0 5.2841029886834558 0 -5.591213063246891 0 0 1;
	setAttr ".a" 0;
createNode polyTweak -n "polyTweak9";
	rename -uid "42195CF7-4758-3A40-F5F1-60AC1A33FABC";
	setAttr ".uopa" yes;
	setAttr -s 21 ".tk";
	setAttr ".tk[4]" -type "float3" -0.061214611 0.0078105461 0.0069563864 ;
	setAttr ".tk[13]" -type "float3" -0.13580763 -0.036052555 -0.06281022 ;
	setAttr ".tk[51]" -type "float3" 0.016389262 0.010002848 0.10014607 ;
	setAttr ".tk[52]" -type "float3" 1.110223e-016 0 0.080748454 ;
	setAttr ".tk[54]" -type "float3" 0.070005871 -0.060775861 -0.050260734 ;
	setAttr ".tk[55]" -type "float3" -0.079804115 0.0035673359 0.041498072 ;
	setAttr ".tk[56]" -type "float3" -0.22702406 -0.11716346 -0.13736084 ;
	setAttr ".tk[68]" -type "float3" 1.110223e-016 0 0.080748454 ;
	setAttr ".tk[69]" -type "float3" -0.016259696 0.033419523 0.10781953 ;
	setAttr ".tk[70]" -type "float3" -0.093863584 0.031227224 0.014629845 ;
	setAttr ".tk[82]" -type "float3" 0.047694519 0.0010578557 0.007111731 ;
	setAttr ".tk[83]" -type "float3" -0.032109596 0.004625191 0.048609804 ;
	setAttr ".tk[85]" -type "float3" -0.13580763 -0.036052555 -0.06281022 ;
	setAttr ".tk[86]" -type "float3" 0.047694519 0.0010578557 0.007111731 ;
	setAttr ".tk[88]" -type "float3" -0.061214611 0.0078105461 0.0069563864 ;
	setAttr ".tk[89]" -type "float3" -0.093863584 0.031227224 0.014629845 ;
createNode polyDelEdge -n "polyDelEdge1";
	rename -uid "84283B58-4057-4B44-3455-8A947D158A21";
	setAttr ".ics" -type "componentList" 1 "e[118]";
	setAttr ".cv" yes;
createNode polyTweak -n "polyTweak10";
	rename -uid "AC0D937D-41C7-EAE0-B3F7-D49039110F32";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[53]" -type "float3" -0.00019370687 -0.031377044 -0.026882932 ;
	setAttr ".tk[56]" -type "float3" 0 0 -7.4505806e-009 ;
createNode polySplitRing -n "polySplitRing5";
	rename -uid "79E234B2-4977-1AD9-0855-E78B1F3991AF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[120:121]" "e[123]" "e[125]" "e[140]" "e[144]";
	setAttr ".ix" -type "matrix" 5.2841029886834558 0 -2.1887471228888922 0 0 5.7194718604927006 0 0
		 2.1887471228888922 0 5.2841029886834558 0 -5.591213063246891 0 0 1;
	setAttr ".wt" 0.48774254322052002;
	setAttr ".re" 125;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak11";
	rename -uid "2964B646-4217-CF85-B3CC-EA87F05C09FF";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[4]" -type "float3" -0.078312874 -0.0032043962 -0.00022369188 ;
	setAttr ".tk[70]" -type "float3" -0.078312874 -0.0032043962 -0.00022369188 ;
	setAttr ".tk[88]" -type "float3" -0.078312874 -0.0032043962 -0.00022369188 ;
	setAttr ".tk[89]" -type "float3" -0.078312874 -0.0032043962 -0.00022369188 ;
createNode polySplitRing -n "polySplitRing6";
	rename -uid "C4C14C70-49B4-9F39-0DFF-909F356876BE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[5]" "e[13]" "e[77]" "e[80]" "e[122]" "e[126]" "e[142]" "e[179]";
	setAttr ".ix" -type "matrix" 5.2841029886834558 0 -2.1887471228888922 0 0 5.7194718604927006 0 0
		 2.1887471228888922 0 5.2841029886834558 0 -5.591213063246891 0 0 1;
	setAttr ".wt" 0.45447739958763123;
	setAttr ".re" 126;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySoftEdge -n "polySoftEdge4";
	rename -uid "657178AE-457D-E993-DD65-34BF08292DBD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 5.2841029886834558 0 -2.1887471228888922 0 0 5.7194718604927006 0 0
		 2.1887471228888922 0 5.2841029886834558 0 -5.591213063246891 0 0 1;
	setAttr ".a" 0;
createNode polyTweak -n "polyTweak12";
	rename -uid "D41D855C-4842-90A4-0956-0D81BF5D0EF9";
	setAttr ".uopa" yes;
	setAttr -s 17 ".tk";
	setAttr ".tk[0]" -type "float3" 0.12835309 0 0.015119812 ;
	setAttr ".tk[1]" -type "float3" 0.01690148 0 -0.17018387 ;
	setAttr ".tk[8]" -type "float3" 0 0.063658848 0 ;
	setAttr ".tk[64]" -type "float3" 0.07141979 0.023264036 -0.10073113 ;
	setAttr ".tk[65]" -type "float3" -0.078911848 0.020966483 -0.28343681 ;
	setAttr ".tk[66]" -type "float3" 0.012130064 0.0061475518 0.049479622 ;
	setAttr ".tk[73]" -type "float3" 0.01690148 0 -0.17018387 ;
	setAttr ".tk[74]" -type "float3" 0.01690148 0 -0.17018387 ;
	setAttr ".tk[76]" -type "float3" 0.12835309 0 0.015119812 ;
	setAttr ".tk[91]" -type "float3" 0.12835309 0 0.015119812 ;
	setAttr ".tk[92]" -type "float3" 0.12835309 0 0.015119812 ;
	setAttr ".tk[95]" -type "float3" 0.01690148 0 -0.17018387 ;
	setAttr ".tk[96]" -type "float3" -0.078911863 0.020966483 -0.28343681 ;
	setAttr ".tk[97]" -type "float3" 0.07141979 0.023264036 -0.10073113 ;
	setAttr ".tk[99]" -type "float3" -0.028597005 -0.0087062335 0.038080484 ;
	setAttr ".tk[101]" -type "float3" 0 0.063658848 0 ;
createNode polySplitRing -n "polySplitRing7";
	rename -uid "8470091C-4427-B9D3-3C52-0E85A0760A4E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[1]" "e[7]" "e[15]" "e[22]" "e[136]";
	setAttr ".ix" -type "matrix" 5.2841029886834558 0 -2.1887471228888922 0 0 5.7194718604927006 0 0
		 2.1887471228888922 0 5.2841029886834558 0 -5.591213063246891 0 0 1;
	setAttr ".wt" 0.50607138872146606;
	setAttr ".re" 7;
	setAttr ".sma" 29.999999999999996;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak13";
	rename -uid "2AACE8EA-4CCE-074E-FD47-429CC0686AE6";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk";
	setAttr ".tk[1]" -type "float3" -0.089156568 2.646978e-023 -0.05621944 ;
	setAttr ".tk[65]" -type "float3" 0.079099141 3.1225023e-016 0.051294588 ;
	setAttr ".tk[66]" -type "float3" 0 -0.078472905 0 ;
	setAttr ".tk[67]" -type "float3" 0 -0.078472905 0 ;
	setAttr ".tk[73]" -type "float3" -0.089156568 0 -0.05621944 ;
	setAttr ".tk[98]" -type "float3" 0.072599642 0 -0.13818021 ;
	setAttr ".tk[100]" -type "float3" 0 0.074819542 0 ;
	setAttr ".tk[101]" -type "float3" 0 0.074819542 0 ;
createNode polySoftEdge -n "polySoftEdge5";
	rename -uid "F41E298C-4FF2-5972-CBE7-589D6AF73D23";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 5.2841029886834558 0 -2.1887471228888922 0 0 5.7194718604927006 0 0
		 2.1887471228888922 0 5.2841029886834558 0 -5.591213063246891 0 0 1;
	setAttr ".a" 0;
createNode polyTweak -n "polyTweak14";
	rename -uid "1AC14FCE-4CDE-5D78-7D0E-C6929412D32A";
	setAttr ".uopa" yes;
	setAttr -s 26 ".tk";
	setAttr ".tk[0]" -type "float3" 0 -1.1920929e-007 0 ;
	setAttr ".tk[1]" -type "float3" 0 -1.1920929e-007 0 ;
	setAttr ".tk[2]" -type "float3" 0 -1.1920929e-007 0 ;
	setAttr ".tk[3]" -type "float3" -0.06630414 1.4901161e-008 0.023098432 ;
	setAttr ".tk[4]" -type "float3" 0 -0.0046062171 0 ;
	setAttr ".tk[5]" -type "float3" 0 -1.1920929e-007 0 ;
	setAttr ".tk[6]" -type "float3" 0 -1.1920929e-007 0 ;
	setAttr ".tk[10]" -type "float3" -0.063765623 0.027365636 0.01246188 ;
	setAttr ".tk[30]" -type "float3" 0 -1.1920929e-007 0 ;
	setAttr ".tk[34]" -type "float3" 0 -1.1920929e-007 0 ;
	setAttr ".tk[39]" -type "float3" 0 -1.1920929e-007 0 ;
	setAttr ".tk[42]" -type "float3" 0 -1.1920929e-007 0 ;
	setAttr ".tk[51]" -type "float3" 0 -0.010002866 0 ;
	setAttr ".tk[52]" -type "float3" 0 -1.1920929e-007 0 ;
	setAttr ".tk[55]" -type "float3" 0 -0.0035674125 0 ;
	setAttr ".tk[64]" -type "float3" 0 -0.023263916 0 ;
	setAttr ".tk[65]" -type "float3" 0 -0.020966381 0 ;
	setAttr ".tk[71]" -type "float3" -0.06630414 0.01318869 0.023098432 ;
	setAttr ".tk[87]" -type "float3" 0 -1.1920929e-007 0 ;
	setAttr ".tk[88]" -type "float3" 0 -0.0046062171 0 ;
	setAttr ".tk[91]" -type "float3" 0 -1.0430813e-007 0 ;
	setAttr ".tk[96]" -type "float3" 0 -0.020966381 0 ;
	setAttr ".tk[97]" -type "float3" 0 -0.023263916 0 ;
	setAttr ".tk[105]" -type "float3" -0.31911778 -1.1920929e-007 0 ;
	setAttr ".tk[106]" -type "float3" -0.31911778 0 0 ;
	setAttr ".tk[107]" -type "float3" -0.13867824 0.10856477 -0.041886304 ;
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
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "polySoftEdge5.out" "RocksShape.i";
connectAttr "polyCube1.out" "Mine_EntranceShape.i";
connectAttr "polyCylinder1.out" "pCylinderShape1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polySphere1.out" "deleteComponent1.ig";
connectAttr "polyTweak1.out" "polySplitRing1.ip";
connectAttr "RocksShape.wm" "polySplitRing1.mp";
connectAttr "deleteComponent1.og" "polyTweak1.ip";
connectAttr "polySplitRing1.out" "polySplitRing2.ip";
connectAttr "RocksShape.wm" "polySplitRing2.mp";
connectAttr "polySplitRing2.out" "deleteComponent2.ig";
connectAttr "polyTweak2.out" "polyExtrudeEdge1.ip";
connectAttr "RocksShape.wm" "polyExtrudeEdge1.mp";
connectAttr "deleteComponent2.og" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polyBridgeEdge1.ip";
connectAttr "RocksShape.wm" "polyBridgeEdge1.mp";
connectAttr "polyExtrudeEdge1.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polyExtrudeFace1.ip";
connectAttr "RocksShape.wm" "polyExtrudeFace1.mp";
connectAttr "polyBridgeEdge1.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polySoftEdge1.ip";
connectAttr "RocksShape.wm" "polySoftEdge1.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak5.ip";
connectAttr "polySoftEdge1.out" "polyExtrudeFace2.ip";
connectAttr "RocksShape.wm" "polyExtrudeFace2.mp";
connectAttr "polyTweak6.out" "polyExtrudeFace3.ip";
connectAttr "RocksShape.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak6.ip";
connectAttr "polyTweak7.out" "polyExtrudeFace4.ip";
connectAttr "RocksShape.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak7.ip";
connectAttr "polyTweak8.out" "polySoftEdge2.ip";
connectAttr "RocksShape.wm" "polySoftEdge2.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak8.ip";
connectAttr "polySoftEdge2.out" "polySplitRing3.ip";
connectAttr "RocksShape.wm" "polySplitRing3.mp";
connectAttr "polySplitRing3.out" "polySplitRing4.ip";
connectAttr "RocksShape.wm" "polySplitRing4.mp";
connectAttr "polySplitRing4.out" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "polyBridgeEdge2.ip";
connectAttr "RocksShape.wm" "polyBridgeEdge2.mp";
connectAttr "polyTweak9.out" "polySoftEdge3.ip";
connectAttr "RocksShape.wm" "polySoftEdge3.mp";
connectAttr "polyBridgeEdge2.out" "polyTweak9.ip";
connectAttr "polyTweak10.out" "polyDelEdge1.ip";
connectAttr "polySoftEdge3.out" "polyTweak10.ip";
connectAttr "polyTweak11.out" "polySplitRing5.ip";
connectAttr "RocksShape.wm" "polySplitRing5.mp";
connectAttr "polyDelEdge1.out" "polyTweak11.ip";
connectAttr "polySplitRing5.out" "polySplitRing6.ip";
connectAttr "RocksShape.wm" "polySplitRing6.mp";
connectAttr "polyTweak12.out" "polySoftEdge4.ip";
connectAttr "RocksShape.wm" "polySoftEdge4.mp";
connectAttr "polySplitRing6.out" "polyTweak12.ip";
connectAttr "polyTweak13.out" "polySplitRing7.ip";
connectAttr "RocksShape.wm" "polySplitRing7.mp";
connectAttr "polySoftEdge4.out" "polyTweak13.ip";
connectAttr "polyTweak14.out" "polySoftEdge5.ip";
connectAttr "RocksShape.wm" "polySoftEdge5.mp";
connectAttr "polySplitRing7.out" "polyTweak14.ip";
connectAttr "defaultRenderLayer.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "RocksShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Mine_EntranceShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Mine_Entrance1Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "Mine_Entrance2Shape.iog" ":initialShadingGroup.dsm" -na;
// End of Game Mine.ma
