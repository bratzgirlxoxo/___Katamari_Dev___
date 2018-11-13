//Maya ASCII 2018 scene
//Name: teapot_ML.ma
//Last modified: Tue, Nov 13, 2018 02:22:48 AM
//Codeset: 1252
requires maya "2018";
currentUnit -l meter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "EAA01DE2-4CA4-3BED-7A0D-5285BF5D38A2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.9652967323806072 5.0994453767590366 0.03234721218098173 ;
	setAttr ".r" -type "double3" -30.338352731744166 449.80000000005384 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "F7B844E6-4940-9FDF-39F8-E6BD9D61BCB8";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 7.9898311166385279;
	setAttr ".ow" 0.1;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "E911FB8D-4F41-9D06-9ED3-38973FF9D416";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 10.001000000000001 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "ABACAC28-4ADE-C15C-BBC2-5582AAA777D0";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 10.001000000000001;
	setAttr ".ow" 0.3;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "6BE9B5AE-4D72-07CE-A5D6-BAA2DED8E083";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 10.001000000000001 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "67BC98EA-4B9E-F6D5-D327-4EA23B2F1FD0";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 10.001000000000001;
	setAttr ".ow" 0.3;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "62528645-4CCB-26FB-F85A-C2B4EE18554F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 10.001000000000001 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "BF6B6426-4632-3450-DF19-109082C9A00C";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 10.001000000000001;
	setAttr ".ow" 0.3;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "teapot_lid_handle";
	rename -uid "5FFE7AE0-409B-72B6-B5D1-DF8E1FEF4339";
	setAttr ".t" -type "double3" 0 1.5685917555989202 0.016722794315161844 ;
	setAttr ".s" -type "double3" 0.83886474441145287 1 0.83886474441145287 ;
	setAttr ".rp" -type "double3" 0 -0.1249999956988665 0 ;
	setAttr ".sp" -type "double3" 0 -0.1249999956988665 0 ;
createNode mesh -n "teapot_lid_handleShape" -p "teapot_lid_handle";
	rename -uid "0BBCE5FA-40AD-8596-5AD0-FEA609B396AC";
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
	setAttr -s 4 ".pt[2:5]" -type "float3"  -0.03641551 0.071409337 0.03641551 
		0.03641551 0.071409337 0.03641551 -0.03641551 0.071409337 -0.03641551 0.03641551 
		0.071409337 -0.03641551;
	setAttr -s 8 ".vt[0:7]"  -0.125 -0.125 0.125 0.125 -0.125 0.125 -0.125 0.125 0.125
		 0.125 0.125 0.125 -0.125 0.125 -0.125 0.125 0.125 -0.125 -0.125 -0.125 -0.125 0.125 -0.125 -0.125;
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
createNode transform -n "teapot_base1";
	rename -uid "A380A9CE-4C7E-F910-878A-F7A5936835C5";
	setAttr ".r" -type "double3" 0 -22.5 0 ;
	setAttr ".rp" -type "double3" 7.6293945312500002e-08 0.73256102627565101 0.28260932080120071 ;
	setAttr ".sp" -type "double3" 7.6293945312500002e-08 0.73256102627565101 0.28260932080120071 ;
createNode transform -n "polySurface1" -p "teapot_base1";
	rename -uid "B3B27B1F-4ADC-AA8C-004C-6DA22350192E";
	setAttr ".t" -type "double3" -0.09991748894798555 0 0.041387179040519397 ;
createNode mesh -n "polySurfaceShape1" -p "polySurface1";
	rename -uid "8A843209-4CA0-3357-839C-B583CE0F4672";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 64 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]" "f[8]" "f[9]" "f[10]" "f[11]" "f[12]" "f[13]" "f[14]" "f[15]" "f[16]" "f[17]" "f[18]" "f[19]" "f[20]" "f[21]" "f[22]" "f[23]" "f[24]" "f[25]" "f[26]" "f[27]" "f[28]" "f[29]" "f[30]" "f[31]" "f[32]" "f[33]" "f[34]" "f[35]" "f[36]" "f[37]" "f[38]" "f[39]" "f[40]" "f[41]" "f[42]" "f[43]" "f[44]" "f[45]" "f[46]" "f[47]" "f[48]" "f[49]" "f[50]" "f[51]" "f[52]" "f[53]" "f[54]" "f[55]" "f[56]" "f[57]" "f[58]" "f[59]" "f[60]" "f[61]" "f[62]" "f[63]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 78 ".uvst[0].uvsp[0:77]" -type "float2" 0.375 0.3125 0.40625
		 0.3125 0.40625 0.43514499 0.375 0.43514499 0.4375 0.3125 0.4375 0.43514499 0.46875
		 0.3125 0.46875 0.43514499 0.5 0.3125 0.5 0.43514499 0.53125 0.3125 0.53125 0.43514499
		 0.5625 0.3125 0.5625 0.43514499 0.59375 0.3125 0.59375 0.43514499 0.625 0.3125 0.625
		 0.43514499 0.5 1.4901161e-08 0.61048543 0.04576458 0.5 0.15000001 0.38951457 0.04576458
		 0.34375 0.15625 0.38951457 0.26673543 0.5 0.3125 0.61048543 0.26673543 0.65625 0.15625
		 0.61048543 0.95423543 0.5 1 0.5 0.83749998 0.38951457 0.95423543 0.34375 0.84375
		 0.38951457 0.73326457 0.5 0.6875 0.61048543 0.73326457 0.65625 0.84375 0.61048543
		 0.95423543 0.5 1 0.5 1 0.61048543 0.95423543 0.38951457 0.95423543 0.38951457 0.95423543
		 0.34375 0.84375 0.34375 0.84375 0.38951457 0.73326457 0.38951457 0.73326457 0.5 0.6875
		 0.5 0.6875 0.61048543 0.73326457 0.61048543 0.73326457 0.65625 0.84375 0.65625 0.84375
		 0.5 1 0.61048543 0.95423543 0.38951457 0.95423543 0.34375 0.84375 0.38951457 0.73326457
		 0.5 0.6875 0.61048543 0.73326457 0.65625 0.84375 0.53125 0.62419492 0.5625 0.62419492
		 0.5625 0.68843985 0.53125 0.68843985 0.5 0.62419492 0.5 0.68843985 0.46875 0.62419492
		 0.46875 0.68843985 0.4375 0.62419492 0.4375 0.68843985 0.40625 0.62419492 0.40625
		 0.68843985 0.375 0.62419492 0.375 0.68843985 0.59375 0.62419492 0.625 0.62419492
		 0.625 0.68843985 0.59375 0.68843985;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 58 ".vt[0:57]"  0.63126653 0 -0.63126653 8.1828464e-09 0 -0.89274567
		 -0.63126653 0 -0.63126653 -0.89274567 0 4.0914232e-09 -0.63126653 0 0.63126653 8.1828464e-09 0 0.89274567
		 0.63126665 0 0.63126659 0.89274579 0 4.0914232e-09 0.70710671 1.20000005 -0.70710671
		 -1.1368684e-15 1.20000005 -0.99999982 -0.70710671 1.20000005 -0.70710671 -0.99999982 1.20000005 0
		 -0.70710671 1.20000005 0.70710671 0 1.20000005 0.99999994 0.70710677 1.20000005 0.70710677
		 1 1.20000005 0 8.1828464e-09 0 4.0914232e-09 0.55654699 1.24461615 -0.55654693 1.6244787e-08 1.24461615 -0.78707623
		 -0.55654693 1.24461615 -0.55654693 -0.78707623 1.24461615 8.1223934e-09 -0.55654693 1.24461615 0.55654699
		 1.6244787e-08 1.24461615 0.78707635 0.55654699 1.24461615 0.55654699 0.78707641 1.24461615 8.1223934e-09
		 0.55654699 1.28293538 -0.55654693 1.6244787e-08 1.28293538 -0.78707623 -0.55654693 1.28293538 -0.55654693
		 -0.78707623 1.28293538 8.1223934e-09 -0.55654693 1.28293538 0.55654699 1.6244787e-08 1.28293538 0.78707635
		 0.55654699 1.28293538 0.55654699 0.78707641 1.28293538 8.1223934e-09 0.074606359 1.4651221 -0.074606284
		 6.8244219e-08 1.4651221 -0.10550926 6.8244219e-08 1.4651221 3.412211e-08 -0.074606247 1.4651221 -0.074606284
		 -0.10550926 1.4651221 3.2617187e-08 -0.074606247 1.4651221 0.074606322 6.8244219e-08 1.4651221 0.10550934
		 0.074606359 1.4651221 0.074606359 0.10550942 1.4651221 3.5627025e-08 0.69414634 0.99493027 0.69414634
		 1.3983786e-09 0.99493027 0.98167115 -0.69414628 0.99493027 0.69414628 -0.98167109 0.99493027 6.9918932e-10
		 -0.69414628 0.99493027 -0.69414628 1.3983776e-09 0.99493027 -0.98167109 0.69414628 0.99493027 -0.69414628
		 0.98167115 0.99493027 6.9918932e-10 0.65600836 0.39148286 0.65600836 5.5133098e-09 0.39148286 0.92773592
		 -0.6560083 0.39148286 0.6560083 -0.92773581 0.39148286 2.7566549e-09 -0.6560083 0.39148286 -0.6560083
		 5.5133098e-09 0.39148286 -0.92773581 0.6560083 0.39148286 -0.6560083 0.92773592 0.39148286 2.7566549e-09;
	setAttr -s 120 ".ed[0:119]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 1 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 8 1 0 56 0 1 55 0 2 54 0
		 3 53 0 4 52 0 5 51 0 6 50 0 7 57 0 16 0 1 16 1 1 16 2 1 16 3 1 16 4 1 16 5 1 16 6 1
		 16 7 1 8 17 0 9 18 0 17 18 0 10 19 0 18 19 0 11 20 0 19 20 0 12 21 0 20 21 0 13 22 0
		 21 22 0 14 23 0 22 23 0 15 24 0 23 24 0 24 17 0 17 25 0 18 26 0 25 26 1 19 27 0 26 27 1
		 20 28 0 27 28 1 21 29 0 28 29 1 22 30 0 29 30 1 23 31 0 30 31 1 24 32 0 31 32 1 32 25 1
		 25 33 0 26 34 0 33 34 0 34 35 1 33 35 1 27 36 0 34 36 0 36 35 1 28 37 0 36 37 0 37 35 1
		 29 38 0 37 38 0 38 35 1 30 39 0 38 39 0 39 35 1 31 40 0 39 40 0 40 35 1 32 41 0 40 41 0
		 41 35 1 41 33 0 42 14 0 43 13 0 42 43 1 44 12 0 43 44 1 45 11 0 44 45 1 46 10 0 45 46 1
		 47 9 0 46 47 1 48 8 0 47 48 1 49 15 0 48 49 1 49 42 1 50 42 0 51 43 0 50 51 1 52 44 0
		 51 52 1 53 45 0 52 53 1 54 46 0 53 54 1 55 47 0 54 55 1 56 48 0 55 56 1 57 49 0 56 57 1
		 57 50 1;
	setAttr -s 64 -ch 240 ".fc[0:63]" -type "polyFaces" 
		f 4 0 17 116 -17
		mu 0 4 0 1 2 3
		f 4 1 18 114 -18
		mu 0 4 1 4 5 2
		f 4 2 19 112 -19
		mu 0 4 4 6 7 5
		f 4 3 20 110 -20
		mu 0 4 6 8 9 7
		f 4 4 21 108 -21
		mu 0 4 8 10 11 9
		f 4 5 22 106 -22
		mu 0 4 10 12 13 11
		f 4 6 23 119 -23
		mu 0 4 12 14 15 13
		f 4 7 16 118 -24
		mu 0 4 14 16 17 15
		f 3 -1 -25 25
		mu 0 3 18 19 20
		f 3 -2 -26 26
		mu 0 3 21 18 20
		f 3 -3 -27 27
		mu 0 3 22 21 20
		f 3 -4 -28 28
		mu 0 3 23 22 20
		f 3 -5 -29 29
		mu 0 3 24 23 20
		f 3 -6 -30 30
		mu 0 3 25 24 20
		f 3 -7 -31 31
		mu 0 3 26 25 20
		f 3 -8 -32 24
		mu 0 3 19 26 20
		f 3 66 67 -69
		mu 0 3 27 28 29
		f 3 70 71 -68
		mu 0 3 28 30 29
		f 3 73 74 -72
		mu 0 3 30 31 29
		f 3 76 77 -75
		mu 0 3 31 32 29
		f 3 79 80 -78
		mu 0 3 32 33 29
		f 3 82 83 -81
		mu 0 3 33 34 29
		f 3 85 86 -84
		mu 0 3 34 35 29
		f 3 87 68 -87
		mu 0 3 35 27 29
		f 4 8 33 -35 -33
		mu 0 4 36 37 38 39
		f 4 9 35 -37 -34
		mu 0 4 37 40 41 38
		f 4 10 37 -39 -36
		mu 0 4 40 42 43 41
		f 4 11 39 -41 -38
		mu 0 4 42 44 45 43
		f 4 12 41 -43 -40
		mu 0 4 44 46 47 45
		f 4 13 43 -45 -42
		mu 0 4 46 48 49 47
		f 4 14 45 -47 -44
		mu 0 4 48 50 51 49
		f 4 15 32 -48 -46
		mu 0 4 50 36 39 51
		f 4 34 49 -51 -49
		mu 0 4 39 38 52 53
		f 4 36 51 -53 -50
		mu 0 4 38 41 54 52
		f 4 38 53 -55 -52
		mu 0 4 41 43 55 54
		f 4 40 55 -57 -54
		mu 0 4 43 45 56 55
		f 4 42 57 -59 -56
		mu 0 4 45 47 57 56
		f 4 44 59 -61 -58
		mu 0 4 47 49 58 57
		f 4 46 61 -63 -60
		mu 0 4 49 51 59 58
		f 4 47 48 -64 -62
		mu 0 4 51 39 53 59
		f 4 50 65 -67 -65
		mu 0 4 53 52 28 27
		f 4 52 69 -71 -66
		mu 0 4 52 54 30 28
		f 4 54 72 -74 -70
		mu 0 4 54 55 31 30
		f 4 56 75 -77 -73
		mu 0 4 55 56 32 31
		f 4 58 78 -80 -76
		mu 0 4 56 57 33 32
		f 4 60 81 -83 -79
		mu 0 4 57 58 34 33
		f 4 62 84 -86 -82
		mu 0 4 58 59 35 34
		f 4 63 64 -88 -85
		mu 0 4 59 53 27 35
		f 4 -91 88 -14 -90
		mu 0 4 60 61 62 63
		f 4 -93 89 -13 -92
		mu 0 4 64 60 63 65
		f 4 -95 91 -12 -94
		mu 0 4 66 64 65 67
		f 4 -97 93 -11 -96
		mu 0 4 68 66 67 69
		f 4 -99 95 -10 -98
		mu 0 4 70 68 69 71
		f 4 -101 97 -9 -100
		mu 0 4 72 70 71 73
		f 4 -103 99 -16 -102
		mu 0 4 74 75 76 77
		f 4 -104 101 -15 -89
		mu 0 4 61 74 77 62
		f 4 -107 104 90 -106
		mu 0 4 11 13 61 60
		f 4 -109 105 92 -108
		mu 0 4 9 11 60 64
		f 4 -111 107 94 -110
		mu 0 4 7 9 64 66
		f 4 -113 109 96 -112
		mu 0 4 5 7 66 68
		f 4 -115 111 98 -114
		mu 0 4 2 5 68 70
		f 4 -117 113 100 -116
		mu 0 4 3 2 70 72
		f 4 -119 115 102 -118
		mu 0 4 15 17 75 74
		f 4 -120 117 103 -105
		mu 0 4 13 15 74 61;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "polySurface2" -p "teapot_base1";
	rename -uid "877634C8-4142-F0EE-C2E8-62B147B8C9DE";
	setAttr ".t" -type "double3" -0.10936074996491116 0 0.045298705826759149 ;
createNode mesh -n "polySurfaceShape2" -p "polySurface2";
	rename -uid "97A894F4-4760-C106-CF5B-02AA4492F022";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 8 "f[0]" "f[1]" "f[2]" "f[3]" "f[4]" "f[5]" "f[6]" "f[7]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.25 0 0.75 0 0.625
		 0.090079129 0.375 0.090079129 0.375 0.25 0.625 0.25 0.625 0.5 0.375 0.5 0.875 0.090079129
		 0.125 0.090079129 0.125 0.25 0.625 0.65992087 0.375 0.65992087 0.875 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".vt[0:9]"  0.16039723 0.39148286 0.86129707 0.51813883 0.39148286 0.71311569
		 0.36896962 1.17535138 1.36483538 0.72671109 1.17535138 1.21665394 0.2890515 1.17535138 1.1718961
		 0.64679307 1.17535138 1.023714542 0.5924834 0.66360456 0.8925994 0.23474182 0.66360456 1.040780783
		 0.16736595 0.99493027 0.91234589 0.52510756 0.99493027 0.76416451;
	setAttr -s 17 ".ed[0:16]"  0 1 0 2 3 0 4 5 0 0 7 0 1 6 0 2 4 0 3 5 0
		 4 8 0 5 9 0 6 3 0 7 2 0 6 7 1 8 0 0 7 8 1 9 1 0 8 9 0 9 6 1;
	setAttr -s 8 -ch 30 ".fc[0:7]" -type "polyFaces" 
		f 4 0 4 11 -4
		mu 0 4 0 1 2 3
		f 4 1 6 -3 -6
		mu 0 4 4 5 6 7
		f 3 -15 16 -5
		mu 0 3 1 8 2
		f 3 3 13 12
		mu 0 3 0 3 9
		f 4 -12 9 -2 -11
		mu 0 4 3 2 5 4
		f 4 -14 10 5 7
		mu 0 4 9 3 4 10
		f 4 2 8 -16 -8
		mu 0 4 7 6 11 12
		f 4 -17 -9 -7 -10
		mu 0 4 2 8 13 5;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube4";
	rename -uid "1F9B3017-4601-DFC3-62B7-E398800A4334";
	setAttr ".r" -type "double3" 0 -22.5 0 ;
	setAttr ".rp" -type "double3" 0.0016612756105319805 1.7837932226707349 -0.00068795147551625746 ;
	setAttr ".sp" -type "double3" 0.0016612756105319805 1.7837932226707349 -0.00068795147551625746 ;
createNode mesh -n "pCube4Shape" -p "pCube4";
	rename -uid "E2DDC788-4E28-71DB-368D-8181B72F3B74";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:81]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 110 ".uvst[0].uvsp[0:109]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.375 0.5 0.625
		 0.5 0.625 0.75 0.375 0.75 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.375 0.5 0.625 0.5
		 0.625 0.75 0.375 0.75 0.375 0 0.375 0.25 0.625 0.25 0.625 0 0.375 0.75 0.625 0.75
		 0.625 0.5 0.375 0.5 0.375 0 0.625 0 0.625 0 0.375 0 0.625 0.75 0.375 0.75 0.375 0.75
		 0.625 0.75 0.375 0 0.43213779 0 0.43213779 0.25 0.375 0.25 0.43213779 0.5 0.375 0.5
		 0.43213779 0.75 0.375 0.75 0.375 0.75 0.43213779 0.75 0.43213779 1 0.375 1 0.625
		 0 0.875 0 0.875 0.25 0.625 0.25 0.125 0 0.125 0.25 0.57487959 0 0.57487959 0.25 0.57487959
		 0.5 0.57487959 0.75 0.43213779 1 0.57487959 1 0.625 0.5 0.625 0.75 0.57487959 1 0.57487959
		 0.75 0.625 0.75 0.625 1 0.375 1 0.625 1 0.375 0 0.43213779 0 0.43213779 0.25 0.375
		 0.25 0.43213779 0.5 0.375 0.5 0.43213779 0.75 0.375 0.75 0.375 0.75 0.43213779 0.75
		 0.43213779 1 0.375 1 0.625 0 0.875 0 0.875 0.25 0.625 0.25 0.125 0 0.125 0.25 0.57487959
		 0 0.57487959 0.25 0.57487959 0.5 0.57487959 0.75 0.43213779 1 0.57487959 1 0.625
		 0.5 0.625 0.75 0.57487959 1 0.57487959 0.75 0.625 0.75 0.625 1 0.375 1 0.625 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 88 ".vt[0:87]"  0.16012077 2.24849772 0.54335344 0.27098632 2.24849772 0.49743134
		 0.18136922 2.36849785 0.59465176 0.29223484 2.36849785 0.54872972 -0.29223484 2.36849785 -0.54872972
		 -0.18136922 2.36849785 -0.59465176 -0.27098632 2.24849772 -0.49743134 -0.16012077 2.24849772 -0.54335344
		 0.26335019 1.89923418 0.79257083 0.37421569 1.89923418 0.74664879 0.42113128 1.89923418 0.85212767
		 0.30751336 1.89923418 0.89919007 -0.41837868 1.89923418 -0.85326785 -0.30476078 1.89923418 -0.90033013
		 -0.26335019 1.89923418 -0.79257083 -0.37421569 1.89923418 -0.74664879 0.28202489 1.23833978 0.83507615
		 0.39289036 1.23833978 0.78915387 0.44255906 1.19908857 0.90227449 0.32894108 1.19908857 0.94933665
		 -0.43868595 1.19908857 -0.90387839 -0.32506806 1.19908857 -0.95094055 -0.28020075 1.23833978 -0.83583105
		 -0.39106613 1.23833978 -0.78990883 0.28159177 1.31521046 0.83499795 0.32575476 1.31521046 0.94161677
		 0.43937278 1.31521046 0.89455467 0.39245728 1.31521046 0.78907591 -0.39131728 1.31521046 -0.78954756
		 -0.2804518 1.31521046 -0.83546966 -0.32186234 1.31521046 -0.94322884 -0.43548021 1.31521046 -0.89616662
		 0.33430821 1.37235188 0.64869231 0.22344261 1.37235188 0.69461435 0.33474123 1.2954812 0.64877027
		 0.22387575 1.2954812 0.69469243 -0.3331683 1.37235212 -0.6491639 -0.22230287 1.37235212 -0.69508588
		 -0.33291721 1.29548156 -0.64952517 -0.22205184 1.29548156 -0.69544733 0.20132858 1.36649966 0.83776635
		 0.43347016 1.36649966 0.74161011 0.20132858 1.49219608 0.83776635 0.43347016 1.49219608 0.74161011
		 0.16457973 1.49219608 0.7490468 0.3967213 1.49219608 0.65289056 0.16457973 1.36649966 0.7490468
		 0.3967213 1.36649966 0.65289056 0.25438482 1.36649966 0.8157897 0.25438482 1.49219608 0.8157897
		 0.21763596 1.49219608 0.72707015 0.21763596 1.36649966 0.72707015 0.38386431 1.36649966 0.7621575
		 0.38386431 1.49219608 0.7621575 0.34711549 1.49219608 0.67343795 0.34711549 1.36649966 0.67343795
		 0.16457973 1.20868683 0.7490468 0.21763596 1.20868683 0.72707015 0.25438482 1.20868683 0.8157897
		 0.20132858 1.20868683 0.83776635 0.34711549 1.20868683 0.67343795 0.38386431 1.20868683 0.7621575
		 0.3967213 1.20868683 0.65289056 0.43347016 1.20868683 0.74161011 -0.39112586 1.36649966 -0.66319442
		 -0.15898427 1.36649966 -0.75935066 -0.39112586 1.49219608 -0.66319442 -0.15898427 1.49219608 -0.75935066
		 -0.42787468 1.49219608 -0.75191396 -0.19573313 1.49219608 -0.8480702 -0.42787468 1.36649966 -0.75191396
		 -0.19573313 1.36649966 -0.8480702 -0.33806965 1.36649966 -0.68517107 -0.33806965 1.49219608 -0.68517107
		 -0.3748185 1.49219608 -0.77389061 -0.3748185 1.36649966 -0.77389061 -0.20859012 1.36649966 -0.73880327
		 -0.20859012 1.49219608 -0.73880327 -0.24533896 1.49219608 -0.82752281 -0.24533896 1.36649966 -0.82752281
		 -0.42787468 1.20868683 -0.75191396 -0.3748185 1.20868683 -0.77389061 -0.33806965 1.20868683 -0.68517107
		 -0.39112586 1.20868683 -0.66319442 -0.24533896 1.20868683 -0.82752281 -0.20859012 1.20868683 -0.73880327
		 -0.19573313 1.20868683 -0.8480702 -0.15898427 1.20868683 -0.75935066;
	setAttr -s 164 ".ed[0:163]"  0 1 1 2 3 1 4 5 1 6 7 1 0 2 1 1 3 1 2 4 0
		 3 5 0 4 6 1 5 7 1 6 0 0 7 1 0 0 8 0 1 9 0 8 9 0 3 10 0 9 10 0 2 11 0 11 10 1 8 11 1
		 4 12 0 5 13 0 12 13 1 7 14 0 13 14 0 6 15 0 15 14 0 12 15 1 8 24 0 9 27 0 16 17 1
		 10 26 0 17 18 0 11 25 0 19 18 0 16 19 0 12 31 0 13 30 0 20 21 0 14 29 0 21 22 0 15 28 0
		 23 22 1 20 23 0 24 16 1 25 19 0 24 25 1 26 18 0 25 26 1 27 17 1 26 27 1 27 24 0 28 23 1
		 29 22 1 28 29 0 30 21 0 29 30 1 31 20 0 30 31 1 31 28 1 27 32 0 24 33 0 32 33 0 17 34 0
		 32 34 0 16 35 0 35 34 0 33 35 0 28 36 0 29 37 0 36 37 0 23 38 0 36 38 0 22 39 0 38 39 0
		 37 39 0 40 48 1 42 49 0 44 50 0 46 51 1 40 42 0 41 43 0 42 44 0 43 45 0 44 46 0 45 47 0
		 46 40 1 47 41 1 48 52 0 49 53 0 48 49 1 50 54 0 49 50 1 51 55 0 50 51 1 51 48 0 52 41 1
		 53 43 0 52 53 1 54 45 0 53 54 1 55 47 1 54 55 1 55 52 0 46 56 0 51 57 0 56 57 0 48 58 0
		 57 58 0 40 59 0 59 58 0 56 59 0 55 60 0 52 61 0 60 61 0 47 62 0 60 62 0 41 63 0 62 63 0
		 61 63 0 64 72 1 66 73 0 68 74 0 70 75 1 64 66 0 65 67 0 66 68 0 67 69 0 68 70 0 69 71 0
		 70 64 1 71 65 1 72 76 0 73 77 0 72 73 1 74 78 0 73 74 1 75 79 0 74 75 1 75 72 0 76 65 1
		 77 67 0 76 77 1 78 69 0 77 78 1 79 71 1 78 79 1 79 76 0 70 80 0 75 81 0 80 81 0 72 82 0
		 81 82 0 64 83 0 83 82 0 80 83 0 79 84 0 76 85 0 84 85 0 71 86 0 84 86 0 65 87 0 86 87 0
		 85 87 0;
	setAttr -s 82 -ch 328 ".fc[0:81]" -type "polyFaces" 
		f 4 30 32 -35 -36
		mu 0 4 22 23 24 25
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 38 40 -43 -44
		mu 0 4 26 27 28 29
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 0 13 -15 -13
		mu 0 4 0 1 15 14
		f 4 5 15 -17 -14
		mu 0 4 1 3 16 15
		f 4 -2 17 18 -16
		mu 0 4 3 2 17 16
		f 4 -5 12 19 -18
		mu 0 4 2 0 14 17
		f 4 2 21 -23 -21
		mu 0 4 4 5 19 18
		f 4 9 23 -25 -22
		mu 0 4 5 7 20 19
		f 4 -4 25 26 -24
		mu 0 4 7 6 21 20
		f 4 -9 20 27 -26
		mu 0 4 6 4 18 21
		f 4 14 29 51 -29
		mu 0 4 14 15 33 30
		f 4 16 31 50 -30
		mu 0 4 15 16 32 33
		f 4 -19 33 48 -32
		mu 0 4 16 17 31 32
		f 4 -20 28 46 -34
		mu 0 4 17 14 30 31
		f 4 22 37 58 -37
		mu 0 4 18 19 36 37
		f 4 24 39 56 -38
		mu 0 4 19 20 35 36
		f 4 -27 41 54 -40
		mu 0 4 20 21 34 35
		f 4 -28 36 59 -42
		mu 0 4 21 18 37 34
		f 4 -47 44 35 -46
		mu 0 4 31 30 22 25
		f 4 -49 45 34 -48
		mu 0 4 32 31 25 24
		f 4 -51 47 -33 -50
		mu 0 4 33 32 24 23
		f 4 -63 64 -67 -68
		mu 0 4 38 39 40 41
		f 4 -71 72 74 -76
		mu 0 4 42 43 44 45
		f 4 -57 53 -41 -56
		mu 0 4 36 35 28 27
		f 4 -59 55 -39 -58
		mu 0 4 37 36 27 26
		f 4 -60 57 43 -53
		mu 0 4 34 37 26 29
		f 4 -52 60 62 -62
		mu 0 4 30 33 39 38
		f 4 49 63 -65 -61
		mu 0 4 33 23 40 39
		f 4 -31 65 66 -64
		mu 0 4 23 22 41 40
		f 4 -45 61 67 -66
		mu 0 4 22 30 38 41
		f 4 -55 68 70 -70
		mu 0 4 35 34 43 42
		f 4 52 71 -73 -69
		mu 0 4 34 29 44 43
		f 4 42 73 -75 -72
		mu 0 4 29 28 45 44
		f 4 -54 69 75 -74
		mu 0 4 28 35 42 45
		f 4 76 90 -78 -81
		mu 0 4 46 47 48 49
		f 4 77 92 -79 -83
		mu 0 4 49 48 50 51
		f 4 78 94 -80 -85
		mu 0 4 51 50 52 53
		f 4 106 108 -111 -112
		mu 0 4 54 55 56 57
		f 4 -88 -86 -84 -82
		mu 0 4 58 59 60 61
		f 4 86 80 82 84
		mu 0 4 62 46 49 63
		f 4 88 98 -90 -91
		mu 0 4 47 64 65 48
		f 4 -93 89 100 -92
		mu 0 4 50 48 65 66
		f 4 -95 91 102 -94
		mu 0 4 52 50 66 67
		f 4 -96 93 103 -89
		mu 0 4 68 52 67 69
		f 4 96 81 -98 -99
		mu 0 4 64 58 61 65
		f 4 -101 97 83 -100
		mu 0 4 66 65 61 70
		f 4 -103 99 85 -102
		mu 0 4 67 66 70 71
		f 4 -115 116 118 -120
		mu 0 4 72 73 74 75
		f 4 79 105 -107 -105
		mu 0 4 53 52 55 54
		f 4 95 107 -109 -106
		mu 0 4 52 68 56 55
		f 4 -77 109 110 -108
		mu 0 4 68 76 57 56
		f 4 -87 104 111 -110
		mu 0 4 76 53 54 57
		f 4 -104 112 114 -114
		mu 0 4 69 67 73 72
		f 4 101 115 -117 -113
		mu 0 4 67 71 74 73
		f 4 87 117 -119 -116
		mu 0 4 71 77 75 74
		f 4 -97 113 119 -118
		mu 0 4 77 69 72 75
		f 4 120 134 -122 -125
		mu 0 4 78 79 80 81
		f 4 121 136 -123 -127
		mu 0 4 81 80 82 83
		f 4 122 138 -124 -129
		mu 0 4 83 82 84 85
		f 4 150 152 -155 -156
		mu 0 4 86 87 88 89
		f 4 -132 -130 -128 -126
		mu 0 4 90 91 92 93
		f 4 130 124 126 128
		mu 0 4 94 78 81 95
		f 4 132 142 -134 -135
		mu 0 4 79 96 97 80
		f 4 -137 133 144 -136
		mu 0 4 82 80 97 98
		f 4 -139 135 146 -138
		mu 0 4 84 82 98 99
		f 4 -140 137 147 -133
		mu 0 4 100 84 99 101
		f 4 140 125 -142 -143
		mu 0 4 96 90 93 97
		f 4 -145 141 127 -144
		mu 0 4 98 97 93 102
		f 4 -147 143 129 -146
		mu 0 4 99 98 102 103
		f 4 -159 160 162 -164
		mu 0 4 104 105 106 107
		f 4 123 149 -151 -149
		mu 0 4 85 84 87 86
		f 4 139 151 -153 -150
		mu 0 4 84 100 88 87
		f 4 -121 153 154 -152
		mu 0 4 100 108 89 88
		f 4 -131 148 155 -154
		mu 0 4 108 85 86 89
		f 4 -148 156 158 -158
		mu 0 4 101 99 105 104
		f 4 145 159 -161 -157
		mu 0 4 99 103 106 105
		f 4 131 161 -163 -160
		mu 0 4 103 109 107 106
		f 4 -141 157 163 -162
		mu 0 4 109 101 104 107;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "FA3AB87C-496B-C2E1-C95D-89968CCC48CE";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "D4ED0AC5-4449-279E-FFA1-5DBBB9C3FE11";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "06A30058-42B7-C909-5DD8-BA887934288D";
createNode displayLayerManager -n "layerManager";
	rename -uid "BFA688A8-4205-C45F-E513-2F94CD0DECFF";
createNode displayLayer -n "defaultLayer";
	rename -uid "EF630307-44B4-8B4D-7CB5-4D90318AA617";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "305BAB80-42AB-ACDF-FEF2-BDB35595548B";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "B5EFB367-4EE7-5208-5966-7190A22F77B9";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "D604BDB3-4F8C-25A5-422C-6389B4E68EE0";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 945\n            -height 504\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 944\n            -height 504\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 945\n            -height 504\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1899\n            -height 1096\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n"
		+ "            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
		+ "            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n"
		+ "            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n"
		+ "                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n"
		+ "                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1899\\n    -height 1096\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1899\\n    -height 1096\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "B393DE08-4FD3-8DB0-ECA1-F9BEDA119092";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode groupId -n "groupId4";
	rename -uid "E81F8088-47F6-6221-0713-5D8A1ABD285D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	rename -uid "4BEFE98A-4659-93F6-E9B5-7A8A2CE56A6E";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6";
	rename -uid "158C8037-4A47-351A-A170-649D4C5B58B7";
	setAttr ".ihi" 0;
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
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 3 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "groupId4.id" "polySurfaceShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape1.iog.og[0].gco";
connectAttr "groupId5.id" "polySurfaceShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape2.iog.og[0].gco";
connectAttr "groupId6.id" "pCube4Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCube4Shape.iog.og[0].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "teapot_lid_handleShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCube4Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
// End of teapot_ML.ma
