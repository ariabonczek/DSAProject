//Maya ASCII 2016 scene
//Name: clown.ma
//Last modified: Wed, Dec 09, 2015 08:24:53 PM
//Codeset: 1252
requires maya "2016";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201506101600-962028";
fileInfo "osv" "Microsoft Windows 8 Enterprise Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "063B0B74-452B-4686-3186-8CB5B51C41EE";
	setAttr ".t" -type "double3" 24.451708438334265 13.979192158883732 3.6549361839393519 ;
	setAttr ".r" -type "double3" -29.738352729758773 75.400000000000176 6.3088879656606231e-015 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "432060D1-4881-B033-2FBA-19B05AAFFFD9";
	setAttr -k off ".v";
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 29.727993589300034;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "C5EC4AF2-4338-3AEF-6A52-1389B156BEED";
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "D0737A67-42A1-32EB-725A-4FB5E6B467CA";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 22.524044726263384;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "FFB3999F-4D20-A30D-6E0B-F1B3BB3B182D";
	setAttr ".t" -type "double3" 2.4386710596938266 -0.7858497692235048 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "2320FF20-4D5B-712C-CBAF-F6B3253D7976";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 9.9619736667209722;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "4C01F3BF-416F-2386-EE0F-A68125F81EB2";
	setAttr ".t" -type "double3" 100.1 -1.2570317449296233 0.67310250482864298 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "229C5510-449F-A54A-ED4B-B98D33715336";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 16.921931928216846;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "imagePlane1";
	rename -uid "04B381EA-41F2-5F02-03E7-3FA7727F1895";
	setAttr ".t" -type "double3" 0 0 -10.508224156934181 ;
createNode imagePlane -n "imagePlaneShape1" -p "imagePlane1";
	rename -uid "661BD5EB-406B-6F8C-E0C2-45A3547B3E65";
	setAttr -k off ".v";
	setAttr ".fc" 101;
	setAttr ".imn" -type "string" "D:/Users/jl4312/Clown_Level_3_Mouth_Open_02.jpg";
	setAttr ".cov" -type "short2" 1024 1302 ;
	setAttr ".dlc" no;
	setAttr ".w" 10.24;
	setAttr ".h" 13.02;
	setAttr ".cs" -type "string" "sRGB";
createNode transform -n "polySurface1";
	rename -uid "6D8E4662-4813-A770-BEB6-CF9B5CE52562";
	setAttr ".t" -type "double3" 0 0 0.33694292923456126 ;
createNode transform -n "transform2" -p "polySurface1";
	rename -uid "B924B881-4AC7-355D-BA6E-99A58320B2E0";
createNode mesh -n "polySurfaceShape1" -p "transform2";
	rename -uid "3FC97835-40FE-44C7-7832-7CB1FED834F1";
	setAttr -s 2 ".wm";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog";
	setAttr -s 2 ".iog[0].og";
	setAttr -s 2 ".iog[1].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".ciog";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "SculptFreezeColorTemp";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode transform -n "pCylinder1";
	rename -uid "846D234D-4470-5E8C-3B23-4BABACD944F6";
	setAttr ".t" -type "double3" 0 3.6736403110549509 -0.17225610647809952 ;
	setAttr ".r" -type "double3" -15.285893964962407 0 0 ;
	setAttr ".s" -type "double3" 1.817615658127067 1.817615658127067 1.817615658127067 ;
	setAttr ".rp" -type "double3" 0 -2.5733701187289091 0 ;
	setAttr ".sp" -type "double3" 0 -1.4175879955291739 0 ;
	setAttr ".spt" -type "double3" 0 -1.1557821231997332 0 ;
createNode transform -n "transform8" -p "pCylinder1";
	rename -uid "1477A063-4E10-EEC8-2F40-C98E42384EC5";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape1" -p "transform8";
	rename -uid "234BD5DB-43C8-91A3-864E-84999B3574E8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.1562500074505806 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 26 ".pt";
	setAttr ".pt[40]" -type "float3" -7.3901592e-009 -0.011606927 -0.20490842 ;
	setAttr ".pt[41]" -type "float3" -0.14489149 -0.011607014 -0.1448914 ;
	setAttr ".pt[42]" -type "float3" -0.2049077 -0.011607014 5.418427e-008 ;
	setAttr ".pt[43]" -type "float3" -0.14489149 -0.011607014 0.1448915 ;
	setAttr ".pt[44]" -type "float3" -7.3901592e-009 -0.011607014 0.20490842 ;
	setAttr ".pt[45]" -type "float3" 0.14489149 -0.011607014 0.14489159 ;
	setAttr ".pt[46]" -type "float3" 0.2049077 -0.011607014 5.418427e-008 ;
	setAttr ".pt[47]" -type "float3" 0.14489147 -0.011607014 -0.1448914 ;
	setAttr ".pt[48]" -type "float3" -7.3901592e-009 0.011607014 -0.20490842 ;
	setAttr ".pt[49]" -type "float3" -0.14489149 0.011606927 -0.1448914 ;
	setAttr ".pt[50]" -type "float3" -0.2049077 0.011606927 5.418427e-008 ;
	setAttr ".pt[51]" -type "float3" -0.14489149 0.011606927 0.1448915 ;
	setAttr ".pt[52]" -type "float3" -7.3901592e-009 0.011606927 0.20490842 ;
	setAttr ".pt[53]" -type "float3" 0.14489149 0.011606927 0.14489159 ;
	setAttr ".pt[54]" -type "float3" 0.2049077 0.011606927 5.418427e-008 ;
	setAttr ".pt[55]" -type "float3" 0.14489147 0.011606927 -0.1448914 ;
	setAttr ".pt[64]" -type "float3" 3.0181148e-008 0.53238952 0.21600521 ;
	setAttr ".pt[65]" -type "float3" 3.0181148e-008 0.53238952 1.0673086e-008 ;
	setAttr ".pt[66]" -type "float3" 0.15273859 0.53238952 0.15273856 ;
	setAttr ".pt[67]" -type "float3" 0.21600491 0.53238952 1.0673086e-008 ;
	setAttr ".pt[68]" -type "float3" 0.15273859 0.53238952 -0.15273857 ;
	setAttr ".pt[69]" -type "float3" 3.0181148e-008 0.53238952 -0.21600521 ;
	setAttr ".pt[70]" -type "float3" -0.15273854 0.53238952 -0.15273857 ;
	setAttr ".pt[71]" -type "float3" -0.21600491 0.53238952 1.0673086e-008 ;
	setAttr ".pt[72]" -type "float3" -0.15273854 0.53238952 0.15273856 ;
createNode transform -n "polySurface3";
	rename -uid "2FB8A36C-4120-9CD9-EC2A-88A8C4BDD70D";
createNode transform -n "transform5" -p "polySurface3";
	rename -uid "5E5C22B1-43FB-06DB-1D4E-0D9A066BCAA6";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape2" -p "transform5";
	rename -uid "9C94D264-4E77-5F90-4BE0-0ABE280E4CE7";
	setAttr -s 2 ".wm";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog";
	setAttr -s 2 ".iog[0].og";
	setAttr -s 2 ".iog[1].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".ciog";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".pt";
	setAttr ".pt[2]" -type "float3" 0 0 -1.2904606 ;
	setAttr ".pt[3]" -type "float3" 0 0 -1.2904606 ;
	setAttr ".pt[4]" -type "float3" 0 0 -1.2904606 ;
	setAttr ".pt[7]" -type "float3" 0 0 -1.2904606 ;
	setAttr ".pt[8]" -type "float3" 0 0 -0.59109873 ;
	setAttr ".pt[9]" -type "float3" 0 0 -0.59109873 ;
	setAttr ".pt[10]" -type "float3" 0 0 -0.59109873 ;
	setAttr ".pt[11]" -type "float3" 0 0 -0.59109873 ;
	setAttr ".dr" 1;
createNode transform -n "polySurface4";
	rename -uid "08E9032B-4668-C611-4B0C-A1BEA40977C6";
	setAttr ".t" -type "double3" 0 0 -0.051577741950497691 ;
	setAttr ".s" -type "double3" -1 1 1 ;
createNode transform -n "transform6" -p "polySurface4";
	rename -uid "E6A1889F-46D0-46AE-37D5-19A26EEAC2C7";
	setAttr ".v" no;
createNode transform -n "polySurface5";
	rename -uid "7BE8C7C8-4436-E0FF-38CA-E2968B8154C8";
	setAttr ".t" -type "double3" 0 0 0.33694292923456126 ;
	setAttr ".s" -type "double3" -1 1 1 ;
createNode transform -n "transform1" -p "polySurface5";
	rename -uid "46E47180-4396-2313-541A-CF9F629AA94B";
createNode transform -n "polySurface6";
	rename -uid "AD910001-4244-A2DA-E4B0-57862A4CDE40";
createNode transform -n "transform3" -p "polySurface6";
	rename -uid "E404CFCD-4196-AD6F-2FE9-A9A9594B31EE";
	setAttr ".v" no;
createNode mesh -n "polySurface6Shape" -p "transform3";
	rename -uid "BA0CD6CE-4500-5826-F388-F3A2625EB256";
	setAttr -s 2 ".wm";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog";
	setAttr -s 2 ".iog[0].og";
	setAttr -s 2 ".iog[1].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.54659045115113258 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "SculptFreezeColorTemp";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode transform -n "polySurface7";
	rename -uid "189A48A4-415A-C173-90C2-6A83CB2E7E88";
	setAttr ".s" -type "double3" -1 1 1 ;
createNode transform -n "transform4" -p "polySurface7";
	rename -uid "F1B4137D-4F3C-6741-9A0A-7A8989A6D65E";
	setAttr ".v" no;
createNode transform -n "polySurface8";
	rename -uid "5CA081A5-43E1-046C-4E53-4197D600E476";
createNode transform -n "transform7" -p "polySurface8";
	rename -uid "11A7A4A9-4E10-3E78-A0B2-EE8DA7C4950F";
	setAttr ".v" no;
createNode mesh -n "polySurface8Shape" -p "transform7";
	rename -uid "12D746DA-4B44-E294-AB0A-D9A581F7D09B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "SculptFreezeColorTemp";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode transform -n "group1";
	rename -uid "C22B801D-4087-EFFB-7EC0-AC82223E327B";
createNode transform -n "pCube1" -p "group1";
	rename -uid "8AAB8E84-4E49-B881-1F22-06B6F6FEB8CE";
	setAttr ".t" -type "double3" 0.4334631649734228 0.10589797367812737 0.36247339882445573 ;
	setAttr ".s" -type "double3" 1.3509934556893246 1.3509934556893246 1.3509934556893246 ;
	setAttr ".spt" -type "double3" 0.063059957542736689 0.0064676921536650465 0 ;
createNode mesh -n "pCubeShape1" -p "|group1|pCube1";
	rename -uid "C80AACE4-4DA1-FA11-3F3D-D9AB06A2AD73";
	setAttr -k off ".v";
	setAttr -s 2 ".iog";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 26 ".pt[0:25]" -type "float3"  0.29254299 -0.0239003 0.56636596 
		0.4875392 -0.0239003 0.56636596 0.29254299 0.17109618 0.56636596 0.4875392 0.17109618 
		0.56636596 0.29254299 0.17109618 0.37136936 0.4875392 0.17109618 0.37136936 0.29254299 
		-0.0239003 0.37136936 0.4875392 -0.0239003 0.37136936 0.52166349 0.073597901 0.60049027 
		0.39004114 0.20522046 0.60049027 0.25841868 0.20522046 0.4688676 0.52166349 0.20522046 
		0.4688676 0.39004114 0.20522046 0.33724505 0.25841868 0.073597901 0.33724505 0.52166349 
		0.073597901 0.33724505 0.39004114 -0.058024555 0.33724505 0.25841868 -0.058024555 
		0.4688676 0.52166349 -0.058024555 0.4688676 0.39004114 -0.058024555 0.60049027 0.25841868 
		0.073597901 0.60049027 0.39004114 0.073597901 0.64436448 0.39004114 0.24909469 0.4688676 
		0.39004114 0.073597901 0.29337078 0.39004114 -0.10189888 0.4688676 0.56553787 0.073597901 
		0.4688676 0.21454433 0.073597901 0.4688676;
createNode transform -n "group2";
	rename -uid "23BA6573-4585-9555-8B20-1E95C2456C47";
	setAttr ".s" -type "double3" -1 1 1 ;
createNode transform -n "pCylinder2";
	rename -uid "D751FD52-421E-DFE7-61A8-2F80775A383B";
createNode mesh -n "pCylinder2Shape" -p "pCylinder2";
	rename -uid "40B96E90-4950-84F0-9EAD-6FABCF4212FF";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25555198779329658 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "SculptFreezeColorTemp";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 11 ".pt";
	setAttr ".pt[797]" -type "float3" 0.15122059 0 0 ;
	setAttr ".pt[801]" -type "float3" -0.12012708 -0.19689229 0 ;
	setAttr ".pt[802]" -type "float3" -0.096407346 -0.19689229 0 ;
	setAttr ".pt[803]" -type "float3" -0.070527419 -0.19689229 0 ;
	setAttr ".pt[804]" -type "float3" -0.055932209 -0.19689229 0 ;
	setAttr ".pt[809]" -type "float3" -0.15122059 0 0 ;
	setAttr ".pt[813]" -type "float3" 0.12012708 -0.19689229 0 ;
	setAttr ".pt[814]" -type "float3" 0.096407346 -0.19689229 0 ;
	setAttr ".pt[815]" -type "float3" 0.070527419 -0.19689229 0 ;
	setAttr ".pt[816]" -type "float3" 0.055932209 -0.19689229 0 ;
parent -s -nc -r -add "|polySurface1|transform2|polySurfaceShape1" "transform1" ;
parent -s -nc -r -add "|polySurface3|transform5|polySurfaceShape2" "transform6" ;
parent -s -nc -r -add "|polySurface6|transform3|polySurface6Shape" "transform4" ;
parent -s -nc -r -add "|group1|pCube1" "group2" ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "05C1E8A6-4341-AEAB-4B40-58B1D21E5C91";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "D01E565D-452A-0A63-C93A-FA8EF91CF819";
createNode displayLayer -n "defaultLayer";
	rename -uid "4A2A7B71-466E-4B66-6C36-869D14F034A0";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "F9024B6F-42CD-262F-FF32-099E343226EE";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "1C983CF9-427F-6F2C-BDAE-A1A8CD35E7EB";
	setAttr ".g" yes;
createNode polyCreateFace -n "polyCreateFace1";
	rename -uid "B073D7D2-4ED1-A629-3091-96A35DD0299A";
	setAttr -s 4 ".v[0:3]" -type "float3"  1.624337 -0.089884304 0 0.90526301 
		-0.16692799 0 1.457409 -0.98872697 0 1.765584 -0.64203101 0;
	setAttr ".l[0]"  4;
	setAttr ".tx" 1;
createNode polyAppendVertex -n "polyAppendVertex1";
	rename -uid "7E950805-4EFD-EAE2-AD7A-5389C3902631";
	setAttr ".uopa" yes;
	setAttr -s 2 ".v[0:1]" -type "float3"  0.52004498 -0.65487099 0 1.508772 
		-1.2969019 0;
	setAttr -s 4 ".d[0:3]"  1 -1 -1 2;
	setAttr ".tx" 2;
createNode polyAppendVertex -n "polyAppendVertex2";
	rename -uid "ED405C2D-40D4-906A-8AC3-09BAD0DD7A01";
	setAttr ".uopa" yes;
	setAttr -s 4 ".v[0:3]" -type "float3"  0.93094403 -1.502352 0 0.37879801 
		-0.770437 0 0.0064203101 -0.74475598 0 0.0192609 -1.438149 0;
	setAttr -s 4 ".d[0:3]"  -1 -1 -1 -1;
	setAttr ".tx" 2;
createNode polyAppendVertex -n "polyAppendVertex3";
	rename -uid "B20E78E7-480A-A3E6-50BE-FCB50438AF40";
	setAttr ".uopa" yes;
	setAttr -s 4 ".d[0:3]"  6 5 4 7;
	setAttr ".tx" 2;
createNode polyAppendVertex -n "polyAppendVertex4";
	rename -uid "F948065A-4D72-46F8-D872-2BB528406E17";
	setAttr ".uopa" yes;
	setAttr -s 2 ".v[0:1]" -type "float3"  1.88115 -0.64203101 0 2.0994401 
		-0.38521799 0;
	setAttr -s 4 ".d[0:3]"  0 3 -1 -1;
	setAttr ".tx" 2;
createNode polyTweak -n "polyTweak1";
	rename -uid "18C81421-40B7-22BF-BC55-9898C48849BB";
	setAttr ".uopa" yes;
	setAttr ".tk[5]" -type "float3"  0.038521886 -0.025681257 0;
createNode polyAppendVertex -n "polyAppendVertex5";
	rename -uid "CE5B0F5F-45DA-316C-7551-DA82E5319772";
	setAttr ".uopa" yes;
	setAttr -s 2 ".v[0:1]" -type "float3"  1.752744 -0.86032099 0 2.3434119 
		-0.770437 0;
	setAttr -s 4 ".d[0:3]"  10 -1 -1 11;
	setAttr ".tx" 2;
createNode polyAppendVertex -n "polyAppendVertex6";
	rename -uid "5665C0E9-4982-751F-F079-87AB17666FCA";
	setAttr ".uopa" yes;
	setAttr -s 2 ".v[0:1]" -type "float3"  2.4492841 -1.228955 0 1.646675 
		-1.025013 0;
	setAttr -s 4 ".d[0:3]"  -1 13 12 -1;
	setAttr ".tx" 2;
createNode polyAppendVertex -n "polyAppendVertex7";
	rename -uid "15519FA2-4DA1-E0B4-5CD7-C2AF71D15FF3";
	setAttr ".uopa" yes;
	setAttr -s 2 ".v[0:1]" -type "float3"  1.837459 -1.419739 0 2.455863 
		-1.636838 0;
	setAttr -s 4 ".d[0:3]"  15 -1 -1 14;
	setAttr ".tx" 2;
createNode polyAppendVertex -n "polyAppendVertex8";
	rename -uid "4D836092-4A04-F4E5-1108-02AEF03A13FB";
	setAttr ".uopa" yes;
	setAttr -s 4 ".v[0:3]" -type "float3"  1.7458971 -3.8455939 0 0.958718 
		-3.7040789 0 0.75528902 -4.2966738 0 1.162146 -4.968873 0;
	setAttr -s 4 ".d[0:3]"  -1 -1 -1 -1;
	setAttr ".tx" 2;
createNode polyTweak -n "polyTweak2";
	rename -uid "46AD79F6-468A-C8AF-3C5C-E1BBF4E40730";
	setAttr ".uopa" yes;
	setAttr -s 15 ".tk";
	setAttr ".tk[15]" -type "float3" -0.026315093 0 0 ;
createNode polyAppendVertex -n "polyAppendVertex9";
	rename -uid "95F982BE-443D-C630-565E-FE99FBCDB9AD";
	setAttr ".uopa" yes;
	setAttr -s 2 ".v[0:1]" -type "float3"  0.596084 -5.1457672 0 0.401501 
		-4.3939662 0;
	setAttr -s 4 ".d[0:3]"  -1 21 20 -1;
	setAttr ".tx" 2;
createNode polyAppendVertex -n "polyAppendVertex10";
	rename -uid "781029C2-4B4B-ABD7-5E66-43A39350FA8B";
	setAttr ".uopa" yes;
	setAttr -s 2 ".v[0:1]" -type "float3"  0.0123334 -5.1723008 0 -0.0053560701 
		-4.4116559 0;
	setAttr -s 4 ".d[0:3]"  -1 22 23 -1;
	setAttr ".tx" 2;
createNode polySplit -n "polySplit1";
	rename -uid "2A8CE101-43D4-2C8A-80C1-05AE5B48176F";
	setAttr -s 2 ".e[0:1]"  0.60009801 0.39990199;
	setAttr -s 2 ".d[0:1]"  -2147483623 -2147483621;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyAppendVertex -n "polyAppendVertex11";
	rename -uid "3210409A-4CD6-049D-C040-0A87286C66A2";
	setAttr ".uopa" yes;
	setAttr -s 2 ".v[0:1]" -type "float3"  1.215214 -3.040725 0 1.896257 
		-3.3326011 0;
	setAttr -s 4 ".d[0:3]"  -1 19 18 -1;
	setAttr ".tx" 2;
createNode polyTweak -n "polyTweak3";
	rename -uid "33062505-421D-69C5-457A-3E84555B6F7E";
	setAttr ".uopa" yes;
	setAttr -s 28 ".tk[5:27]" -type "float3"  0.044223547 -0.05306828 0
		 0 -0.0088447332 0 0 0 0 0 0 0 -0.0088447137 -0.15920484 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.044223607 0.14151549 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0.061913013 -0.1061368 0 0 0 0;
createNode polyAppendVertex -n "polyAppendVertex12";
	rename -uid "CE57D073-4585-1DE0-355C-43B612E34C97";
	setAttr ".uopa" yes;
	setAttr -s 2 ".v[0:1]" -type "float3"  1.5336241 -2.4304399 0 2.1615989 
		-2.678092 0;
	setAttr -s 4 ".d[0:3]"  -1 28 29 -1;
	setAttr ".tx" 2;
createNode polyAppendVertex -n "polyAppendVertex13";
	rename -uid "F6279DFF-4832-A1E5-205F-DF9B03344898";
	setAttr ".uopa" yes;
	setAttr -s 2 ".v[0:1]" -type "float3"  1.754742 -1.8732229 0 2.3827169 
		-2.129719 0;
	setAttr -s 4 ".d[0:3]"  -1 30 31 -1;
	setAttr ".tx" 2;
createNode polyAppendVertex -n "polyAppendVertex14";
	rename -uid "B40D93D6-4FDA-D7F8-D775-10BDD56224D2";
	setAttr ".uopa" yes;
	setAttr -s 4 ".d[0:3]"  33 17 16 32;
	setAttr ".tx" 2;
createNode polyTweak -n "polyTweak4";
	rename -uid "CE062090-4BBC-E084-DFF4-2C9ECD60D80E";
	setAttr ".uopa" yes;
	setAttr -s 34 ".tk[1:33]" -type "float3"  0.20520896 0.12071112 0 0
		 0 0 0 0 0 0.25952888 0.25952891 0 0 -0.018106699 0 0.048284471 -0.12674665 0 0 0
		 0 0 0 0 -0.018106667 -0.10863996 0 0 0 0 0 0 0 -0.044223547 0.02653414 0 0 0 0 0
		 0 0 -0.044223547 0 0 -0.035378814 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode polySplit -n "polySplit2";
	rename -uid "5B4A2B23-4552-A6DD-176B-1498A0ED8207";
	setAttr -s 17 ".e[0:16]"  0.58992302 0.58992302 0.58992302 0.41007701
		 0.41007701 0.41007701 0.41007701 0.41007701 0.58992302 0.58992302 0.58992302 0.58992302
		 0.58992302 0.41007701 0.41007701 0.58992302 0.41007701;
	setAttr -s 17 ".d[0:16]"  -2147483616 -2147483619 -2147483620 -2147483611 -2147483622 -2147483610 
		-2147483607 -2147483604 -2147483625 -2147483629 -2147483631 -2147483633 -2147483645 -2147483647 -2147483643 -2147483640 -2147483638;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyAppendVertex -n "polyAppendVertex15";
	rename -uid "B8CF4C13-4B89-3DB8-2953-A0A497DBDD82";
	setAttr ".uopa" yes;
	setAttr -s 2 ".v[0:1]" -type "float3"  0.827869 -0.103863 0 1.081362 
		-0.055578399 0;
	setAttr -s 4 ".d[0:3]"  -1 4 1 -1;
	setAttr ".tx" 2;
createNode polyTweak -n "polyTweak5";
	rename -uid "F20994CB-476D-E543-3B55-EA829A774D64";
	setAttr ".uopa" yes;
	setAttr -s 51 ".tk[0:50]" -type "float3"  0.024142265 -0.10864001 0
		 0.030177832 -0.10260445 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode polyAppendVertex -n "polyAppendVertex16";
	rename -uid "677BEC0B-4B6A-E338-387B-EE8CD5320B92";
	setAttr ".uopa" yes;
	setAttr ".v[0]" -type "float3"  1.6305979 -0.079720601 0;
	setAttr -s 4 ".d[0:3]"  0 -1 52 1;
	setAttr ".tx" 2;
createNode polyAppendVertex -n "polyAppendVertex17";
	rename -uid "F741D327-4264-C844-9B52-E3BE53AC3910";
	setAttr ".uopa" yes;
	setAttr ".v[0]" -type "float3"  2.077229 -0.27285799 0;
	setAttr -s 4 ".d[0:3]"  53 0 11 -1;
	setAttr ".tx" 2;
createNode polyAppendVertex -n "polyAppendVertex18";
	rename -uid "536EF4E1-450E-0ED0-9868-68A15424897B";
	setAttr ".uopa" yes;
	setAttr ".v[0]" -type "float3"  2.1882019 -0.415362 0;
	setAttr -s 4 ".d[0:3]"  -1 54 11 13;
	setAttr ".tx" 2;
createNode polyAppendVertex -n "polyAppendVertex19";
	rename -uid "BCFC7AF4-4A3E-CB91-C21A-CB90990238E1";
	setAttr ".uopa" yes;
	setAttr -s 2 ".v[0:1]" -type "float3"  0.356884 -0.0110827 0 0.00095553702 
		-0.028031699 0;
	setAttr -s 4 ".d[0:3]"  -1 -1 8 7;
	setAttr ".tx" 2;
createNode polyTweak -n "polyTweak6";
	rename -uid "B82E79D9-48DA-82DE-23D0-6FB86FF1B157";
	setAttr ".uopa" yes;
	setAttr -s 56 ".tk[0:55]" -type "float3"  0 0 1.019000411 0 0 1.17626274
		 0 0 1.1406008 0 0 1.019000411 0 0 1.75852954 0 0 1.75852954 0 0 2.21414089 0 0 1.70805514
		 0 0 1.96209395 0 0 2.36586118 0 0 1.019000411 0 0 1.019000411 0 0 1.01548624 0 0
		 1.01548624 0 0 1.27062285 0 0 1.27062285 0 0 1.35354662 0 0 1.35354662 0 2.9802322e-008
		 1.77360487 0 2.9802322e-008 1.72743404 -1.4901161e-008 0 1.85921752 -1.4901161e-008
		 0 1.7516278 0 0 1.76850188 0 0 1.97411275 0 0 1.87150705 0 0 2.049356461 -5.9604645e-008
		 0 1.92473793 -5.9604645e-008 2.9802322e-008 1.85680056 0 2.9802322e-008 1.65504527
		 0 2.9802322e-008 1.7313689 0 0 1.50623918 0 0 1.51306748 0 0 1.43165779 0 0 1.43165779
		 0 0 1.9824357 0 0 1.97411275 -1.4901161e-008 0 1.86626101 -5.9604645e-008 0 1.90066278
		 0 2.9802322e-008 1.75058484 0 2.9802322e-008 1.70696461 0 0 1.51004887 0 0 1.43165779
		 0 0 1.35354662 0 0 1.27062285 0 0 1.01548624 0 0 1.019000411 0 0 1.019000411 0 0
		 1.17626274 0 0 1.72286773 0 0 2.044384241 0 0 2.42783594 0 0 1.019000411 0 0 1.17626274
		 0 0 1.019000411 -0.17672873 0.072504073 1.019000411 0 0 1.019000411;
createNode polyAppendVertex -n "polyAppendVertex20";
	rename -uid "497E072B-4591-9F68-ED4D-6FAD3F433EE1";
	setAttr ".uopa" yes;
	setAttr -s 4 ".d[0:3]"  56 7 4 51;
	setAttr ".tx" 2;
createNode polyAppendVertex -n "polyAppendVertex21";
	rename -uid "E11AFDEA-4C88-5336-0757-2B90C964F4DA";
	setAttr ".uopa" yes;
	setAttr -s 2 ".v[0:1]" -type "float3"  0.62148398 0.299712 0 0.028405899 
		0.37673599 0;
	setAttr -s 4 ".d[0:3]"  56 -1 -1 57;
	setAttr ".tx" 2;
createNode polyTweak -n "polyTweak7";
	rename -uid "208D2F7B-478B-AA0A-3D37-968A466BC5E8";
	setAttr ".uopa" yes;
	setAttr -s 58 ".tk[56:57]" -type "float3"  0.10013008 -0.023106944 0
		 0.012639578 -0.0031598955 0;
createNode polySplit -n "polySplit3";
	rename -uid "10A04FBC-4439-1184-B13C-A1BDF772559B";
	setAttr -s 5 ".e[0:4]"  0.467289 0.53271103 0.53271103 0.53271103
		 0.53271103;
	setAttr -s 5 ".d[0:4]"  -2147483641 -2147483567 -2147483639 -2147483556 -2147483552;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyAppendVertex -n "polyAppendVertex22";
	rename -uid "6DB1841F-4947-6ABA-54A2-FB9A71F85801";
	setAttr ".uopa" yes;
	setAttr -s 2 ".v[0:1]" -type "float3"  0.94498098 0.469163 0 0.90647 
		0.60780501 0;
	setAttr -s 4 ".d[0:3]"  -1 -1 64 58;
	setAttr ".tx" 2;
createNode polyTweak -n "polyTweak8";
	rename -uid "5A936EBA-4CE7-4A20-9CAF-1CB827BF3360";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[58]" -type "float3" 0.038511574 -0.023106933 0 ;
	setAttr ".tk[59]" -type "float3" -0.030809257 0 0 ;
	setAttr ".tk[64]" -type "float3" 0.13093933 0 0 ;
createNode polyAppendVertex -n "polyAppendVertex23";
	rename -uid "6B4C90CA-47AA-504B-EDE9-99A6E2D1D1A7";
	setAttr ".uopa" yes;
	setAttr -s 2 ".v[0:1]" -type "float3"  1.445632 0.484568 0 1.461036 
		0.76185101 0;
	setAttr -s 4 ".d[0:3]"  -1 -1 66 65;
	setAttr ".tx" 2;
createNode polyAppendVertex -n "polyAppendVertex24";
	rename -uid "670753D0-4F45-C041-13A9-6BA6593C34F8";
	setAttr ".uopa" yes;
	setAttr -s 2 ".v[0:1]" -type "float3"  1.830747 0.41524699 0 1.861557 
		0.61550701 0;
	setAttr -s 4 ".d[0:3]"  68 67 -1 -1;
	setAttr ".tx" 2;
createNode polyTweak -n "polyTweak9";
	rename -uid "1B1E4647-46A4-46E1-B8C9-4B9A86048D0D";
	setAttr ".uopa" yes;
	setAttr ".tk[67]" -type "float3"  0 0.023106933 0;
createNode polyAppendVertex -n "polyAppendVertex25";
	rename -uid "699132C3-45D2-3C42-9D33-6EA5AEF36C19";
	setAttr ".uopa" yes;
	setAttr -s 2 ".v[0:1]" -type "float3"  1.8923661 0.299712 0 1.93858 
		0.49226999 0;
	setAttr -s 4 ".d[0:3]"  70 69 -1 -1;
	setAttr ".tx" 2;
createNode polyTweak -n "polyTweak10";
	rename -uid "AAC680B6-47C1-D614-6F1B-0581E3BA14EA";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[69:70]" -type "float3"  -0.10013008 0.023106933 0
		 -0.1540463 0.13093936 0;
createNode polyAppendVertex -n "polyAppendVertex26";
	rename -uid "A053F4C2-4D71-BBA1-7759-DE95B61D0F20";
	setAttr ".uopa" yes;
	setAttr -s 2 ".v[0:1]" -type "float3"  1.948033 -0.0256522 0 2.0658519 
		-0.066435702 0;
	setAttr -s 4 ".d[0:3]"  -1 -1 72 71;
	setAttr ".tx" 2;
createNode polyTweak -n "polyTweak11";
	rename -uid "BD3B8B56-4FFD-5BF7-8336-92A0F9FFC9E5";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[71:72]" -type "float3"  0 0.015404642 0 0.023106933
		 0.038511574 0;
createNode polyAppendVertex -n "polyAppendVertex27";
	rename -uid "9C231F48-4874-2E38-4E22-7180511D9963";
	setAttr ".uopa" yes;
	setAttr -s 4 ".d[0:3]"  74 73 54 55;
	setAttr ".tx" 2;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "77226DDD-4B40-A130-538D-51A368857147";
	setAttr ".dc" -type "componentList" 1 "f[48]";
createNode polySplit -n "polySplit4";
	rename -uid "56E6ADDD-4D08-6E1C-17A3-728EED80A764";
	setAttr -s 5 ".e[0:4]"  0.44581699 0.55418301 0.55418301 0.55418301
		 0.55418301;
	setAttr -s 5 ".d[0:4]"  -2147483641 -2147483549 -2147483548 -2147483547 -2147483546;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyAppendVertex -n "polyAppendVertex28";
	rename -uid "FC9E6A11-4318-D929-CAB7-7097CFF06688";
	setAttr ".uopa" yes;
	setAttr ".v[0]" -type "float3"  0.729316 0.89279097 0;
	setAttr -s 4 ".d[0:3]"  66 -1 79 64;
	setAttr ".tx" 2;
createNode polyAppendVertex -n "polyAppendVertex29";
	rename -uid "1CC6CEF3-45A7-6780-F4F5-E499EBA3BB56";
	setAttr ".uopa" yes;
	setAttr ".v[0]" -type "float3"  1.222265 1.393441 0;
	setAttr -s 4 ".d[0:3]"  80 66 68 -1;
	setAttr ".tx" 2;
createNode polyTweak -n "polyTweak12";
	rename -uid "B28EA0DA-4C31-A35C-A12A-CA804249BD49";
	setAttr ".uopa" yes;
	setAttr -s 77 ".tk";
	setAttr ".tk[79]" -type "float3" 0.12323703 0.023106933 0 ;
	setAttr ".tk[80]" -type "float3" -0.038511574 0.053916216 0 ;
createNode polyAppendVertex -n "polyAppendVertex30";
	rename -uid "778A4DD2-4C3E-E465-44F6-11B1679F3E6D";
	setAttr ".uopa" yes;
	setAttr ".v[0]" -type "float3"  1.799938 1.200883 0;
	setAttr -s 4 ".d[0:3]"  -1 81 68 70;
	setAttr ".tx" 2;
createNode polyTweak -n "polyTweak13";
	rename -uid "CF835902-49A0-B658-F655-E5A540E5BAD2";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[67]" -type "float3" -0.10783243 0.015404642 0 ;
	setAttr ".tk[68]" -type "float3" -0.13864172 -0.015404642 0 ;
	setAttr ".tk[81]" -type "float3" -0.0077023506 0.030809164 0 ;
createNode polyAppendVertex -n "polyAppendVertex31";
	rename -uid "476041D1-4DD8-C037-7F34-25AE314A38DA";
	setAttr ".uopa" yes;
	setAttr ".v[0]" -type "float3"  1.992496 0.72333997 0;
	setAttr -s 4 ".d[0:3]"  82 70 72 -1;
	setAttr ".tx" 2;
createNode polyTweak -n "polyTweak14";
	rename -uid "698FEA8F-49A2-CD5B-8CA7-CDB11347A731";
	setAttr ".uopa" yes;
	setAttr ".tk[82]" -type "float3"  -0.16945088 -0.13864172 0;
createNode polyAppendVertex -n "polyAppendVertex32";
	rename -uid "82B28E53-4FB0-AC18-8DE6-1AAEBBD78F77";
	setAttr ".uopa" yes;
	setAttr ".v[0]" -type "float3"  2.277482 0.43835399 0;
	setAttr -s 4 ".d[0:3]"  -1 83 72 74;
	setAttr ".tx" 2;
createNode polyAppendVertex -n "polyAppendVertex33";
	rename -uid "B9F461B1-4EFF-B7D2-588B-C69AF11C41F6";
	setAttr ".uopa" yes;
	setAttr -s 2 ".v[0:1]" -type "float3"  0.35960501 1.116158 0 -0.017808 
		1.12386 0;
	setAttr -s 4 ".d[0:3]"  59 79 -1 -1;
	setAttr ".tx" 2;
createNode polyTweak -n "polyTweak15";
	rename -uid "ACC5F4BF-4740-CDBF-6D2F-FE8056D80EC8";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[83:84]" -type "float3"  0.10783243 -0.08472544 0 -0.069320917
		 -0.40822268 0;
createNode polyAppendVertex -n "polyAppendVertex34";
	rename -uid "920ECF70-4651-B533-4422-4A87820D9F26";
	setAttr ".uopa" yes;
	setAttr ".v[0]" -type "float3"  0.69850701 1.285609 0;
	setAttr -s 4 ".d[0:3]"  80 -1 85 79;
	setAttr ".tx" 2;
createNode polyAppendVertex -n "polyAppendVertex35";
	rename -uid "A2FFC337-4194-E9B0-04D1-69A94EEB170A";
	setAttr ".uopa" yes;
	setAttr ".v[0]" -type "float3"  1.2145621 1.65532 0;
	setAttr -s 4 ".d[0:3]"  87 80 81 -1;
	setAttr ".tx" 2;
createNode polyAppendVertex -n "polyAppendVertex36";
	rename -uid "98C4FF73-4735-EB2B-1870-CFA7BF57669B";
	setAttr ".uopa" yes;
	setAttr -s 2 ".v[0:1]" -type "float3"  0.35190299 1.678427 0 -0.0101057 
		1.686129 0;
	setAttr -s 4 ".d[0:3]"  -1 -1 86 85;
	setAttr ".tx" 2;
createNode polyAppendVertex -n "polyAppendVertex37";
	rename -uid "F7FE186D-4B77-1FCB-F068-B9AA0E4E96F5";
	setAttr ".uopa" yes;
	setAttr -s 2 ".v[0:1]" -type "float3"  0.41352201 2.749048 0 0.0130013 
		2.7413459 0;
	setAttr -s 4 ".d[0:3]"  90 89 -1 -1;
	setAttr ".tx" 2;
createNode polyAppendVertex -n "polyAppendVertex38";
	rename -uid "DD9247E6-4E62-923B-F9BC-05A93DC535E3";
	setAttr ".uopa" yes;
	setAttr ".v[0]" -type "float3"  0.69850701 1.801664 0;
	setAttr -s 4 ".d[0:3]"  -1 89 85 87;
	setAttr ".tx" 2;
createNode polyAppendVertex -n "polyAppendVertex39";
	rename -uid "3A08EBBD-4A5A-AFC0-7FDE-8BA767E5303C";
	setAttr ".uopa" yes;
	setAttr ".v[0]" -type "float3"  0.77552998 2.6874299 0;
	setAttr -s 4 ".d[0:3]"  -1 91 89 93;
	setAttr ".tx" 2;
createNode polySplit -n "polySplit5";
	rename -uid "63212E0F-4299-D013-7FC1-7187BFE9455E";
	setAttr -s 3 ".e[0:2]"  0.43946299 0.56053698 0.56053698;
	setAttr -s 3 ".d[0:2]"  -2147483497 -2147483496 -2147483492;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyAppendVertex -n "polyAppendVertex40";
	rename -uid "80ACE7FA-42F8-57C5-3693-9F94009BF3C4";
	setAttr ".uopa" yes;
	setAttr -s 2 ".v[0:1]" -type "float3"  1.183753 1.9094959 0 1.237669 
		2.3100159 0;
	setAttr -s 4 ".d[0:3]"  -1 -1 97 93;
	setAttr ".tx" 2;
createNode polyAppendVertex -n "polyAppendVertex41";
	rename -uid "AED2AACC-41A0-CE8E-F6E5-D490475D9E04";
	setAttr ".uopa" yes;
	setAttr ".v[0]" -type "float3"  1.291585 2.6874299 0;
	setAttr -s 4 ".d[0:3]"  99 -1 94 97;
	setAttr ".tx" 2;
createNode polyAppendVertex -n "polyAppendVertex42";
	rename -uid "10FF850D-4440-7BDD-47A9-3BAB03024421";
	setAttr ".uopa" yes;
	setAttr -s 4 ".d[0:3]"  93 87 88 98;
	setAttr ".tx" 2;
createNode polyAppendVertex -n "polyAppendVertex43";
	rename -uid "744BE0B2-4980-79DE-C2D4-5388655ABAF1";
	setAttr ".uopa" yes;
	setAttr ".v[0]" -type "float3"  1.645892 1.462762 0;
	setAttr -s 4 ".d[0:3]"  88 81 82 -1;
	setAttr ".tx" 2;
createNode polyAppendVertex -n "polyAppendVertex44";
	rename -uid "7D3994B0-405C-9D5B-6192-70B25F2A35E2";
	setAttr ".uopa" yes;
	setAttr ".v[0]" -type "float3"  2.1696489 0.91589803 0;
	setAttr -s 4 ".d[0:3]"  101 82 83 -1;
	setAttr ".tx" 2;
createNode polyAppendVertex -n "polyAppendVertex45";
	rename -uid "A7D269BA-4C69-6CD3-1E71-FB9172D078AF";
	setAttr ".uopa" yes;
	setAttr -s 2 ".v[0:1]" -type "float3"  1.6849639 1.785486 0 1.91079 
		2.27948 0;
	setAttr -s 4 ".d[0:3]"  99 98 -1 -1;
	setAttr ".tx" 2;
createNode polyTweak -n "polyTweak16";
	rename -uid "6BEFB159-4904-89C2-9609-8DB0D396CE14";
	setAttr ".uopa" yes;
	setAttr -s 103 ".tk[6:102]" -type "float3"  0.31330359 -0.00036227703
		 -2.21414089 0.094023287 0.014166236 -1.70805514 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.20484132 0.019749522 -2.044384241
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.18550909 -0.009503603
		 -2.29496384 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0;
createNode polyAppendVertex -n "polyAppendVertex46";
	rename -uid "AD8935DF-431E-5AAC-A3E0-DC8E3C8D110A";
	setAttr ".uopa" yes;
	setAttr ".v[0]" -type "float3"  1.917847 2.533535 0;
	setAttr -s 4 ".d[0:3]"  100 99 104 -1;
	setAttr ".tx" 2;
createNode polyAppendVertex -n "polyAppendVertex47";
	rename -uid "A10DCE97-4A64-CF1E-DD9F-C09BABB7FA27";
	setAttr ".uopa" yes;
	setAttr -s 4 ".d[0:3]"  98 88 101 103;
	setAttr ".tx" 2;
createNode polyAppendVertex -n "polyAppendVertex48";
	rename -uid "70B7BEBA-4F5B-FEC8-4230-4F80CBF09A0D";
	setAttr ".uopa" yes;
	setAttr -s 2 ".v[0:1]" -type "float3"  2.235415 1.213864 0 2.193073 
		1.531432 0;
	setAttr -s 4 ".d[0:3]"  103 101 -1 -1;
	setAttr ".tx" 2;
createNode polyTweak -n "polyTweak17";
	rename -uid "59806AFD-4218-90CC-711C-FC9B31B9C753";
	setAttr ".uopa" yes;
	setAttr -s 106 ".tk[93:105]" -type "float3"  -0.021171212 0.10585594 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0.0070570707 0.10585606 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0;
createNode polyMergeVert -n "polyMergeVert1";
	rename -uid "DA9AC5B8-4C2A-4704-B65A-8A8B44870FC7";
	setAttr ".ics" -type "componentList" 2 "vtx[102]" "vtx[106]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.001;
createNode polyTweak -n "polyTweak18";
	rename -uid "4648B807-4428-A35A-AF7A-9786C6ABB06C";
	setAttr ".uopa" yes;
	setAttr ".tk[106]" -type "float3"  -0.065766096 -0.29796594 0;
createNode polyAppendVertex -n "polyAppendVertex49";
	rename -uid "66FA287D-4FF8-C26C-2E44-809BF982168D";
	setAttr ".uopa" yes;
	setAttr -s 2 ".v[0:1]" -type "float3"  2.20013 1.848999 0 2.3412709 
		2.1877389 0;
	setAttr -s 4 ".d[0:3]"  105 104 -1 -1;
	setAttr ".tx" 2;
createNode polyTweak -n "polyTweak19";
	rename -uid "BEE63D64-4D68-6A7F-2BD8-75873A89F7D2";
	setAttr ".uopa" yes;
	setAttr ".tk[106]" -type "float3"  -0.014114141 -0.19759774 0;
createNode polyAppendVertex -n "polyAppendVertex50";
	rename -uid "3654A3D0-4F4A-2A0D-E265-A7B8DF6E47D5";
	setAttr ".uopa" yes;
	setAttr -s 4 ".d[0:3]"  104 103 106 107;
	setAttr ".tx" 2;
createNode polyAppendVertex -n "polyAppendVertex51";
	rename -uid "63FEB295-4F7A-7BFE-8DC0-3FACE7B8EBCE";
	setAttr ".uopa" yes;
	setAttr ".v[0]" -type "float3"  2.2777579 0.22587501 0;
	setAttr -s 4 ".d[0:3]"  84 -1 102 83;
	setAttr ".tx" 2;
createNode polyTweak -n "polyTweak20";
	rename -uid "57488BF4-4E99-5638-B375-398BD784CEE8";
	setAttr ".uopa" yes;
	setAttr -s 109 ".tk[104:108]" -type "float3"  -0.1411413 -0.042342424 0
		 0 0 0 0 0 0 0 0 0 0 0 0;
createNode polyAppendVertex -n "polyAppendVertex52";
	rename -uid "6AE48A83-432A-168E-B28C-7893896B7D3D";
	setAttr ".uopa" yes;
	setAttr ".v[0]" -type "float3"  2.3553851 0.71986902 0;
	setAttr -s 4 ".d[0:3]"  109 -1 106 102;
	setAttr ".tx" 2;
createNode polyAppendVertex -n "polyAppendVertex53";
	rename -uid "E0A4DD53-406E-3A22-8BAB-FFBB62839A02";
	setAttr ".uopa" yes;
	setAttr ".v[0]" -type "float3"  2.425956 1.0586081 0;
	setAttr -s 4 ".d[0:3]"  110 -1 107 106;
	setAttr ".tx" 2;
createNode polyAppendVertex -n "polyAppendVertex54";
	rename -uid "414DE78A-4ED4-F94E-7805-57A5196FDAF8";
	setAttr ".uopa" yes;
	setAttr ".v[0]" -type "float3"  2.5670969 1.242092 0;
	setAttr -s 4 ".d[0:3]"  108 107 111 -1;
	setAttr ".tx" 2;
createNode polyAverageVertex -n "polyAverageVertex1";
	rename -uid "412DBC71-41B7-AD14-4483-00A34F873514";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[62]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak21";
	rename -uid "E3D24BB2-46C3-76DB-11EE-1F88946A5B94";
	setAttr ".uopa" yes;
	setAttr -s 113 ".tk[6:112]" -type "float3"  0 0 1.88663089 0 0 1.88663089
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 1.88663089 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1.88663089 0 0 0 0 0 0 0 0
		 0 0 0 2.24289966 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0;
createNode polyAverageVertex -n "polyAverageVertex2";
	rename -uid "382B2DD9-46BC-29A4-0352-81BFFE204A47";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[45]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak22";
	rename -uid "E3FB6519-4BAA-659E-260A-3E8FB7E63504";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk";
	setAttr ".tk[13]" -type "float3" 0 0 -0.057848278 ;
	setAttr ".tk[52]" -type "float3" 0 0 -0.39724857 ;
	setAttr ".tk[53]" -type "float3" 0 0 -0.39604554 ;
	setAttr ".tk[54]" -type "float3" 0 0 -0.53041631 ;
	setAttr ".tk[55]" -type "float3" 0 0 -0.60789764 ;
	setAttr ".tk[63]" -type "float3" 0 0 1.9326344 ;
createNode polyAverageVertex -n "polyAverageVertex3";
	rename -uid "9AACD19F-4839-D78F-7F15-CC92869C90DC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[46]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex4";
	rename -uid "36DCD806-478B-F618-C2D3-0EA11950C017";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[46]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex5";
	rename -uid "F05B947F-463E-3BB1-7913-DF9BDB10ECA5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[47]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex6";
	rename -uid "677C31FE-4711-C1E6-A753-65B2F78CE9A8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[48]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex7";
	rename -uid "061D2F11-4162-19C6-563F-A3B1C5EF43E3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[49]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex8";
	rename -uid "ACACBC53-4C84-0D3B-C4E9-84B2F9DF4820";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[4]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex9";
	rename -uid "298BD661-4E7E-7F2D-03AA-67B2396BDAFD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[7]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex10";
	rename -uid "2B5702BA-4A33-F283-AC03-18B9004FC0D5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[96:97]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak23";
	rename -uid "CB04E8B4-4AB0-E038-2AFC-C7B6137FF269";
	setAttr ".uopa" yes;
	setAttr -s 13 ".tk";
	setAttr ".tk[28]" -type "float3" 0 0 -0.053583577 ;
	setAttr ".tk[29]" -type "float3" 0 0 -0.053583577 ;
	setAttr ".tk[39]" -type "float3" 0 0 -0.053583577 ;
	setAttr ".tk[44]" -type "float3" 0 0 0.20085859 ;
	setAttr ".tk[45]" -type "float3" 0 0 0.12319233 ;
	setAttr ".tk[46]" -type "float3" 0 0 0.12319233 ;
	setAttr ".tk[78]" -type "float3" -7.4505806e-009 0 1.8259245 ;
	setAttr ".tk[91]" -type "float3" 0 0.32935119 0 ;
	setAttr ".tk[92]" -type "float3" 0 0.32935119 0 ;
	setAttr ".tk[94]" -type "float3" 0.079044282 0.31617716 0 ;
	setAttr ".tk[100]" -type "float3" 0.10539238 0.14491452 0 ;
createNode polyAverageVertex -n "polyAverageVertex11";
	rename -uid "C159B94A-4A07-3718-BDAE-A0AC73B10EE6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[96:97]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex12";
	rename -uid "282AE6D2-4A7F-E756-B20D-06B10FFAA9C5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[96:97]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex13";
	rename -uid "0918D13F-4F7C-3BC3-0610-D5ADB7DB5F57";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[96:97]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex14";
	rename -uid "890397B6-456D-7E68-533C-6C88822F6FA8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[96:97]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex15";
	rename -uid "31FC3752-4953-1D7A-FF47-4BAF4BECDC0F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[99]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex16";
	rename -uid "CF3319DA-4CB6-63EB-8536-46929F422FF8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[99]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex17";
	rename -uid "AFEEB7EB-438C-F9BB-79A4-E29B8F17D2E4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[99]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex18";
	rename -uid "13F88407-43E4-5CCB-C9B1-88A39192878C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[99]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex19";
	rename -uid "56A2C374-4743-B723-D522-9EA474C8ADCF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[104]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex20";
	rename -uid "54A74EE4-4D88-34A0-2AEE-D39F8255F2ED";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[104]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex21";
	rename -uid "77AF5A1D-468F-7896-CB3C-498C876A3755";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[104]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex22";
	rename -uid "2373C37F-441E-9BB1-AC5E-9998AC3B31ED";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[104]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex23";
	rename -uid "1C938B04-49C5-D92E-2858-DF900BF45840";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[107]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex24";
	rename -uid "8E0E8C7D-4276-8001-DF42-6C8A7D63E270";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[107]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex25";
	rename -uid "93BB780E-4611-7023-4E4A-3796E4042476";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[107]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex26";
	rename -uid "96800E44-4AC5-6F1D-9FCA-62866310B239";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[107]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex27";
	rename -uid "A8394093-4029-FCB5-8ACF-31974232E237";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[48]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex28";
	rename -uid "9F6D7808-47E2-2A14-E9C0-58AE441D2C63";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[48]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex29";
	rename -uid "87A10146-4DF6-AEA0-70E7-CF81E41C0DF9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[48]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex30";
	rename -uid "9C6FDCED-4CA9-1911-D315-45A3C4A4D986";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[49]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex31";
	rename -uid "E080D258-45A2-25E7-118D-E8A9B69950FC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[49]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex32";
	rename -uid "63A77AD8-4A1D-D9DA-3669-5EA25FE27A12";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[49]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex33";
	rename -uid "D0E74DBE-4CC6-6C66-29A1-C2A152F1BED0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[61:62]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex34";
	rename -uid "401A56EE-48D1-2381-806D-BCA693973CDD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[61:62]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex35";
	rename -uid "519F3505-4E81-D9A2-B786-BA9E46FB873D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[61:62]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex36";
	rename -uid "7413E880-4A68-0BB6-6086-6F95E0254FBC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[77]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex37";
	rename -uid "56C05D9C-4FD2-C16B-D47D-63B7EB4FB970";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[76]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex38";
	rename -uid "DBCBF743-4280-76AF-331A-A69CF747C84B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[76]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyExtrudeEdge -n "polyExtrudeEdge1";
	rename -uid "090CCACB-41D6-9C6F-6525-EA9E29047B40";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[24:25]" "e[30]" "e[33]" "e[35]" "e[40]" "e[43]" "e[46:47]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.2340982 -3.2006278 1.5976804 ;
	setAttr ".rs" 49874;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.01233339961618185 -5.1723008155822754 1.2706228494644165 ;
	setAttr ".cbx" -type "double3" 2.4558629989624023 -1.2289550304412842 1.9247379302978516 ;
createNode polyAppend -n "polyAppend1";
	rename -uid "DB57EA3F-4351-64DA-B718-8E93D8414D62";
	setAttr -s 3 ".d[0:2]"  -2147483559 -2147483628 -2147483454;
	setAttr ".tx" 1;
createNode polyTweak -n "polyTweak24";
	rename -uid "12E24A5D-4FA5-3A9B-0288-19B957E9E44C";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[113]" -type "float3" 0 0 -0.77418828 ;
	setAttr ".tk[114]" -type "float3" 0 0 -0.77418828 ;
	setAttr ".tk[115]" -type "float3" 0 0 -0.77418828 ;
	setAttr ".tk[116]" -type "float3" 0 0 -0.77418828 ;
	setAttr ".tk[117]" -type "float3" 0 0 -0.77418828 ;
	setAttr ".tk[118]" -type "float3" 0 0 -0.77418828 ;
	setAttr ".tk[119]" -type "float3" 0 0 -0.77418828 ;
	setAttr ".tk[120]" -type "float3" 0 0 -0.77418828 ;
	setAttr ".tk[121]" -type "float3" 0 0 -0.77418828 ;
	setAttr ".tk[122]" -type "float3" 0 0 -0.77418828 ;
createNode polyAverageVertex -n "polyAverageVertex39";
	rename -uid "30508ECE-4754-A7AA-4F2E-FDA10221B378";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "vtx[14]" "vtx[17:18]" "vtx[21:22]" "vtx[26]" "vtx[29]" "vtx[31]" "vtx[33]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex40";
	rename -uid "2CCB6DDB-4714-EAF8-2AD8-EBAF2A6A6508";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "vtx[14]" "vtx[17:18]" "vtx[21:22]" "vtx[26]" "vtx[29]" "vtx[31]" "vtx[33]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex41";
	rename -uid "7A3EDE33-4DA1-3F1D-4EDE-C89BF94A5E68";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "vtx[14]" "vtx[17:18]" "vtx[21:22]" "vtx[26]" "vtx[29]" "vtx[31]" "vtx[33]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex42";
	rename -uid "2AD60D22-4CFB-FEA0-A335-2D8E11D441B1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "vtx[14]" "vtx[17:18]" "vtx[21:22]" "vtx[26]" "vtx[29]" "vtx[31]" "vtx[33]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex43";
	rename -uid "BA2BC2FF-4292-BBC5-F264-94B27739E176";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "vtx[0]" "vtx[11]" "vtx[13]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak25";
	rename -uid "9F4DF827-41E8-FC51-5DCB-26B547A6EFEC";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[24]" -type "float3" 0 0 -0.19629125 ;
createNode polyAverageVertex -n "polyAverageVertex44";
	rename -uid "7FD8210A-48B4-A4AD-0ABB-3D869C1E1D23";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex45";
	rename -uid "1CAE0277-460F-D829-0655-CEBD596A17ED";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[4]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex46";
	rename -uid "14823575-4F71-92EB-ED68-AB9E42D6711D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[7]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex47";
	rename -uid "26BA19A1-4109-67C2-1059-AB8F0E60B71F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[7]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex48";
	rename -uid "A5C6E21D-4857-4F63-0313-C6B68214CAF1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[47]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak26";
	rename -uid "D6B29A5A-468D-B333-D035-37B571BC6906";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[1]" -type "float3" 0 0 0.19555058 ;
	setAttr ".tk[2]" -type "float3" 0 0 0.19555058 ;
	setAttr ".tk[47]" -type "float3" 0 0 0.19555058 ;
createNode polyAverageVertex -n "polyAverageVertex49";
	rename -uid "7260E2FC-4D54-7E1F-DF4A-6F9A1EE119A1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[47]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex50";
	rename -uid "A86EBEA0-4818-541C-6D7E-22BEE0795420";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[47]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex51";
	rename -uid "98111730-4217-62DF-E80D-C8B25AC6ECFB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[48]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex52";
	rename -uid "1F9B8E77-4CDB-50B9-02B6-4480E551D86D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[48]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex53";
	rename -uid "D8CA85CE-4E01-6E61-2BA2-F9A8DAAB2029";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[48]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex54";
	rename -uid "2EFE2E9B-4561-E263-AE6C-ADBE1A9324DF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[4]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex55";
	rename -uid "A3173EEA-427A-7333-3D1F-EBB2D6FB24C9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[4]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex56";
	rename -uid "D0F997F5-41BE-3D02-39E2-8297BC8A341E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex57";
	rename -uid "4EDF335A-412E-D9AD-AA20-B7981874C6F5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex58";
	rename -uid "376AD515-4F45-59CC-788F-45A4222B089E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[106]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak27";
	rename -uid "F92E88F9-4572-9664-55CE-B0B3BBFCC0A6";
	setAttr ".uopa" yes;
	setAttr -s 40 ".tk";
	setAttr ".tk[51]" -type "float3" 0 0 0.35467929 ;
	setAttr ".tk[56]" -type "float3" 0 0.0014990111 0.022830119 ;
	setAttr ".tk[57]" -type "float3" 0 -0.0014990111 2.4851408 ;
	setAttr ".tk[58]" -type "float3" 0 0 1.729287 ;
	setAttr ".tk[59]" -type "float3" 0 0 1.729287 ;
	setAttr ".tk[63]" -type "float3" 0 -9.8068696e-005 0.35235074 ;
	setAttr ".tk[64]" -type "float3" 0 0 1.729287 ;
	setAttr ".tk[65]" -type "float3" 0 0 1.3649551 ;
	setAttr ".tk[66]" -type "float3" 0 0 1.3649551 ;
	setAttr ".tk[67]" -type "float3" 0 0 1.2130253 ;
	setAttr ".tk[68]" -type "float3" 0 0 1.2130253 ;
	setAttr ".tk[69]" -type "float3" 0 0 0.83454317 ;
	setAttr ".tk[70]" -type "float3" 0 0 0.83454317 ;
	setAttr ".tk[71]" -type "float3" 0 0 0.59540051 ;
	setAttr ".tk[72]" -type "float3" 0 0 0.59540051 ;
	setAttr ".tk[73]" -type "float3" 0 0 0.49151704 ;
	setAttr ".tk[74]" -type "float3" 0 0 0.49151704 ;
	setAttr ".tk[78]" -type "float3" 0 -0.00087444769 0.65921867 ;
	setAttr ".tk[79]" -type "float3" 0 0 1.729287 ;
	setAttr ".tk[80]" -type "float3" 0 0 1.3649551 ;
	setAttr ".tk[81]" -type "float3" 0 0 1.2130253 ;
	setAttr ".tk[82]" -type "float3" 0 0 0.83454317 ;
	setAttr ".tk[83]" -type "float3" 0 0 0.59540051 ;
	setAttr ".tk[84]" -type "float3" 0 0 0.49151704 ;
	setAttr ".tk[85]" -type "float3" 0 0 1.3649551 ;
	setAttr ".tk[86]" -type "float3" 0 0 1.3649551 ;
	setAttr ".tk[87]" -type "float3" 0 0 1.3824545 ;
	setAttr ".tk[88]" -type "float3" 0 0 1.2130253 ;
	setAttr ".tk[89]" -type "float3" 0 0 0.71106225 ;
	setAttr ".tk[90]" -type "float3" 0 0 0.71106225 ;
	setAttr ".tk[93]" -type "float3" 0 0 0.71106225 ;
	setAttr ".tk[98]" -type "float3" 0 0 0.71106225 ;
	setAttr ".tk[101]" -type "float3" 0 0 0.83454317 ;
	setAttr ".tk[102]" -type "float3" 0 0 0.59540051 ;
	setAttr ".tk[103]" -type "float3" 0 0 0.71106225 ;
	setAttr ".tk[106]" -type "float3" 0 0 0.71106225 ;
	setAttr ".tk[109]" -type "float3" 0 0 0.49151704 ;
	setAttr ".tk[110]" -type "float3" 0 0 0.27993992 ;
createNode polyAverageVertex -n "polyAverageVertex59";
	rename -uid "65C562CA-40CE-2AA0-41B8-99A7F6670DFD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[106]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex60";
	rename -uid "0925A3E0-430C-986D-B808-F1866A803BAC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[106]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex61";
	rename -uid "BE7D7722-41D1-E8C5-DCA2-0789DF82B98E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[93]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex62";
	rename -uid "A0EF1E7D-4A64-098F-6742-BBAAB22F2628";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[89]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex63";
	rename -uid "66DBB526-4253-81B3-9509-20862D19A768";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[98]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex64";
	rename -uid "8CDCB412-4065-54F1-157D-039255252359";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[103]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex65";
	rename -uid "58E68F64-4617-22DA-E65C-708FD69E04A6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[101]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex66";
	rename -uid "1E21D10E-4DA4-14A3-8DB5-BBBFA226923D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[88]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex67";
	rename -uid "26B05453-44AF-12EC-AD1A-A8BC22321EFE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[87]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex68";
	rename -uid "BA4055F2-4487-0A9F-F0B7-4B95E109F9B9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[81]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex69";
	rename -uid "5F6FF8A0-4C0E-241C-E303-3D97B6F2E76B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[81]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak28";
	rename -uid "4D167F7C-40E1-B146-704D-56AFDD0FCFD3";
	setAttr ".uopa" yes;
	setAttr -s 42 ".tk";
	setAttr ".tk[14]" -type "float3" 0 0 -0.28979978 ;
	setAttr ".tk[15]" -type "float3" 0 0 -0.28979978 ;
	setAttr ".tk[16]" -type "float3" 0 0 -0.29306826 ;
	setAttr ".tk[17]" -type "float3" 0 0 -0.29306826 ;
	setAttr ".tk[18]" -type "float3" 0 0 -0.21953684 ;
	setAttr ".tk[19]" -type "float3" 0 0 -0.28545326 ;
	setAttr ".tk[20]" -type "float3" 0 0 -0.4254398 ;
	setAttr ".tk[21]" -type "float3" 0 0 -0.43985373 ;
	setAttr ".tk[22]" -type "float3" 0 0 -0.57043558 ;
	setAttr ".tk[23]" -type "float3" 0 0 -0.49301529 ;
	setAttr ".tk[24]" -type "float3" 0 0 -0.62122238 ;
	setAttr ".tk[25]" -type "float3" 0 0 -0.51111579 ;
	setAttr ".tk[26]" -type "float3" 0 0 -0.27686122 ;
	setAttr ".tk[27]" -type "float3" 0 0 -0.3159475 ;
	setAttr ".tk[28]" -type "float3" 0 0 -0.26880112 ;
	setAttr ".tk[29]" -type "float3" 0 0 -0.23772623 ;
	setAttr ".tk[30]" -type "float3" 0 0 -0.22130252 ;
	setAttr ".tk[31]" -type "float3" 0 0 -0.22130252 ;
	setAttr ".tk[32]" -type "float3" 0 0 -0.21144435 ;
	setAttr ".tk[33]" -type "float3" 0 0 -0.21144435 ;
	setAttr ".tk[34]" -type "float3" 0 0 -0.59045738 ;
	setAttr ".tk[35]" -type "float3" 0 0 -0.54982263 ;
	setAttr ".tk[36]" -type "float3" 0 0 -0.44092259 ;
	setAttr ".tk[37]" -type "float3" 0 0 -0.28505492 ;
	setAttr ".tk[38]" -type "float3" 0 0 -0.24482249 ;
	setAttr ".tk[39]" -type "float3" 0 0 -0.25395304 ;
	setAttr ".tk[40]" -type "float3" 0 0 -0.22130252 ;
	setAttr ".tk[41]" -type "float3" 0 0 -0.21144435 ;
	setAttr ".tk[42]" -type "float3" 0 0 -0.29306826 ;
	setAttr ".tk[43]" -type "float3" 0 0 -0.28979978 ;
	setAttr ".tk[113]" -type "float3" 0 0 -0.29306826 ;
	setAttr ".tk[114]" -type "float3" 0 0 -0.28979978 ;
	setAttr ".tk[115]" -type "float3" 0 0 -0.36513627 ;
	setAttr ".tk[116]" -type "float3" 0 0 -0.22054932 ;
	setAttr ".tk[117]" -type "float3" 0 0 -0.49884948 ;
	setAttr ".tk[118]" -type "float3" 0 0 -0.5683006 ;
	setAttr ".tk[119]" -type "float3" 0 0 -0.18043223 ;
	setAttr ".tk[120]" -type "float3" 0 0 -0.22553484 ;
	setAttr ".tk[121]" -type "float3" 0 0 -0.22130252 ;
	setAttr ".tk[122]" -type "float3" 0 0 -0.21144435 ;
createNode polySplit -n "polySplit6";
	rename -uid "6CC89332-4CB5-074D-BA01-4B9204D4F893";
	setAttr -s 4 ".e[0:3]"  0.49594 0.50405997 0.50405997 0.50405997;
	setAttr -s 4 ".d[0:3]"  -2147483632 -2147483572 -2147483630 -2147483558;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyAppend -n "polyAppend2";
	rename -uid "21C1FDF6-4E15-E23B-6846-FD9273476434";
	setAttr -s 2 ".d[0:1]"  -2147483528 -2147483432;
	setAttr ".tx" 1;
createNode polyTweak -n "polyTweak29";
	rename -uid "4F282035-4C23-CA50-9C89-33BB5E1B6046";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk[123:125]" -type "float3"  -0.018161567 0 0.04395891
		 0.0080042146 0 0.04395891 0.018161561 0 0.04395891;
createNode polyAppend -n "polyAppend3";
	rename -uid "9ACE6791-4487-56FD-5E0B-D4A9BA160D57";
	setAttr -s 3 ".d[0:2]"  -2147483509 -2147483427 -2147483558;
	setAttr ".tx" 1;
createNode polyAverageVertex -n "polyAverageVertex70";
	rename -uid "788D8585-4D4D-4569-B4C2-ADACCBB279C4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[106]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak30";
	rename -uid "1ED58D36-459C-730B-3C83-F7B93D195B4A";
	setAttr ".uopa" yes;
	setAttr -s 14 ".tk";
	setAttr ".tk[54]" -type "float3" -0.0050755134 0.010151027 0 ;
	setAttr ".tk[89]" -type "float3" 0 0 0.63371098 ;
	setAttr ".tk[93]" -type "float3" 0 0 0.63371098 ;
	setAttr ".tk[95]" -type "float3" 0 0 1.2698408 ;
	setAttr ".tk[96]" -type "float3" 0 0 1.2698408 ;
	setAttr ".tk[97]" -type "float3" 0 0 1.2698408 ;
	setAttr ".tk[98]" -type "float3" 0 0 0.63371098 ;
	setAttr ".tk[99]" -type "float3" 0 0 0.74250257 ;
	setAttr ".tk[103]" -type "float3" 0 0 0.63371098 ;
	setAttr ".tk[104]" -type "float3" 0 0 0.74250257 ;
	setAttr ".tk[106]" -type "float3" 0 0 0.63371098 ;
	setAttr ".tk[107]" -type "float3" 0 0 0.34176481 ;
	setAttr ".tk[111]" -type "float3" 0 0 0.34176481 ;
	setAttr ".tk[112]" -type "float3" 0 0 0.34176481 ;
createNode polyAverageVertex -n "polyAverageVertex71";
	rename -uid "10C945D3-4694-78BE-2358-28A410CB8BEB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[106]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex72";
	rename -uid "E2880DD6-44D5-11DB-3005-3C966B366FD7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[106]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex73";
	rename -uid "B5D93480-47EC-B047-BE15-5B913AED7A11";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[106]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex74";
	rename -uid "4573A616-4CEE-E3D3-5046-9AB2FB620AB1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "vtx[87:88]" "vtx[101]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex75";
	rename -uid "A4AAEC55-4BFD-A1D1-4D1A-2B9244704A17";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "vtx[85]" "vtx[89]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak31";
	rename -uid "3B5D60DD-4813-771B-5D8F-8B8F06AA2814";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[87]" -type "float3" 0 0 0.32464543 ;
	setAttr ".tk[88]" -type "float3" 0 0 0.32464543 ;
	setAttr ".tk[101]" -type "float3" 0 0 0.32464543 ;
createNode polyAverageVertex -n "polyAverageVertex76";
	rename -uid "FB84A80C-43B7-1952-9464-83B91397F38E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[89]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak32";
	rename -uid "A025FCA6-45B4-1C8E-53DF-70882678EC1C";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[90]" -type "float3" 0 0 0.69323355 ;
createNode polyAverageVertex -n "polyAverageVertex77";
	rename -uid "37C6824B-4A6C-DE02-F3AE-33AC69CE5BD7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[89]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex78";
	rename -uid "A9489004-4329-98E3-5E31-4798AECBECD8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[89]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex79";
	rename -uid "28F96643-474D-A025-9136-17ABBF8AB144";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[89]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex80";
	rename -uid "F16F1EFB-4293-4299-A4DD-798F372909F7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[87]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex81";
	rename -uid "BD0069AC-4E96-A7BD-6429-99B73AD46272";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[98]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex82";
	rename -uid "491C5181-43E8-0E5C-703C-81906BAC7697";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[97]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex83";
	rename -uid "2965217A-4404-57F5-566C-25AA5E0145CD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[99]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex84";
	rename -uid "73BE2CFA-497E-115F-82D0-CC8FC0121568";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[107]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex85";
	rename -uid "89859190-4142-30DC-474F-EDA19DA17240";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[104]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex86";
	rename -uid "44FB6303-4397-8117-FB64-A6917ABBFF63";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[104]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex87";
	rename -uid "85C0EE61-4B1F-7CCA-4BB8-FDBAA22C218F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[103]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex88";
	rename -uid "25C7C894-45CA-3F9A-1E01-27A8AB56D60C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[80:82]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex89";
	rename -uid "7337900C-474D-C525-75BC-76BDA4AEEDFD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[79]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak33";
	rename -uid "088FD4EF-4080-73EB-D548-5FAB57D3E4DA";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[85]" -type "float3" 0 0 0.090957135 ;
	setAttr ".tk[89]" -type "float3" 0 0 0.090957135 ;
createNode polyAverageVertex -n "polyAverageVertex90";
	rename -uid "867B00A8-43D8-E99C-76E2-DA8E2D9BE418";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[79]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex91";
	rename -uid "97AE9384-46D2-1B2C-9314-638F94127536";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[64]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex92";
	rename -uid "958605DB-4953-A580-311F-BAB2FCCFBDBF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[64]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex93";
	rename -uid "70B221F5-4606-B6EF-9DD6-34B57AF3BD4C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[66]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex94";
	rename -uid "98DC96D2-4F69-AEF0-4EF5-118F223CC918";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[66]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex95";
	rename -uid "F6DA7A6F-417A-1194-42B8-93B48B6A578D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[80]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex96";
	rename -uid "AE55258C-4834-CD73-C878-EC9BFDC8DD45";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[80]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex97";
	rename -uid "808B8383-429B-7DD7-842E-2CB928AF38DA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[80]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex98";
	rename -uid "6CDAE4CD-4EB6-98E6-D2BA-34BF9B169839";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[80]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex99";
	rename -uid "CD310866-447A-E49D-0A46-1988619E743E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[81]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex100";
	rename -uid "A73EB2C6-4AD5-9060-CF22-A49114511745";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[88]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex101";
	rename -uid "F795196B-4DA4-74E1-61A1-489E5D73D778";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[101]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex102";
	rename -uid "D929C397-4BEC-55F9-32A1-00B55F1DDE9E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[82]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex103";
	rename -uid "7326CF69-4461-BC7C-58FD-378D8A36472C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[106]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak34";
	rename -uid "3EC340DC-4718-E2E1-0AFB-13976A201FED";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[109]" -type "float3" 0 0 -0.22614831 ;
createNode polyAverageVertex -n "polyAverageVertex104";
	rename -uid "9D9B6E12-4604-E022-37C4-2DA920A5E01D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[106]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex105";
	rename -uid "712EA450-48FF-5C1A-8BCA-449899AFB1E3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[106]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex106";
	rename -uid "3A1B207F-41FE-CADD-2254-E0ACCB5FFED5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[106]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex107";
	rename -uid "285C3BA6-46A8-DEB2-8D6C-D3B34F2751A2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[106]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex108";
	rename -uid "96FFA23E-475F-8EFA-FCD3-95A7C26EEEEE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[102]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex109";
	rename -uid "E35523DE-40ED-5D63-F03F-C38DDA74BAE0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[102]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex110";
	rename -uid "A12F64F8-4EA6-D013-FFB6-FB956BE09EED";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[102]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex111";
	rename -uid "AA89F364-4E16-509D-0BB2-E1A3F090E109";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[83]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex112";
	rename -uid "9CE7A71A-43E1-93C9-D0C7-589240D8E469";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[83]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak35";
	rename -uid "88DDEB47-474A-ED34-1F4F-31B3AD821110";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[84]" -type "float3" 0 0 -0.12669612 ;
createNode polyAverageVertex -n "polyAverageVertex113";
	rename -uid "6E7CA2EA-4521-86C8-3100-78809FB42B5E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[83]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex114";
	rename -uid "58993094-4778-7A97-3592-EB83B643C642";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[72]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex115";
	rename -uid "2FD8B026-4614-FE7D-FEC4-E4869404D438";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[44]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex116";
	rename -uid "43F09FAA-4A88-CB16-CB3A-67A7592BA212";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[13]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex117";
	rename -uid "D98B6B50-4070-2529-4EE8-52A167E8B5AC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[125]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex118";
	rename -uid "BD37F112-4897-8928-8D75-A498F2F4C100";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[11]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".i" 12;
createNode polyExtrudeEdge -n "polyExtrudeEdge2";
	rename -uid "447FD7A1-4D77-C651-ED2C-EFACD064170E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[195]" "e[198]" "e[200]" "e[202]" "e[204]" "e[206]" "e[208]" "e[210:212]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.2340982 -2.7938313 0.56831753 ;
	setAttr ".rs" 50881;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.01233339961618185 -5.1723008155822754 0.20663478970527649 ;
	setAttr ".cbx" -type "double3" 2.4558629989624023 -0.41536200046539307 0.93000030517578125 ;
createNode polyAppend -n "polyAppend4";
	rename -uid "79F6B1EC-4E1A-4986-6C02-87B294551637";
	setAttr -s 3 ".d[0:2]"  -2147483463 -2147483426 -2147483406;
	setAttr ".tx" 1;
createNode polyTweak -n "polyTweak36";
	rename -uid "1C67454E-4E10-28A5-28CB-449BC9D4C943";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[127]" -type "float3" 0 0 -0.54082918 ;
	setAttr ".tk[128]" -type "float3" 0 0 -0.46117467 ;
	setAttr ".tk[129]" -type "float3" 0 0 -0.86683911 ;
	setAttr ".tk[130]" -type "float3" 0 0 -1.184533 ;
	setAttr ".tk[131]" -type "float3" 0 0 -0.75000113 ;
	setAttr ".tk[132]" -type "float3" 0 0 -0.78355485 ;
	setAttr ".tk[133]" -type "float3" 0 0 -1.0735182 ;
	setAttr ".tk[134]" -type "float3" 0 0 -0.93259734 ;
	setAttr ".tk[135]" -type "float3" 0 0 -0.7721135 ;
	setAttr ".tk[136]" -type "float3" 0 0 -0.70056266 ;
	setAttr ".tk[137]" -type "float3" 0 0 -0.66564059 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge3";
	rename -uid "D4A278E6-4242-3B59-050A-F9815E61D55C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[225]" "e[228]" "e[230]" "e[232]" "e[234]" "e[236]" "e[238]" "e[240:241]" "e[243]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.2340982 -2.7938313 -0.2545363 ;
	setAttr ".rs" 53655;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.01233339961618185 -5.1723008155822754 -0.25453987717628479 ;
	setAttr ".cbx" -type "double3" 2.4558629989624023 -0.41536200046539307 -0.25453269481658936 ;
createNode polyTweak -n "polyTweak37";
	rename -uid "EACAA281-4798-251C-C086-5DA4D2D80B01";
	setAttr ".uopa" yes;
	setAttr -s 22 ".tk";
	setAttr ".tk[1]" -type "float3" 0 0 0.12200896 ;
	setAttr ".tk[51]" -type "float3" 0 0 0.36553475 ;
	setAttr ".tk[52]" -type "float3" 0 0 0.73309183 ;
	setAttr ".tk[53]" -type "float3" 0 0.0315607 0.49837223 ;
	setAttr ".tk[54]" -type "float3" 0 0 -4.4703484e-008 ;
	setAttr ".tk[65]" -type "float3" 0 0 0.36853236 ;
	setAttr ".tk[67]" -type "float3" 0 0 0.38988596 ;
	setAttr ".tk[69]" -type "float3" 0 0 0.51622969 ;
	setAttr ".tk[71]" -type "float3" 0 0 0.35627159 ;
	setAttr ".tk[73]" -type "float3" 0 0 -4.4703484e-008 ;
	setAttr ".tk[111]" -type "float3" 0 0 -0.30531672 ;
	setAttr ".tk[112]" -type "float3" 0 0 -0.66823262 ;
createNode polyAppend -n "polyAppend5";
	rename -uid "9A10BB24-412D-0FBF-C6D7-DE83D30EEEA3";
	setAttr -s 3 ".d[0:2]"  -2147483461 -2147483404 -2147483384;
	setAttr ".tx" 1;
createNode polyTweak -n "polyTweak38";
	rename -uid "99D0A744-42EB-1734-1EA7-0086AEEFF22F";
	setAttr ".uopa" yes;
	setAttr -s 11 ".tk[138:148]" -type "float3"  -0.30846173 0 -0.84813738
		 -0.30846173 0 -0.84813738 -0.30846173 0 -0.84813738 -0.30846173 0 -0.84813738 -0.30846173
		 0 -0.84813738 -0.30846173 0 -0.84813738 -0.30846173 0 -0.84813738 -0.30846173 0 -0.84813738
		 -0.30846173 0 -0.84813738 -0.30846173 0 -0.84813738 -0.30846173 0 -0.84813738;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "492F88E6-41A2-F1AC-72C1-738B628398C9";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 1\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 656\n                -height 343\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 656\n            -height 343\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 655\n                -height 342\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 655\n            -height 342\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 1\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 656\n                -height 342\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 1\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 656\n            -height 342\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1317\n                -height 730\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1317\n            -height 730\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n"
		+ "                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n"
		+ "                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n"
		+ "                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n"
		+ "                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1317\\n    -height 730\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1317\\n    -height 730\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "6D810FE4-44B5-A9C1-46DE-A3AAD603E17E";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyAverageVertex -n "polyAverageVertex119";
	rename -uid "213E336F-4759-BCF8-A299-D9B7CFB0C841";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "vtx[102]" "vtx[106:107]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak39";
	rename -uid "C0D2AE1C-4F42-CC64-E479-3BBB9D3E7FF7";
	setAttr ".uopa" yes;
	setAttr -s 18 ".tk";
	setAttr ".tk[99]" -type "float3" -2.9802322e-008 0 0 ;
	setAttr ".tk[103]" -type "float3" -2.9802322e-008 0 0 ;
	setAttr ".tk[104]" -type "float3" -0.06354288 0 0 ;
	setAttr ".tk[105]" -type "float3" -0.16680001 -0.095314272 0 ;
	setAttr ".tk[107]" -type "float3" -0.071485743 -0.071485713 0 ;
	setAttr ".tk[108]" -type "float3" -0.30977139 -0.1985714 -1 ;
	setAttr ".tk[110]" -type "float3" 0 0 -1.279933 ;
	setAttr ".tk[111]" -type "float3" -0.11119999 1.4901161e-008 -1.0364437 ;
	setAttr ".tk[112]" -type "float3" -0.35742855 0.30182856 -0.67353141 ;
	setAttr ".tk[138]" -type "float3" 0 0 0.10266948 ;
	setAttr ".tk[139]" -type "float3" 0 0 0.10267019 ;
	setAttr ".tk[144]" -type "float3" 0 0 0.10266423 ;
	setAttr ".tk[145]" -type "float3" 0 0 0.10266566 ;
	setAttr ".tk[146]" -type "float3" 0 0 0.10266733 ;
	setAttr ".tk[147]" -type "float3" 0 0 0.10266781 ;
	setAttr ".tk[148]" -type "float3" 0 0 0.10266829 ;
createNode polyAverageVertex -n "polyAverageVertex120";
	rename -uid "F954D675-4C37-3FFA-987A-A9A4874A5BE5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "vtx[102]" "vtx[106:107]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex121";
	rename -uid "5FDFB8D4-4E5E-58E9-2279-1EA195C85F7C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[109]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex122";
	rename -uid "D69BA4BB-490E-B8C4-4FF8-92B25A5DAEDE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[109]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex123";
	rename -uid "FF142FA6-4384-E3EA-2624-ADBA60940632";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[109]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex124";
	rename -uid "07A8D739-4A60-7C79-F5B9-CFBBD7BC9D23";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[109]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex125";
	rename -uid "B18836DA-421D-C2ED-E813-20A79433F7D2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[102]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex126";
	rename -uid "B49F6A18-48BB-F532-1AE2-B5A80FE33DC0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[104]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex127";
	rename -uid "7834A8D5-4152-1CEB-6E84-4993734ECC50";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[103]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex128";
	rename -uid "EE2017F8-4DBD-4BD0-B022-87A2B5C1A962";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[103]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex129";
	rename -uid "D1D045E5-499A-0D7C-452A-5EB46ABFEDE3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[101]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex130";
	rename -uid "52E221BA-4E94-7661-79E5-799F4AE9DB90";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[98]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex131";
	rename -uid "1CC58D78-4090-3DE2-078C-7595A35A4DF1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[88]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex132";
	rename -uid "38B1EC2E-4808-FC58-B366-9699C13ECF07";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[62]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex133";
	rename -uid "5087AA93-4AEE-71B7-1214-84A9DB462D20";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[7]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex134";
	rename -uid "3E2CB888-4F04-63CE-4419-C4803CDF98C5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[7]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex135";
	rename -uid "8623AD2E-4A6B-15E8-D56A-AFAC79B17BD5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[4]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex136";
	rename -uid "8E0E68D6-4CA9-1135-AB62-7B96D30E5374";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[4]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex137";
	rename -uid "F50431FD-4164-E866-52AE-058A93F974AE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[4]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex138";
	rename -uid "108829CF-49EC-C08E-069D-218D647C305B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[4]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex139";
	rename -uid "F2812929-4564-9391-4506-C4AC98D7728F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex140";
	rename -uid "4C4CA3FA-430F-D29A-420F-04A495A88F94";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex141";
	rename -uid "C2710F22-4CD1-2E2A-CE89-4CB1AE3AC633";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex142";
	rename -uid "B4E4BF42-4B3F-EF51-D740-BCA591616F1A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[0]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex143";
	rename -uid "5680FC70-4EB1-8193-6AB9-C3B718CDEB43";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[0]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex144";
	rename -uid "9E420B29-4A57-5A9B-EC82-B3AF54074956";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[11]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex145";
	rename -uid "EFF0FA1A-4D9A-3C2C-B93A-71B5268CFAC3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[125]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex146";
	rename -uid "5E8299CE-466E-C7CF-C646-48A09AB8228E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[13]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex147";
	rename -uid "B7916F1D-4AE4-D8B0-E60C-47B0EA8D29EE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[14]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex148";
	rename -uid "96F6FFBB-4DC5-0CBA-C128-2193C21C1469";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "vtx[115:116]" "vtx[119:120]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex149";
	rename -uid "AD18B1A6-49CB-0526-C03F-03BED689BCB8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "vtx[115:116]" "vtx[119:120]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex150";
	rename -uid "1D23432D-4E60-1353-9AEC-99B093595E24";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "vtx[115:116]" "vtx[119:120]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex151";
	rename -uid "AB1E42CF-467B-6B72-2264-FC9A5D78FBAB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "vtx[115:116]" "vtx[119:120]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex152";
	rename -uid "A42D49E7-4287-8EF0-1C01-218BC8DFBE9E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "vtx[115:116]" "vtx[119:120]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex153";
	rename -uid "ABA02392-40B6-3E65-7F96-2AAA287391EB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[117]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex154";
	rename -uid "2C2C2503-4A0F-61D2-82F0-8E93858C5828";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[117]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex155";
	rename -uid "C57EF360-49D9-6923-2026-E4A94CA33358";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "vtx[129]" "vtx[131:132]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak40";
	rename -uid "0FFC5FB2-4485-F305-14F9-738D8BA36225";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk";
	setAttr ".tk[140]" -type "float3" 0 0.6929118 0 ;
	setAttr ".tk[141]" -type "float3" 0 0.42122459 0 ;
	setAttr ".tk[142]" -type "float3" 0 0.77753317 0 ;
	setAttr ".tk[143]" -type "float3" 0 0.79022598 0 ;
	setAttr ".tk[144]" -type "float3" 0 0.15556601 0 ;
createNode polyAverageVertex -n "polyAverageVertex156";
	rename -uid "6C2FD161-4A32-449E-8EDD-74B426E668DD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "vtx[129]" "vtx[131:132]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex157";
	rename -uid "12E93FEA-4BFB-1200-1991-7192A0CC0883";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[63]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak41";
	rename -uid "35C7E779-4AD2-6F49-7DF6-D9AB78F34800";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[57]" -type "float3" 0 -0.26387787 -0.24624871 ;
	setAttr ".tk[63]" -type "float3" 0 -0.26387787 -0.091457672 ;
	setAttr ".tk[78]" -type "float3" 0 -0.26387787 -0.2462505 ;
createNode polyAverageVertex -n "polyAverageVertex158";
	rename -uid "446D77A4-4FBE-03DC-5A90-5EA887170826";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[63]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex159";
	rename -uid "B290A925-4A93-9DB8-3F6A-3995B3814EA4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[63]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex160";
	rename -uid "29AB3627-49CA-C34A-2988-31B0DFB35C44";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[78]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex161";
	rename -uid "FE27E9B5-4E11-FE96-0885-D1973C8536C1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[77]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex162";
	rename -uid "654983F2-46C0-5AE4-0053-2EA52403F98B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[77]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex163";
	rename -uid "546E34D3-4886-6454-3B51-1E94573AF5BA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[62]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex164";
	rename -uid "D34C877F-4253-2D10-9991-B1875D9BEC68";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[79]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex165";
	rename -uid "4E6BC06F-4153-9E18-B420-2EAB60C73D18";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[79]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex166";
	rename -uid "C6C2A350-4400-D6C6-27EB-2F9858E749F1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[63]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak42";
	rename -uid "0A607758-4ED2-413D-8E11-03A180B3E4C6";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[57]" -type "float3" 0 0 0.051405109 ;
	setAttr ".tk[78]" -type "float3" 0 0 0.10723201 ;
	setAttr ".tk[79]" -type "float3" 0 5.9604645e-008 0 ;
createNode polyAverageVertex -n "polyAverageVertex167";
	rename -uid "1625295B-4B07-B64F-312C-F19B427022AC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[63]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex168";
	rename -uid "00175B84-49B8-6B68-19C1-0EBC6DCFD3B7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[93]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak43";
	rename -uid "3E58E5AD-403D-B35E-2E02-D3806B3ED7EF";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[57]" -type "float3" -0.013595115 0 0 ;
	setAttr ".tk[85]" -type "float3" 0 0 0.31216729 ;
	setAttr ".tk[86]" -type "float3" 0.017808 0 0.49427578 ;
	setAttr ".tk[89]" -type "float3" 0 0 0.34050345 ;
	setAttr ".tk[90]" -type "float3" 0 0 0.37708977 ;
	setAttr ".tk[95]" -type "float3" 0.28873646 0 0 ;
createNode polyAverageVertex -n "polyAverageVertex169";
	rename -uid "C66C3758-481F-6260-E1BB-3F92C0594FC6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[93]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex170";
	rename -uid "D44FBB7B-496B-5D53-52B4-CAB49E246894";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[93]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex171";
	rename -uid "601D1E19-43DC-932A-80F0-3889AC9A74F7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[93]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex172";
	rename -uid "8B377331-4889-ECEF-94F1-1880FC5B88B5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[93]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex173";
	rename -uid "8E70D033-4DAC-16A2-FF29-A6B948BBED3A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[93]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex174";
	rename -uid "91679AE7-4126-D241-27CF-FF8962242A15";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[88]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex175";
	rename -uid "D3C833B4-472B-1988-DFE5-AA8BF474DCF9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[87]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex176";
	rename -uid "56B43910-4716-8CF3-C769-E2976B1FEE77";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[87]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex177";
	rename -uid "D5773127-4300-6CE3-EE18-CAA828979A04";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[87]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex178";
	rename -uid "A0BA81C0-48AD-A429-6F4B-1DB294877254";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[80]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex179";
	rename -uid "A31FE1D6-498F-012A-B96E-81BB5BEDEB64";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[80]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex180";
	rename -uid "0943C7EC-4D94-8641-DADE-60A14680B70C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[104]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.060791651082918619 1;
createNode polyTweak -n "polyTweak44";
	rename -uid "D1F64436-4AD6-353C-BF75-E6BAB6B2A871";
	setAttr ".uopa" yes;
	setAttr -s 15 ".tk";
	setAttr ".tk[89]" -type "float3" 0 -0.081388943 0 ;
	setAttr ".tk[91]" -type "float3" 0 0 -1.0607917 ;
	setAttr ".tk[92]" -type "float3" 0 0 -1.0607917 ;
	setAttr ".tk[94]" -type "float3" 0 0 -1.0607917 ;
	setAttr ".tk[95]" -type "float3" -0.29158306 0.17919348 -0.32720396 ;
	setAttr ".tk[96]" -type "float3" 0 0.085596241 -0.16290317 ;
	setAttr ".tk[97]" -type "float3" 0 0.17919348 -0.16290317 ;
	setAttr ".tk[99]" -type "float3" 0 0.17919348 -0.16290317 ;
	setAttr ".tk[100]" -type "float3" 0 0 -1.0607917 ;
	setAttr ".tk[105]" -type "float3" 0 0 -1.0607917 ;
	setAttr ".tk[108]" -type "float3" 0 0 -0.060791671 ;
createNode polyAverageVertex -n "polyAverageVertex181";
	rename -uid "B95D4792-4843-5E22-0A74-2693473DFFCE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[104]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.060791651082918619 1;
createNode polyAverageVertex -n "polyAverageVertex182";
	rename -uid "CEC8C191-4931-B0D2-C256-7786A600BB97";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[104]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.060791651082918619 1;
createNode polyAverageVertex -n "polyAverageVertex183";
	rename -uid "8C3DF83E-40EC-2D7E-85C5-8A9830877808";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[104]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.060791651082918619 1;
createNode polyAverageVertex -n "polyAverageVertex184";
	rename -uid "9EBE4140-4A8C-961D-1EA7-FD98E4EBEC6C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[104]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.060791651082918619 1;
createNode polyAverageVertex -n "polyAverageVertex185";
	rename -uid "FBA0B42D-4A36-9DFC-C311-3B9496087141";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[107]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.060791651082918619 1;
createNode polyAverageVertex -n "polyAverageVertex186";
	rename -uid "55762BB8-4255-B127-E35E-2CA7A2998DD8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[107]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.060791651082918619 1;
createNode polyAverageVertex -n "polyAverageVertex187";
	rename -uid "4AC5AC28-4613-5C27-26F4-C2BCD2C2E16C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[107]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.060791651082918619 1;
createNode polyAverageVertex -n "polyAverageVertex188";
	rename -uid "5A879A40-4063-F466-338D-AA887F48B952";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[107]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.060791651082918619 1;
createNode polyAverageVertex -n "polyAverageVertex189";
	rename -uid "01FF9E3B-46CF-A42E-C87F-1BBFDBC13B11";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[107]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.060791651082918619 1;
createNode polyAverageVertex -n "polyAverageVertex190";
	rename -uid "D738D8BB-4B2B-ECAB-636C-5D8D64368F39";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[107]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.060791651082918619 1;
createNode polyAverageVertex -n "polyAverageVertex191";
	rename -uid "574AD6F6-452C-A7A2-6F06-AC9C0EFD42A9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "vtx[127:128]" "vtx[130]" "vtx[133:137]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.060791651082918619 1;
createNode polyTweak -n "polyTweak45";
	rename -uid "423FBC7F-4F10-CF55-17FC-D981436D6989";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk";
	setAttr ".tk[110]" -type "float3" 0 -0.21843043 0.39831445 ;
	setAttr ".tk[138]" -type "float3" 0 0 -0.28267461 ;
	setAttr ".tk[139]" -type "float3" 0 0 -0.15418619 ;
	setAttr ".tk[140]" -type "float3" 0 0 -0.14133734 ;
	setAttr ".tk[141]" -type "float3" 0 -0.051395394 -0.23127928 ;
	setAttr ".tk[144]" -type "float3" 0 0 -0.57819819 ;
	setAttr ".tk[145]" -type "float3" 0 0 -0.62959361 ;
	setAttr ".tk[146]" -type "float3" 0 0 -0.78377986 ;
	setAttr ".tk[147]" -type "float3" 0 0 -0.55250049 ;
createNode polyAverageVertex -n "polyAverageVertex192";
	rename -uid "196E73E4-4795-1FC8-3748-2AB6182E85AD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "vtx[127:128]" "vtx[130]" "vtx[133:137]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.060791651082918619 1;
createNode polyAverageVertex -n "polyAverageVertex193";
	rename -uid "15B72D2C-4241-6C15-49A9-35AD0B9C1C76";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "vtx[127:128]" "vtx[130]" "vtx[133:137]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.060791651082918619 1;
createNode polyAverageVertex -n "polyAverageVertex194";
	rename -uid "ECA8FD2A-44F5-CF42-D4C0-1894597C6AFC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "vtx[127:128]" "vtx[130]" "vtx[133:137]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.060791651082918619 1;
createNode polyAverageVertex -n "polyAverageVertex195";
	rename -uid "15C15295-415B-95FA-EE38-2DA66E1C1F6B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "vtx[127:128]" "vtx[130]" "vtx[133:137]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.060791651082918619 1;
createNode polyAverageVertex -n "polyAverageVertex196";
	rename -uid "D95D0814-4A3E-6890-FC07-518FF2B2CD1C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "vtx[127:128]" "vtx[130]" "vtx[133:137]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.060791651082918619 1;
createNode polyAverageVertex -n "polyAverageVertex197";
	rename -uid "ADE6BA8A-4794-0666-EB1F-A9AA7F13C250";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "vtx[127:128]" "vtx[130]" "vtx[133:137]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.060791651082918619 1;
createNode polyAverageVertex -n "polyAverageVertex198";
	rename -uid "5A25E596-465B-44CB-5B34-4FB1D289A597";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "vtx[127:128]" "vtx[130]" "vtx[133:137]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.060791651082918619 1;
createNode polyAverageVertex -n "polyAverageVertex199";
	rename -uid "401FBB2E-4DED-6E81-4B69-65A73948D7C5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "vtx[113:114]" "vtx[122]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.060791651082918619 1;
createNode polyTweak -n "polyTweak46";
	rename -uid "E439DCF9-4380-5DF2-F0F6-C787FC1D14A0";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[138]" -type "float3" 0 0 -0.16703503 ;
	setAttr ".tk[139]" -type "float3" 0 0.32122126 -0.012848848 ;
createNode polyAverageVertex -n "polyAverageVertex200";
	rename -uid "0604C5FE-43F5-DA01-D188-B892101ADB38";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "vtx[113:114]" "vtx[122]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.060791651082918619 1;
createNode polyAverageVertex -n "polyAverageVertex201";
	rename -uid "2F25F009-4421-A26D-C8FF-6BB237FC2E72";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "vtx[113:114]" "vtx[122]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.060791651082918619 1;
createNode polyAverageVertex -n "polyAverageVertex202";
	rename -uid "487DA12E-4CCF-7AE0-7108-F6A41FB04AC8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "vtx[113:114]" "vtx[122]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.060791651082918619 1;
createNode polyAverageVertex -n "polyAverageVertex203";
	rename -uid "1F00EDE7-4079-B0D2-BA15-E383D438412D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "vtx[116]" "vtx[119:121]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.060791651082918619 1;
createNode polyAverageVertex -n "polyAverageVertex204";
	rename -uid "1954AD1C-48F0-9E0D-1EF2-8F834A953A22";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "vtx[116]" "vtx[119:121]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.060791651082918619 1;
createNode polyAverageVertex -n "polyAverageVertex205";
	rename -uid "0D5D930C-45F4-CE74-5B89-A8B164DB0861";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "vtx[116]" "vtx[119:121]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.060791651082918619 1;
createNode polyAverageVertex -n "polyAverageVertex206";
	rename -uid "410C658A-41DA-194D-43BD-4D86C833397F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "vtx[116]" "vtx[119:121]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.060791651082918619 1;
createNode polyAverageVertex -n "polyAverageVertex207";
	rename -uid "E59CABA6-4383-F503-72A4-5D9C694BEB7A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "vtx[13:14]" "vtx[17:18]" "vtx[26]" "vtx[29]" "vtx[31]" "vtx[33]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.060791651082918619 1;
createNode polyExtrudeEdge -n "polyExtrudeEdge4";
	rename -uid "4961DD4B-490F-F832-DD87-7783059BCBD2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[247]" "e[250]" "e[252]" "e[254]" "e[256]" "e[258]" "e[260]" "e[262:263]" "e[265:266]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.060791651082918619 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.0296284 -1.9403181 -1.1319411 ;
	setAttr ".rs" 60707;
	setAttr ".lt" -type "double3" -2.7755575615628914e-017 -0.62446390684839115 2.7755575615628914e-016 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.29612833261489868 -4.3820748329162598 -1.7229951225987219 ;
	setAttr ".cbx" -type "double3" 2.3553850650787354 0.50143861770629883 -0.54088695876510384 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge5";
	rename -uid "6B608A9D-434A-7B11-3B10-1491C39E6B24";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[269]" "e[272]" "e[274]" "e[276]" "e[278]" "e[280]" "e[282]" "e[284:285]" "e[287]" "e[289]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.060791651082918619 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.0278881 -1.4619199 -1.7147222 ;
	setAttr ".rs" 50140;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.18091154098510742 -3.6730046272277832 -2.2597153984776281 ;
	setAttr ".cbx" -type "double3" 2.2366876602172852 0.74916470050811768 -1.1697289549580359 ;
createNode polyTweak -n "polyTweak47";
	rename -uid "30B438D8-4EB8-D522-22CA-3FA4351D4EE2";
	setAttr ".uopa" yes;
	setAttr -s 14 ".tk";
	setAttr ".tk[149]" -type "float3" -0.097344831 0.2041049 0.024624974 ;
	setAttr ".tk[150]" -type "float3" -0.091896042 0.13751344 -0.0021105281 ;
	setAttr ".tk[151]" -type "float3" 0.032373447 0.44868824 0.0034643095 ;
	setAttr ".tk[152]" -type "float3" -0.0036898192 0.44974717 0.010704026 ;
	setAttr ".tk[153]" -type "float3" 0.076733761 0.44624928 -0.012144905 ;
	setAttr ".tk[154]" -type "float3" 0.12275743 0.44433543 -0.01248975 ;
	setAttr ".tk[155]" -type "float3" -0.023296244 0.42425254 0.034234684 ;
	setAttr ".tk[156]" -type "float3" -0.042014576 0.38360527 0.042862196 ;
	setAttr ".tk[157]" -type "float3" -0.071695238 0.3101362 0.055345789 ;
	setAttr ".tk[158]" -type "float3" -0.095105693 0.24894223 0.034101091 ;
	setAttr ".tk[159]" -type "float3" -0.071679644 0.091024525 -0.017705135 ;
	setAttr ".tk[160]" -type "float3" -0.12275743 0.00066179223 -0.055345796 ;
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "D8479A32-421D-8B1B-1DB5-26A47BC229F1";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[261]" -type "float2" -0.42121673 -0.1680195 ;
	setAttr ".uvtk[266]" -type "float2" 1.8247144 2.2723927 ;
	setAttr ".uvtk[451]" -type "float2" 0.00084301288 0.00040000817 ;
	setAttr ".uvtk[492]" -type "float2" 5.3605519e-005 5.3909858e-005 ;
createNode polyMergeVert -n "polyMergeVert2";
	rename -uid "D9557232-4A22-F2A4-0A33-DA82F84A3A42";
	setAttr ".ics" -type "componentList" 2 "vtx[111]" "vtx[160]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.060791651082918619 1;
	setAttr ".d" 1e-006;
createNode polyTweak -n "polyTweak48";
	rename -uid "719CEEF0-4F82-43CB-F26D-5C8F5C09135D";
	setAttr ".uopa" yes;
	setAttr -s 14 ".tk";
	setAttr ".tk[111]" -type "float3" -0.078068256 -0.30944335 -0.23052502 ;
	setAttr ".tk[161]" -type "float3" 0 0.6424486 -0.87292546 ;
	setAttr ".tk[162]" -type "float3" 0 0.6424486 -0.87292546 ;
	setAttr ".tk[163]" -type "float3" 0 0.6424486 -0.87292546 ;
	setAttr ".tk[164]" -type "float3" 0 0.6424486 -0.87292546 ;
	setAttr ".tk[165]" -type "float3" 0 0.6424486 -0.87292546 ;
	setAttr ".tk[166]" -type "float3" 0 0.6424486 -0.87292546 ;
	setAttr ".tk[167]" -type "float3" 0 0.6424486 -0.87292546 ;
	setAttr ".tk[168]" -type "float3" 0 0.6424486 -0.87292546 ;
	setAttr ".tk[169]" -type "float3" 0 0.6424486 -0.87292546 ;
	setAttr ".tk[170]" -type "float3" 0 0.6424486 -0.87292546 ;
	setAttr ".tk[171]" -type "float3" 0 0.6424486 -0.87292546 ;
	setAttr ".tk[172]" -type "float3" 0 0.6424486 -0.87292546 ;
createNode polyTweakUV -n "polyTweakUV2";
	rename -uid "2C9B1AEB-4E09-0D15-7A07-09B615409B4F";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[263]" -type "float2" 1.8484752 1.7462709 ;
	setAttr ".uvtk[495]" -type "float2" 4.8305737e-005 -2.1740632e-005 ;
createNode polyMergeVert -n "polyMergeVert3";
	rename -uid "E424639D-45FF-4586-F1CE-599C52923A75";
	setAttr ".ics" -type "componentList" 2 "vtx[112]" "vtx[171]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.060791651082918619 1;
	setAttr ".d" 1e-006;
createNode polyTweak -n "polyTweak49";
	rename -uid "E002BE43-472E-9103-5FAB-5F89331725E9";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[112]" -type "float3" 0.027019262 -0.15230727 -1.1034467 ;
createNode polySplit -n "polySplit7";
	rename -uid "D2AEDE65-4577-A7FB-44DE-95B92FAB5DF6";
	setAttr -s 18 ".e[0:17]"  0.441098 0.55890203 0.55890203 0.55890203
		 0.55890203 0.55890203 0.55890203 0.55890203 0.55890203 0.55890203 0.55890203 0.55890203
		 0.55890203 0.55890203 0.55890203 0.55890203 0.55890203 0.55890203;
	setAttr -s 18 ".d[0:17]"  -2147483497 -2147483489 -2147483488 -2147483482 -2147483471 -2147483465 
		-2147483456 -2147483340 -2147483358 -2147483359 -2147483343 -2147483345 -2147483347 -2147483349 -2147483355 -2147483356 -2147483353 -2147483351;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "A206B703-4DB3-44D1-454D-7E8EBA46F623";
	setAttr ".sa" 8;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyDelEdge -n "polyDelEdge1";
	rename -uid "8C4CD97F-44ED-40C7-9F07-CBBDE20ABF65";
	setAttr ".ics" -type "componentList" 4 "e[32]" "e[34]" "e[36]" "e[38]";
	setAttr ".cv" yes;
createNode polyDelEdge -n "polyDelEdge2";
	rename -uid "32B38FC9-427C-FF98-B425-8AAE32B36A1B";
	setAttr ".ics" -type "componentList" 4 "e[24]" "e[26]" "e[28]" "e[30]";
	setAttr ".cv" yes;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "CCB38DEC-4175-C2C9-5503-AFA3F98BE532";
	setAttr ".ics" -type "componentList" 1 "f[8:11]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5.5886567264276739 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.9604645e-008 4.5886569 2.9802322e-008 ;
	setAttr ".rs" 62139;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.99999988079071045 4.5886567264276739 -0.99999988079071045 ;
	setAttr ".cbx" -type "double3" 1 4.5886567264276739 0.99999994039535522 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "C94516EC-466B-68F4-22C4-7D99DF4E54EE";
	setAttr ".ics" -type "componentList" 1 "f[8:11]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5.5886567264276739 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.9604645e-008 4.2409043 2.9802322e-008 ;
	setAttr ".rs" 34385;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.99999988079071045 4.2409040361124273 -0.99999988079071045 ;
	setAttr ".cbx" -type "double3" 1 4.2409043937402959 0.99999994039535522 ;
createNode polyTweak -n "polyTweak50";
	rename -uid "732124F1-45D5-BBE3-BBD1-3793593B13F6";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk";
	setAttr ".tk[8]" -type "float3" 0 3.5762787e-007 0 ;
	setAttr ".tk[10]" -type "float3" 0 3.5762787e-007 0 ;
	setAttr ".tk[12]" -type "float3" 0 3.5762787e-007 0 ;
	setAttr ".tk[14]" -type "float3" 0 3.5762787e-007 0 ;
	setAttr ".tk[17]" -type "float3" 0 -0.34775233 0 ;
	setAttr ".tk[18]" -type "float3" 0 -0.34775269 0 ;
	setAttr ".tk[19]" -type "float3" 0 -0.34775269 0 ;
	setAttr ".tk[20]" -type "float3" 0 -0.34775269 0 ;
	setAttr ".tk[21]" -type "float3" 0 -0.34775269 0 ;
	setAttr ".tk[22]" -type "float3" 0 -0.34775269 0 ;
	setAttr ".tk[23]" -type "float3" 0 -0.34775269 0 ;
	setAttr ".tk[24]" -type "float3" 0 -0.34775269 0 ;
	setAttr ".tk[25]" -type "float3" 0 -0.34775269 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "2E324062-4DBE-E6E8-176B-01BD609B081B";
	setAttr ".ics" -type "componentList" 1 "f[8:11]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 5.5886567264276739 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.1920929e-007 4.2409043 -8.3446503e-007 ;
	setAttr ".rs" 54438;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.5321841239929199 4.2409037976938482 -2.5321927070617676 ;
	setAttr ".cbx" -type "double3" 2.532184362411499 4.2409049897867437 2.5321910381317139 ;
createNode polyTweak -n "polyTweak51";
	rename -uid "C9ED9E2E-47BC-E034-E331-C08F18FF452F";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk[25:33]" -type "float3"  -9.1325319e-008 3.5463555e-007
		 -1.53219295 -1.083418131 -3.5463555e-007 -1.083418131 -9.1325319e-008 -3.5463555e-007
		 -4.5662862e-008 -1.53218436 -3.5463555e-007 -4.5662862e-008 -1.083418131 -3.5463555e-007
		 1.083417892 -9.1325319e-008 -3.5463555e-007 1.53219116 1.083418012 -3.5463555e-007
		 1.083418012 1.53218436 -3.5463555e-007 -4.5662862e-008 1.083417892 -3.5463555e-007
		 -1.083418131;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "E40C0041-4BB4-895E-F549-4EABAD35FABD";
	setAttr ".ics" -type "componentList" 1 "f[8:11]";
	setAttr ".ix" -type "matrix" 1.8153159640494065 0 0 0 0 1.8153159640494065 0 0 0 0 1.8153159640494065 0
		 0 5.5886567264276739 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.1640253e-007 2.7669401 -1.5148177e-006 ;
	setAttr ".rs" 53364;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -4.5967142641968097 2.7669387403693597 -4.5967298451787091 ;
	setAttr ".cbx" -type "double3" 4.596714697001862 2.7669413371996763 4.5967268155433398 ;
createNode polyTweak -n "polyTweak52";
	rename -uid "7AF2477F-4A35-566A-36EB-84835D56B145";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk[33:41]" -type "float3"  0 -0.20664185 0 0 -0.20664185
		 0 0 -0.20664185 0 0 -0.20664185 0 0 -0.20664185 0 0 -0.20664185 0 0 -0.20664185 0
		 0 -0.20664185 0 0 -0.20664185 0;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "6F7AD12B-40BA-159B-3E99-3D8392ED537D";
	setAttr ".ics" -type "componentList" 1 "f[8:11]";
	setAttr ".ix" -type "matrix" 1.8153159640494065 0 0 0 0 1.8153159640494065 0 0 0 0 1.8153159640494065 0
		 0 5.5886567264276739 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 2.7669404 -1.2984152e-006 ;
	setAttr ".rs" 63724;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.1921368176326679 2.7669396059794651 -2.1921450409286707 ;
	setAttr ".cbx" -type "double3" 2.1921368176326679 2.7669409043946236 2.1921424440983541 ;
createNode polyTweak -n "polyTweak53";
	rename -uid "CB034C02-4C22-418D-E0BD-71AFAD06CFE4";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk[41:49]" -type "float3"  4.7773035e-008 -3.727159e-007
		 1.32460928 0.93663859 3.727159e-007 0.93663841 4.7773035e-008 3.727159e-007 -3.5026969e-007
		 1.32460546 3.727159e-007 -3.5026969e-007 0.93663859 3.727159e-007 -0.93663871 4.7773035e-008
		 3.727159e-007 -1.32460928 -0.93663853 3.727159e-007 -0.93663877 -1.32460546 3.727159e-007
		 -3.5026969e-007 -0.93663847 3.727159e-007 0.93663841;
createNode polyTweak -n "polyTweak54";
	rename -uid "441D7A87-4A1D-2DC6-F61C-C68C50D7CE86";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk[49:57]" -type "float3"  0 0.40974236 0 0 0.40974236
		 0 0 0.40974236 0 0 0.40974236 0 0 0.40974236 0 0 0.40974236 0 0 0.40974236 0 0 0.40974236
		 0 0 0.40974236 0;
createNode deleteComponent -n "deleteComponent2";
	rename -uid "4B6232E2-400C-5B2A-2188-3CAB9615DD4C";
	setAttr ".dc" -type "componentList" 1 "f[8:11]";
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "45F69D87-4E6F-134B-EA87-90972053F58E";
	setAttr ".ics" -type "componentList" 1 "f[8:11]";
	setAttr ".ix" -type "matrix" 1.8153159640494065 0 0 0 0 1.8153159640494065 0 0 0 0 1.8153159640494065 0
		 0 5.5886567264276739 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.1640253e-007 7.4039731 1.0820126e-007 ;
	setAttr ".rs" 62529;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.7589751031684915 7.4039726904770804 -2.7589751031684915 ;
	setAttr ".cbx" -type "double3" 2.7589755359735442 7.4039735560871858 2.758975319571018 ;
createNode polyTweak -n "polyTweak55";
	rename -uid "E9CA7E8D-4223-5C10-353F-92B8C44D7E9F";
	setAttr ".uopa" yes;
	setAttr -s 33 ".tk";
	setAttr ".tk[0]" -type "float3" 0.26185432 0.82363164 -0.26185438 ;
	setAttr ".tk[1]" -type "float3" -1.6209048e-008 0.82363164 -0.37031823 ;
	setAttr ".tk[2]" -type "float3" -0.26185438 0.82363164 -0.26185438 ;
	setAttr ".tk[3]" -type "float3" -0.37031823 0.82363164 -8.1045242e-009 ;
	setAttr ".tk[4]" -type "float3" -0.26185438 0.82363164 0.26185438 ;
	setAttr ".tk[5]" -type "float3" -1.6209048e-008 0.82363164 0.37031823 ;
	setAttr ".tk[6]" -type "float3" 0.26185432 0.82363164 0.26185438 ;
	setAttr ".tk[7]" -type "float3" 0.37031823 0.82363164 -8.1045242e-009 ;
	setAttr ".tk[8]" -type "float3" 0.36757672 -8.437695e-015 -0.36757678 ;
	setAttr ".tk[9]" -type "float3" -3.0984417e-008 -4.2188475e-015 -0.51983219 ;
	setAttr ".tk[10]" -type "float3" -0.36757678 -8.437695e-015 -0.36757678 ;
	setAttr ".tk[11]" -type "float3" -0.51983219 -4.2188475e-015 -1.5492208e-008 ;
	setAttr ".tk[12]" -type "float3" -0.36757678 -8.437695e-015 0.36757678 ;
	setAttr ".tk[13]" -type "float3" -3.0984417e-008 -4.2188475e-015 0.51983219 ;
	setAttr ".tk[14]" -type "float3" 0.36757672 -8.437695e-015 0.36757678 ;
	setAttr ".tk[15]" -type "float3" 0.51983219 -4.2188475e-015 -1.5492208e-008 ;
	setAttr ".tk[16]" -type "float3" -3.0984417e-008 -4.2188475e-015 -1.5492208e-008 ;
	setAttr ".tk[17]" -type "float3" -3.0984417e-008 8.437695e-015 -0.51983219 ;
	setAttr ".tk[18]" -type "float3" -0.36757678 8.437695e-015 -0.36757678 ;
	setAttr ".tk[19]" -type "float3" -0.51983219 8.437695e-015 -1.5492208e-008 ;
	setAttr ".tk[20]" -type "float3" -0.36757678 8.437695e-015 0.36757678 ;
	setAttr ".tk[21]" -type "float3" -3.0984417e-008 8.437695e-015 0.51983219 ;
	setAttr ".tk[22]" -type "float3" 0.36757672 8.437695e-015 0.36757678 ;
	setAttr ".tk[23]" -type "float3" 0.51983219 8.437695e-015 -1.5492208e-008 ;
	setAttr ".tk[24]" -type "float3" 0.36757672 8.437695e-015 -0.36757678 ;
	setAttr ".tk[49]" -type "float3" 0 -0.27293608 0 ;
	setAttr ".tk[50]" -type "float3" 0 -0.27293608 0 ;
	setAttr ".tk[51]" -type "float3" 0 -0.27293608 0 ;
	setAttr ".tk[52]" -type "float3" 0 -0.27293608 0 ;
	setAttr ".tk[53]" -type "float3" 0 -0.27293608 0 ;
	setAttr ".tk[54]" -type "float3" 0 -0.27293608 0 ;
	setAttr ".tk[55]" -type "float3" 0 -0.27293608 0 ;
	setAttr ".tk[56]" -type "float3" 0 -0.27293608 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	rename -uid "6BF6A3F1-4C32-6DF1-D1FA-2AB41E911B1A";
	setAttr ".ics" -type "componentList" 1 "f[8:11]";
	setAttr ".ix" -type "matrix" 1.8153159640494065 0 0 0 0 1.8153159640494065 0 0 0 0 1.8153159640494065 0
		 0 5.5886567264276739 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.1640253e-007 8.5452271 1.0820126e-007 ;
	setAttr ".rs" 39523;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.6453886631071519 8.5452268124126078 -2.6453886631071519 ;
	setAttr ".cbx" -type "double3" 2.6453890959122051 8.5452276780227141 2.6453888795096785 ;
createNode polyTweak -n "polyTweak56";
	rename -uid "BC4AD080-4F1D-3F64-6D8B-7DB37AF873F9";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk[56:64]" -type "float3"  6.183432e-009 0.62868065 0.062571041
		 6.183432e-009 0.62868065 3.091716e-009 0.044244416 0.62868065 0.044244412 0.062571049
		 0.62868065 3.091716e-009 0.044244416 0.62868065 -0.044244401 6.183432e-009 0.62868065
		 -0.062571041 -0.044244394 0.62868065 -0.044244401 -0.062571049 0.62868065 3.091716e-009
		 -0.044244394 0.62868065 0.044244412;
createNode polySoftEdge -n "polySoftEdge1";
	rename -uid "81126FB4-41AD-B348-91ED-1BBD6BB24BA2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.060791651082918619 1;
	setAttr ".a" 180;
createNode polyAverageVertex -n "polyAverageVertex208";
	rename -uid "AFD63E81-4FF8-103C-52E5-3594AACFB515";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[135]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.33694292923456126 1;
createNode polyTweak -n "polyTweak58";
	rename -uid "1735DF97-440E-E1A8-DE23-DBB05600E5D2";
	setAttr ".uopa" yes;
	setAttr -s 39 ".tk";
	setAttr ".tk[8]" -type "float3" -0.0064189434 0 0 ;
	setAttr ".tk[9]" -type "float3" 0.0076916218 0 0 ;
	setAttr ".tk[24]" -type "float3" -0.012331963 0 0 ;
	setAttr ".tk[25]" -type "float3" 0.0053572655 0 0 ;
	setAttr ".tk[34]" -type "float3" -0.0050780773 0 0 ;
	setAttr ".tk[50]" -type "float3" -0.00063252449 0 0 ;
	setAttr ".tk[57]" -type "float3" 1.1920929e-006 0 0 ;
	setAttr ".tk[59]" -type "float3" 0.0024046898 0 0 ;
	setAttr ".tk[86]" -type "float3" 1.1920929e-006 0 0 ;
	setAttr ".tk[90]" -type "float3" 0.010106802 0 0 ;
	setAttr ".tk[92]" -type "float3" -0.013000011 0 0 ;
	setAttr ".tk[95]" -type "float3" 1.1920929e-006 0 0 ;
	setAttr ".tk[118]" -type "float3" -0.012331963 0 0 ;
	setAttr ".tk[132]" -type "float3" -0.047144651 0 0 ;
	setAttr ".tk[135]" -type "float3" -0.24045289 -0.083787613 -0.1233166 ;
	setAttr ".tk[136]" -type "float3" -0.2162694 -0.14292978 0.059887704 ;
	setAttr ".tk[140]" -type "float3" 0 0.37262449 -0.16513096 ;
	setAttr ".tk[141]" -type "float3" 0 0.18636043 -0.14342487 ;
	setAttr ".tk[142]" -type "float3" 0 0.37281987 -0.19923986 ;
	setAttr ".tk[143]" -type "float3" 0.2961266 0.38666016 -0.19924004 ;
	setAttr ".tk[146]" -type "float3" 0.21566048 0.14311136 -0.061195355 ;
	setAttr ".tk[147]" -type "float3" 0.16928837 0.046789836 0.11765901 ;
	setAttr ".tk[151]" -type "float3" 0 0.127728 -0.02862858 ;
	setAttr ".tk[152]" -type "float3" 0 0.18459839 -0.011424577 ;
	setAttr ".tk[153]" -type "float3" 0 0.0035765418 -0.065721564 ;
	setAttr ".tk[154]" -type "float3" 0.18091106 -0.017480293 -0.066540845 ;
	setAttr ".tk[162]" -type "float3" 0 0.053969841 0.18203568 ;
	setAttr ".tk[163]" -type "float3" 0 0.11084025 0.1992397 ;
	setAttr ".tk[164]" -type "float3" 0 -0.070181422 0.14494285 ;
	setAttr ".tk[165]" -type "float3" 0.18091106 -0.091238417 0.14412346 ;
	setAttr ".tk[171]" -type "float3" -0.0072650909 0 0 ;
	setAttr ".tk[185]" -type "float3" 0 0.14337495 0.10631627 ;
	setAttr ".tk[186]" -type "float3" 0 0.086504579 0.089112163 ;
	setAttr ".tk[187]" -type "float3" 0 -0.037646893 0.052019116 ;
	setAttr ".tk[188]" -type "float3" 0.18091106 -0.058704007 0.051199824 ;
createNode polyAverageVertex -n "polyAverageVertex209";
	rename -uid "7C47AFD1-4230-4086-CEFC-19910866C08A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[135]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.33694292923456126 1;
createNode polyAverageVertex -n "polyAverageVertex210";
	rename -uid "6D1C115C-49A2-3E66-2C61-0C8F62C87236";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[135]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.33694292923456126 1;
createNode polyAverageVertex -n "polyAverageVertex211";
	rename -uid "C6F61DE9-4C30-2077-4880-FC8FB8541A52";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[136]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.33694292923456126 1;
createNode polyAverageVertex -n "polyAverageVertex212";
	rename -uid "19B256A4-473C-6924-F224-9484925874B5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[136]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.33694292923456126 1;
createNode polyAverageVertex -n "polyAverageVertex213";
	rename -uid "B7DC5BFC-44AB-7895-5DF8-5484DCCA899A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[136]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.33694292923456126 1;
createNode polyAverageVertex -n "polyAverageVertex214";
	rename -uid "91758EE4-4FAE-6F77-2381-918A61A04569";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[136]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.33694292923456126 1;
createNode polyAverageVertex -n "polyAverageVertex215";
	rename -uid "26918C27-4159-E48C-3E9F-6FA7CD3E15A8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[127]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.33694292923456126 1;
createNode polyAverageVertex -n "polyAverageVertex216";
	rename -uid "68BF286C-44AD-67FB-7805-95B5899B7555";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[127]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.33694292923456126 1;
createNode polyAverageVertex -n "polyAverageVertex217";
	rename -uid "285CC15F-4B35-5863-2FDD-549E85A81649";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[127]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.33694292923456126 1;
createNode polyAverageVertex -n "polyAverageVertex218";
	rename -uid "7181FA67-4B70-E68D-DFC1-8BA376AA738E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[128]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.33694292923456126 1;
createNode polyAverageVertex -n "polyAverageVertex219";
	rename -uid "6089C83C-45B2-5F3F-C2C5-3C91C6087CE0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[128]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.33694292923456126 1;
createNode polyAverageVertex -n "polyAverageVertex220";
	rename -uid "627BC417-486A-2885-CC33-31AAF6F63225";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[137]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.33694292923456126 1;
createNode polyAverageVertex -n "polyAverageVertex221";
	rename -uid "81723658-4000-31E9-EF5B-A287F3840DF8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[137]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.33694292923456126 1;
createNode polyAverageVertex -n "polyAverageVertex222";
	rename -uid "16C22E95-4DD6-8A9A-E5F5-838D95488605";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[148]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.33694292923456126 1;
createNode polyAverageVertex -n "polyAverageVertex223";
	rename -uid "A9D09F10-458B-932C-A83B-8D90C048EEF0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[148]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.33694292923456126 1;
createNode polyAverageVertex -n "polyAverageVertex224";
	rename -uid "EB402F1C-4366-96A0-148C-A6BF54FCA41A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[148]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.33694292923456126 1;
createNode polyAverageVertex -n "polyAverageVertex225";
	rename -uid "8C79ADC7-429B-09DD-C49A-B8BA8FC80A62";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[148]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.33694292923456126 1;
createNode polyAverageVertex -n "polyAverageVertex226";
	rename -uid "B2A0831A-4041-351C-CD67-C897C1235140";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[130]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.33694292923456126 1;
createNode createColorSet -n "createColorSet1";
	rename -uid "8CDD4342-41A5-211F-3519-448575FCF087";
	setAttr ".colos" -type "string" "SculptFreezeColorTemp";
	setAttr ".clam" no;
createNode polyAverageVertex -n "polyAverageVertex227";
	rename -uid "500D6253-4B06-E4BF-944B-7E98B55846CE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "vtx[141]" "vtx[144]" "vtx[152]" "vtx[155]" "vtx[184:185]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.33694292923456126 1;
createNode polyTweak -n "polyTweak59";
	rename -uid "05B7F4C7-4316-B050-F053-2F8656F2A97A";
	setAttr ".uopa" yes;
	setAttr -s 189 ".tk";
	setAttr ".tk[14:179]" -type "float3"  -0.0011129379 0.00059235096 0.00010311604
		 0 0 0 0 0 0 -0.003718853 0.00016498566 -0.0014858246 0 0 0 0 0 0 0 0 0.3080551 -0.0062963963
		 0.0098247528 -0.0067149401 0 0 0 0 0 0.3080551 0 0 0 0 0 0.3080551 -0.0038201809
		 0.0030994415 -0.0083990097 0 0 -0.051442485 0 0 0 0 0 0 0 0 -0.023655113 0 0 0 0
		 0 -0.071186729 -0.0010137558 3.5524368e-005 -0.0016493201 0 0 0.3080551 0 0 0.3080551
		 0 0 0.3080551 0 0 -0.051442485 0 0 0 0 0 0 0 0 -0.023655113 0 0 -0.071186729 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0.00051832199 -0.0013725758 -0.0028421879 0 0 0 0 0 0 0
		 0 0 0 0 0 0.0014308691 0.0022112131 -0.0055109262 0 0 0 0.0013556754 -0.0015923977
		 -0.0005479455 0.00069466233 -0.014362335 -0.041212678 0.01417762 -0.10061693 -0.11234838
		 0.0075612068 -0.0096273422 -0.060439229 -0.015859604 -0.19402933 -0.13328528 0 0
		 0 -0.00030434132 -0.00082802773 -0.002010107 0 0 0 -0.0028352737 -0.0093802214 -0.053430736
		 -0.004119873 -0.022060394 -0.0041895136 0 0 0 0 0 0 0 0 0 0 0 0 -8.7022781e-005 -0.00013071299
		 0.00024974346 -0.2175622 0.0051674247 0.10795239 -0.11383128 0.035098791 0.139189
		 0 0 0 -0.028582573 0.0015342236 -0.025027752 -0.013476849 0.012490153 -0.002596885
		 -0.092506349 0.18133783 -0.087429076 -0.060560346 0.092885494 -0.096542448 0 0 0
		 0 0 0 -0.028663754 0.028258324 -0.055936247 0 0 0 -0.0063340664 -0.00029850006 -0.010008469
		 -0.043029785 0.00090050697 -0.064345375 0 0 0 0 0 0 0 0 0 0 0 0 -0.067734957 0.098755836
		 0.013609648 -0.038994789 0.058979928 -0.0015999079 -0.13507617 0.30483913 -0.17156148
		 -0.069674373 0.14121151 -0.11347759 0 0 0 0 0 0 -0.052616477 0.060734749 -0.091398418
		 -0.038374305 0.030886889 -0.093799472 0.0017096996 0.078779459 0.040270925 -0.077939749
		 0.084415913 -0.014200866 0.028234959 0.048145175 0.015560299 -0.069290638 0.20131135
		 0.16125619 -0.023688316 0.017439365 0.014551878 -0.065086603 -0.010733843 0.12966418
		 -0.14610815 0.11390162 0.19693172 0.22472495 0 0 0 0 0 -0.073854804 0.21932721 0.22203839
		 -0.0024455786 0.28073454 0.21258032 -0.24343693 0.048296213 0.39625561 -0.24316335
		 0.14314175 0.066961408 0.014014482 0.064889222 0.061460197 6.210804e-005 0.11162233
		 0.16031253 0.045689344 0.0038414598 0.024698615 0 0 0 -0.016740203 0.067854404 0.044938684
		 0.24006075 0 0 0 0 0 0.037504911 0.22910523 0.14607298 0.092374802 0.28922629 0.24720335
		 0.017399907 0.089488745 0.36196625 -0.04437983 0.0307374 0.15501332 0.19934225 0.13083188
		 0.079390287 -0.0063761473 -0.0047869086 0.032747507 -0.0013145208 -0.0043015219 0.0023510456
		 0 0 0 -0.070016801 -0.033354282 0.031891346 0.24006075 0 0 0 0 0 -0.0052574873 0.063182831
		 0.40351796 0.055798292 0.09681344 0.33286071 -0.00096023083 -0.075244188 0.33270407
		 -0.038869023 -0.081691027 0.10241652 0.0016559362 0.00037485361 0.0013837814 0 0
		 0 8.0794096e-005 -0.00026154518 0.0001944527 0.0015852451 -0.0047488213 0.0011000931
		 -0.0024448633 -0.0075731277 -0.00026553869 -3.2186508e-006 -3.8146973e-006 4.7087669e-006
		 0 0 0 -0.0060141087 -0.0015439987 0.0065438747 0.060934186 0.031649485 0.02730751
		 -0.020394087 -0.05004853 0.049320459;
	setAttr ".tk[180:188]" -0.04744935 0.032173216 0.17660069 -0.087816238 -0.067025423
		 0.19313049 -0.01628232 -0.013499022 0.38778687 0.062753797 0.19773817 0.30975342
		 0.010657191 0.17209196 0.22299051 -0.046046495 0.033888817 -0.0064058304 0 0 0 0.24006075
		 0 0 0 0 0;
createNode polyAverageVertex -n "polyAverageVertex228";
	rename -uid "53C30201-4035-AB90-6DB0-02AEA4DEC795";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "vtx[141]" "vtx[144]" "vtx[152]" "vtx[155]" "vtx[184:185]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.33694292923456126 1;
createNode polyAverageVertex -n "polyAverageVertex229";
	rename -uid "C6972D77-4D22-E844-F6AF-63AAD32C946A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "vtx[141]" "vtx[144]" "vtx[152]" "vtx[155]" "vtx[184:185]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0.33694292923456126 1;
createNode polyUnite -n "polyUnite1";
	rename -uid "548B1EC0-4596-40B7-8F6E-8FACD84CBE86";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId1";
	rename -uid "4DE37D94-455B-2AC3-89CD-85B47CEFBE08";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "D0E950B0-4063-C443-B857-319C1708F77C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:156]";
createNode groupId -n "groupId2";
	rename -uid "AEB3CF06-4385-4271-EE98-A2ACF6893A36";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	rename -uid "E4D67C3B-4309-6C03-5712-0DAE2DAE575F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "C7F67324-4A36-0BEA-511A-D996291C4CB1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:156]";
createNode groupId -n "groupId4";
	rename -uid "8C3EE2D6-4D16-2A1A-4B6F-5486558DB5F0";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	rename -uid "FF5202C3-494E-CF62-A320-59AD0B52B95B";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "376DB927-4975-58B3-B5E5-4FAE8B15DE90";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:313]";
createNode polyMergeVert -n "polyMergeVert4";
	rename -uid "99C2E7EE-4B12-CC7C-5E67-B1A2D7DED73E";
	setAttr ".ics" -type "componentList" 1 "vtx[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	rename -uid "12464725-415C-E6FC-E53C-94A44A0E6734";
	setAttr ".ics" -type "componentList" 1 "f[0:313]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -1.0469508 0.10995173 ;
	setAttr ".rs" 45526;
	setAttr ".lt" -type "double3" -3.4694469519536142e-017 -2.0209528495129803e-016 
		-0.10019326628564579 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.2456734180450439 -5.1723008155822754 -2.5448753833770752 ;
	setAttr ".cbx" -type "double3" 2.2456734180450439 3.0783991813659668 2.7647788524627686 ;
createNode polyNormal -n "polyNormal1";
	rename -uid "633E2772-467A-BBD7-B0DD-899D0B87245A";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".unm" no;
createNode polyCube -n "polyCube1";
	rename -uid "5F97C0DE-43FC-70EE-293E-10A2D35F3C2C";
	setAttr ".cuv" 4;
createNode polySmoothFace -n "polySmoothFace1";
	rename -uid "315EA41F-445D-2BAB-9E23-2A9A22965913";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".sdt" 2;
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode deleteComponent -n "deleteComponent3";
	rename -uid "2333BC5C-4F03-7432-3BC9-5B8ED2A694A0";
	setAttr ".dc" -type "componentList" 3 "f[644:647]" "f[649:654]" "f[663]";
createNode deleteComponent -n "deleteComponent4";
	rename -uid "3EDEFE3C-4594-D72F-B118-B3BE2FA85575";
	setAttr ".dc" -type "componentList" 3 "f[680:683]" "f[685:690]" "f[699]";
createNode deleteComponent -n "deleteComponent5";
	rename -uid "D95C066A-4406-829D-9442-E6AC36CADFD3";
	setAttr ".dc" -type "componentList" 4 "f[628:645]" "f[652]" "f[664:681]" "f[688]";
createNode deleteComponent -n "deleteComponent6";
	rename -uid "5C1DC864-492D-96CA-DBFB-7D8A0DD0904C";
	setAttr ".dc" -type "componentList" 1 "f[628:661]";
createNode deleteComponent -n "deleteComponent7";
	rename -uid "5DBB3C54-479A-E7D4-AEF4-F6B6995E1C07";
	setAttr ".dc" -type "componentList" 1 "f[0:313]";
createNode polyAverageVertex -n "polyAverageVertex230";
	rename -uid "3D487EDC-45B3-CF72-3851-6392DAB499B7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[64]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak60";
	rename -uid "41756BDE-4D98-6A1E-462D-CB8C536EC302";
	setAttr ".uopa" yes;
	setAttr -s 23 ".tk";
	setAttr ".tk[51]" -type "float3" 0 0 -0.22846283 ;
	setAttr ".tk[52]" -type "float3" 0.14667369 0 0 ;
	setAttr ".tk[53]" -type "float3" 0 0 0.082215525 ;
	setAttr ".tk[56]" -type "float3" 0.082842745 0 -0.20710358 ;
	setAttr ".tk[66]" -type "float3" 0 0 0.24550018 ;
	setAttr ".tk[68]" -type "float3" 0 0 0.24550018 ;
	setAttr ".tk[70]" -type "float3" 0 0 0.29096112 ;
	setAttr ".tk[79]" -type "float3" -0.049682107 0 0 ;
createNode polyAverageVertex -n "polyAverageVertex231";
	rename -uid "70276476-4505-0C06-89AD-3590791EC356";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[64]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex232";
	rename -uid "28ABC22B-47D7-3FC4-88ED-EB98C88A2779";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[80]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex233";
	rename -uid "F8F67A74-4033-6ED7-FC12-01A1D8372B85";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[66]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex234";
	rename -uid "18DEF439-442C-D2E0-E00D-BD879DCA4CDF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[68]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex235";
	rename -uid "5D648C8E-4746-531A-3ADE-F480FB3ECB5B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[70]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex236";
	rename -uid "9B0B6659-4F1D-2C07-9DDC-87B8394D3C9D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[72]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex237";
	rename -uid "511EE3D2-48F5-8B0C-C16C-DCABA93C9BFE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[74]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex238";
	rename -uid "0790C508-4552-CBCC-8000-0FB05831E951";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[74]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex239";
	rename -uid "CBCEDACD-41EB-1C5A-F7CC-07AE7AC4394F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[84]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak61";
	rename -uid "CAE14FCA-4947-47E8-D175-DC9313B35A39";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[74]" -type "float3" 0.057984222 0 0 ;
createNode polyAverageVertex -n "polyAverageVertex240";
	rename -uid "A319BE40-48A3-1338-9F7C-ACABE2E7A43B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[84]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex241";
	rename -uid "AB8E14DB-4E95-7C2A-821E-ADB4BAC990F5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[55]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak62";
	rename -uid "4EFA7DB3-40DD-DF9B-F597-819AB895B213";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[84]" -type "float3" 0.071630381 0 0 ;
createNode polyAverageVertex -n "polyAverageVertex242";
	rename -uid "9278AAEC-4B75-6E3C-EF7F-2397EFEE5E69";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[55]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex243";
	rename -uid "0B90A073-4F1D-6C67-2F65-D89AAF7C69FE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[55]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex244";
	rename -uid "7C0CD408-4CBD-1B48-EB26-ADB48EA701B4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[126]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex245";
	rename -uid "665E2185-4CBA-AE65-7869-53BAC4186D54";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[126]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex246";
	rename -uid "238BF40B-42A8-A439-E7AE-B0A30F23D869";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[11]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex247";
	rename -uid "CF3871D9-4626-37BA-E21E-0FAAF793CE54";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[42]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex248";
	rename -uid "8605F0CD-4A00-E00B-1D9A-56B87D90A676";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[42]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex249";
	rename -uid "26E4AF1D-4CF2-A405-CBC2-71B7D99D09EE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[43]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex250";
	rename -uid "F9E56C26-49DD-E759-798C-E19D0AE987FF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[43]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex251";
	rename -uid "A6E70E50-4251-C6EC-7C70-89B38AB3493A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[43]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex252";
	rename -uid "88FC43A8-47BA-8A94-0F31-2CB62A8B99E6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[41]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex253";
	rename -uid "F56A949C-42BA-8FC5-E0B4-4DAF978EDD50";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[41]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex254";
	rename -uid "965BCCA8-43E5-3746-533B-BABE395933DA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[41]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex255";
	rename -uid "D8237FD0-4CA6-0944-C3B5-EBA1CDB2314C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[40]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex256";
	rename -uid "87188388-44C3-89DF-FCF4-AC8CC7B1FF17";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[40]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex257";
	rename -uid "E9421BFD-470D-9F87-DCDB-CBB06F3230C9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[39]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex258";
	rename -uid "DFCFFAC8-4F4D-F619-78BC-9FAB57CCA344";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[39]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex259";
	rename -uid "B57C30F0-4CB2-AF8F-F9CF-BCA890413986";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[38]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex260";
	rename -uid "D9896F69-484C-BEED-F0CB-7290F0F742C6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[38]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex261";
	rename -uid "0793079A-4A94-7A39-36F5-BDAEA5095C84";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[37]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex262";
	rename -uid "F2B02CB4-4A66-25A9-A6BB-92A0B4FCD7DF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[37]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex263";
	rename -uid "EB017AC3-40EF-D080-D089-42909D3D93B0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[36]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex264";
	rename -uid "CC0A8071-44D4-B530-9B2E-A9B3378917C7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[36]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex265";
	rename -uid "BF726D11-4E7E-6D90-337C-048FF7F2400E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[35]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex266";
	rename -uid "B329B167-4181-5023-5423-D3A22E6819D5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[35]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex267";
	rename -uid "0D91324E-46A4-6ED3-1BD2-408EECF5CEA8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[34]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex268";
	rename -uid "53BD8EA7-4F1D-9BFA-33E5-BDA4C343279C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[34]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex269";
	rename -uid "53EA6A68-48A9-CB5F-6ECF-CAB3D82C649A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[36]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex270";
	rename -uid "3A3D5561-4809-95EB-4C82-08AF8B7FA468";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[37]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex271";
	rename -uid "7D6669B5-462D-5BF6-8268-639D969C7371";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[38]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex272";
	rename -uid "F6F03BAC-42C5-DD96-1FD2-9A8FC9CD98FB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[38]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex273";
	rename -uid "30F4AE6A-45E0-275D-4C9C-E29EC0B72660";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[38]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex274";
	rename -uid "A304E81A-4B79-D080-37A7-908EB128D8E0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[38]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex275";
	rename -uid "317352D1-4DE3-5AE2-D2D6-DE96E0D81AEE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[39]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex276";
	rename -uid "CD5868EE-4639-FB7D-444C-E0A5A8DC064E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[39]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex277";
	rename -uid "E4EBC4E9-4B01-9D33-D873-CEBEF121F3E1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[40]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex278";
	rename -uid "CF690C1C-43AB-4DF0-00DF-AD8C7F84DB63";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[40]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex279";
	rename -uid "05DFE31B-4726-460A-4689-F5B08AC28C97";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[41]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex280";
	rename -uid "B00D5BAF-423A-BC2E-BCA2-BD9E0E3AF371";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[41]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex281";
	rename -uid "1AF6F292-4D78-C06B-BF44-F2872C49C8D1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[41]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex282";
	rename -uid "0EED5833-439E-3BCA-FFBD-EFB827C2303D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[42]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex283";
	rename -uid "D7A35860-4B94-3779-85DF-9D8B33DA8469";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[42]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex284";
	rename -uid "9BF780E0-4525-910D-C26D-7C8928D527EC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[43]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex285";
	rename -uid "71E3E9AB-4351-D4A8-F3A4-A685E521D240";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[43]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex286";
	rename -uid "D23810EE-4969-A8F1-9945-458B2D62FFA1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[43]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex287";
	rename -uid "1BF593A9-4289-0EFB-68E3-16987A3777B3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[37]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex288";
	rename -uid "A95F17F6-4FF5-5A43-D422-D58A41A47E7C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[37]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex289";
	rename -uid "CE76FABD-4F64-4252-D2B5-06A524514921";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[37]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex290";
	rename -uid "4804836F-4FB6-DD04-32C2-4D879F49E48F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[38]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex291";
	rename -uid "3569AC94-48DA-4609-C3C2-7CBD7B67A697";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[38]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex292";
	rename -uid "07330397-444E-3F88-F929-6BB045EE357C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[38]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex293";
	rename -uid "3B34A3AE-42DC-AFAB-B12C-C48E4EE446E7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[39]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex294";
	rename -uid "2FF7193E-4EA5-066B-DF51-95904318CB73";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[39]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex295";
	rename -uid "8D4C8F82-40C6-A3CB-7958-3D8834949739";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[39]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex296";
	rename -uid "50096B19-4302-C340-7910-7E8E332E8686";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[124]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex297";
	rename -uid "25311E47-4472-D882-A06F-26A4A45E3334";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[125]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex298";
	rename -uid "AA26E85C-456E-60FD-220C-3DB8793A0DE1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[13]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex299";
	rename -uid "AE9AEDAE-4408-0DA5-25F8-7683529CF729";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[11]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex300";
	rename -uid "24B00224-459B-FCD5-C501-4BA19EBFB8E1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[72]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex301";
	rename -uid "375EB290-4F46-6748-4637-EA883592E78B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[0]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak63";
	rename -uid "285B38E4-4450-6F3C-CDC2-F0B3C8E9C238";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk";
	setAttr ".tk[52]" -type "float3" 0 0 0.089793667 ;
	setAttr ".tk[53]" -type "float3" 0 0 0.089793667 ;
	setAttr ".tk[70]" -type "float3" 0 0.077632941 0 ;
	setAttr ".tk[72]" -type "float3" 0 0.12585789 0 ;
	setAttr ".tk[73]" -type "float3" 0 0 0.086506382 ;
	setAttr ".tk[74]" -type "float3" 0.043487959 0.059532903 0 ;
createNode polyAverageVertex -n "polyAverageVertex302";
	rename -uid "D5186AA3-4701-7CA9-0524-EE913F048CF0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[0]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex303";
	rename -uid "3627F14B-4E34-B5D1-9F06-84B9E939A97C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[0]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex304";
	rename -uid "81BC39EE-4C7F-CCFB-B3D4-41BF128DE571";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[0]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex305";
	rename -uid "CADAE3AE-41D0-E017-4326-F986C5A42307";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex306";
	rename -uid "EB70AAAF-4660-0C1E-D838-27B522CF74F7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex307";
	rename -uid "A473AE04-40A1-CFCB-F066-CD8908B50908";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex308";
	rename -uid "15128EF4-4163-779C-2CC0-DE912B69EB91";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[4]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex309";
	rename -uid "83FE20B8-48A8-313C-5C52-10A3928129C5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[4]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex310";
	rename -uid "33DB64A4-46CA-AD45-6628-2D9CCD57CE51";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[4]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex311";
	rename -uid "1F5DE3F9-40AD-2BA5-0976-189338A6AB9E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[48]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex312";
	rename -uid "1B76AD0A-44F5-447F-584E-41B6D27D62FF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[48]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex313";
	rename -uid "86B4898D-4364-E94F-7162-9BAAE022D3C6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[47]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex314";
	rename -uid "5D0DDF74-48DD-764E-F410-3983CA89459E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[47]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex315";
	rename -uid "4E4FB702-4FFA-C827-5B23-108ADB90D89C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[47]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex316";
	rename -uid "F687826B-4916-7813-CC90-4781A457EECF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[47]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyAverageVertex -n "polyAverageVertex317";
	rename -uid "321994EB-4DDA-8D0D-B713-FA91A02A80AA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "vtx[46]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode deleteComponent -n "deleteComponent8";
	rename -uid "85850A1A-44CD-B7E8-AC13-ED9B73172525";
	setAttr ".dc" -type "componentList" 8 "f[159]" "f[188]" "f[193]" "f[195]" "f[214]" "f[217:218]" "f[221]" "f[297]";
createNode deleteComponent -n "deleteComponent9";
	rename -uid "3AD05FF2-489C-D515-D519-A391D07CF253";
	setAttr ".dc" -type "componentList" 8 "f[166]" "f[172]" "f[233]" "f[248]" "f[259]" "f[270]" "f[281]" "f[304]";
createNode deleteComponent -n "deleteComponent10";
	rename -uid "6F6ACDFF-439D-5E68-FB97-AD91ACE68656";
	setAttr ".dc" -type "componentList" 1 "f[157:296]";
createNode groupId -n "groupId6";
	rename -uid "6986094B-40A7-4730-B528-FA81355054AE";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "17660F90-4453-53C5-8851-BFBD33F3536A";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:156]";
createNode polyUnite -n "polyUnite2";
	rename -uid "CD0F4D9F-4CE8-DC06-1426-79BD86E27F83";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId7";
	rename -uid "07AC1161-458C-DBE9-C887-9FB5B4DE12B7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	rename -uid "BFC3E330-438F-3C80-0CC3-6FBD64EADE8B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:313]";
createNode polyMergeVert -n "polyMergeVert5";
	rename -uid "71DA7C3C-4A72-B0F1-DC10-9D97CC1E4352";
	setAttr ".ics" -type "componentList" 1 "vtx[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	rename -uid "EBD68E0F-4CE2-87B7-F8D3-F4A343D5B92D";
	setAttr ".ics" -type "componentList" 1 "f[0:313]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -1.0469508 0.10995173 ;
	setAttr ".rs" 54615;
	setAttr ".lt" -type "double3" 7.6327832942979512e-017 4.6837533851373792e-017 0.067285062633607201 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.2456734180450439 -5.1723008155822754 -2.5448753833770752 ;
	setAttr ".cbx" -type "double3" 2.2456734180450439 3.0783991813659668 2.7647788524627686 ;
createNode polySoftEdge -n "polySoftEdge2";
	rename -uid "CA56A725-4B32-6DAA-0601-738B1A6C1B48";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".a" 180;
createNode deleteComponent -n "deleteComponent11";
	rename -uid "E733C316-4BE3-7406-D156-40A09EFA008E";
	setAttr ".dc" -type "componentList" 4 "f[658:663]" "f[666:676]" "f[707:712]" "f[715:725]";
createNode polySplit -n "polySplit8";
	rename -uid "CACEB779-4EC7-E954-A2BC-B7A3A77D3E89";
	setAttr -s 4 ".e[0:3]"  0.498932 0.498932 0.501068 0.501068;
	setAttr -s 4 ".d[0:3]"  -2147483641 -2147483645 -2147483647 -2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak57";
	rename -uid "05A1456C-4E72-EB02-DF67-FEA9C757DCA0";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[0]" -type "float3" 0.17444277 -0.053674638 0 ;
	setAttr ".tk[3]" -type "float3" 0.14760542 -0.013418674 0 ;
	setAttr ".tk[6]" -type "float3" 0.067093372 0.13418667 0 ;
createNode polyAppendVertex -n "polyAppendVertex56";
	rename -uid "74C71E57-4F74-EC7A-9422-7AAA1F944F4C";
	setAttr ".uopa" yes;
	setAttr -s 2 ".v[0:1]" -type "float3"  4.596777 0.100436 0 4.4283829 
		-1.8848439 0;
	setAttr -s 4 ".d[0:3]"  -1 0 3 -1;
	setAttr ".tx" 2;
createNode polyAppendVertex -n "polyAppendVertex55";
	rename -uid "445EBF72-4CC4-C4FC-65B1-07A072D05575";
	setAttr ".uopa" yes;
	setAttr -s 2 ".v[0:1]" -type "float3"  2.0562389 -2.449764 0 2.177217 
		0.80060202 0;
	setAttr -s 4 ".d[0:3]"  -1 2 1 -1;
	setAttr ".tx" 2;
createNode polyCreateFace -n "polyCreateFace2";
	rename -uid "0CC8C3ED-44CE-8B8E-665D-B195264CEA76";
	setAttr -s 4 ".v[0:3]" -type "float3"  3.6307249 0.75628799 0 2.691263 
		0.86264199 0 2.6466601 -2.49002 0 3.3444309 -2.369252 0;
	setAttr ".l[0]"  4;
	setAttr ".tx" 1;
createNode lambert -n "lambert2";
	rename -uid "C565E694-4CB3-6473-7D3F-8B8B3A91E515";
createNode shadingEngine -n "pCube2SG";
	rename -uid "36916BDF-4176-1C00-38A6-338A375BBBFD";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "0F76DB95-47B1-B936-9D12-12BD016FD730";
createNode file -n "file1";
	rename -uid "5F4973F0-47AD-88A1-7018-89ACD9399A2A";
	setAttr ".ftn" -type "string" "T:/carFlameTextrue.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "87340B92-4886-4969-6BCE-61A004962E27";
createNode polyUnite -n "polyUnite3";
	rename -uid "D5EFFC4C-4B1A-4328-AC72-18ADC857AC92";
	setAttr -s 4 ".ip";
	setAttr -s 4 ".im";
createNode groupId -n "groupId8";
	rename -uid "34EAEE79-42FE-80FD-265B-05AF962DEAD1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "0F41187E-4FC8-9545-9630-CBA28F808B27";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:67]";
createNode groupId -n "groupId9";
	rename -uid "FE21C36C-4C97-EE11-C621-10B54AC09312";
	setAttr ".ihi" 0;
createNode groupId -n "groupId10";
	rename -uid "1C664CD2-4216-986C-45F8-F4B398AE7E7F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	rename -uid "CDEF1BAA-4361-8621-B1C1-EFA9764CF132";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId11";
	rename -uid "D3DF4250-48B0-B520-B87F-678CC2A365F1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId12";
	rename -uid "D1D6B456-4F9C-9466-3B09-40870D2F054D";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	rename -uid "C3FCF31A-4BFE-12C4-8956-33BFF4A6A008";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId13";
	rename -uid "5992F585-444C-503F-BBB0-0697B4F78F22";
	setAttr ".ihi" 0;
createNode groupId -n "groupId14";
	rename -uid "579ED2BF-4FD2-0451-2536-9787FEFB4670";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	rename -uid "C3763AA8-4BDD-7687-5240-43BB5278D5C9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:771]";
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
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
select -ne :initialShadingGroup;
	setAttr -s 16 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 14 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr ":defaultColorMgtGlobals.cme" "imagePlaneShape1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "imagePlaneShape1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "imagePlaneShape1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "imagePlaneShape1.ws";
connectAttr ":frontShape.msg" "imagePlaneShape1.ltc";
connectAttr "groupId1.id" "|polySurface1|transform2|polySurfaceShape1.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|polySurface1|transform2|polySurfaceShape1.iog.og[0].gco"
		;
connectAttr "groupId3.id" "|polySurface5|transform1|polySurfaceShape1.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|polySurface5|transform1|polySurfaceShape1.iog.og[0].gco"
		;
connectAttr "groupParts2.og" "|polySurface1|transform2|polySurfaceShape1.i";
connectAttr "polyTweakUV2.uvtk[0]" "|polySurface1|transform2|polySurfaceShape1.uvst[0].uvtw"
		;
connectAttr "groupId2.id" "|polySurface1|transform2|polySurfaceShape1.ciog.cog[0].cgid"
		;
connectAttr "groupId4.id" "|polySurface5|transform1|polySurfaceShape1.ciog.cog[0].cgid"
		;
connectAttr "groupId8.id" "pCylinderShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape1.iog.og[0].gco";
connectAttr "groupParts6.og" "pCylinderShape1.i";
connectAttr "groupId9.id" "pCylinderShape1.ciog.cog[0].cgid";
connectAttr "groupId12.id" "|polySurface3|transform5|polySurfaceShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|polySurface3|transform5|polySurfaceShape2.iog.og[0].gco"
		;
connectAttr "groupId10.id" "|polySurface4|transform6|polySurfaceShape2.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|polySurface4|transform6|polySurfaceShape2.iog.og[0].gco"
		;
connectAttr "groupParts8.og" "|polySurface3|transform5|polySurfaceShape2.i";
connectAttr "groupId13.id" "|polySurface3|transform5|polySurfaceShape2.ciog.cog[0].cgid"
		;
connectAttr "groupId11.id" "|polySurface4|transform6|polySurfaceShape2.ciog.cog[0].cgid"
		;
connectAttr "groupParts4.og" "|polySurface6|transform3|polySurface6Shape.i";
connectAttr "groupId5.id" "|polySurface6|transform3|polySurface6Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|polySurface6|transform3|polySurface6Shape.iog.og[0].gco"
		;
connectAttr "groupId6.id" "|polySurface7|transform4|polySurface6Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|polySurface7|transform4|polySurface6Shape.iog.og[0].gco"
		;
connectAttr "deleteComponent11.og" "polySurface8Shape.i";
connectAttr "groupId7.id" "polySurface8Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurface8Shape.iog.og[0].gco";
connectAttr "polySmoothFace1.out" "|group1|pCube1|pCubeShape1.i";
connectAttr "groupParts9.og" "pCylinder2Shape.i";
connectAttr "groupId14.id" "pCylinder2Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinder2Shape.iog.og[0].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pCube2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pCube2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCreateFace1.out" "polyAppendVertex1.ip";
connectAttr "polyAppendVertex1.out" "polyAppendVertex2.ip";
connectAttr "polyAppendVertex2.out" "polyAppendVertex3.ip";
connectAttr "polyTweak1.out" "polyAppendVertex4.ip";
connectAttr "polyAppendVertex3.out" "polyTweak1.ip";
connectAttr "polyAppendVertex4.out" "polyAppendVertex5.ip";
connectAttr "polyAppendVertex5.out" "polyAppendVertex6.ip";
connectAttr "polyAppendVertex6.out" "polyAppendVertex7.ip";
connectAttr "polyTweak2.out" "polyAppendVertex8.ip";
connectAttr "polyAppendVertex7.out" "polyTweak2.ip";
connectAttr "polyAppendVertex8.out" "polyAppendVertex9.ip";
connectAttr "polyAppendVertex9.out" "polyAppendVertex10.ip";
connectAttr "polyAppendVertex10.out" "polySplit1.ip";
connectAttr "polyTweak3.out" "polyAppendVertex11.ip";
connectAttr "polySplit1.out" "polyTweak3.ip";
connectAttr "polyAppendVertex11.out" "polyAppendVertex12.ip";
connectAttr "polyAppendVertex12.out" "polyAppendVertex13.ip";
connectAttr "polyAppendVertex13.out" "polyAppendVertex14.ip";
connectAttr "polyAppendVertex14.out" "polyTweak4.ip";
connectAttr "polyTweak4.out" "polySplit2.ip";
connectAttr "polyTweak5.out" "polyAppendVertex15.ip";
connectAttr "polySplit2.out" "polyTweak5.ip";
connectAttr "polyAppendVertex15.out" "polyAppendVertex16.ip";
connectAttr "polyAppendVertex16.out" "polyAppendVertex17.ip";
connectAttr "polyAppendVertex17.out" "polyAppendVertex18.ip";
connectAttr "polyTweak6.out" "polyAppendVertex19.ip";
connectAttr "polyAppendVertex18.out" "polyTweak6.ip";
connectAttr "polyAppendVertex19.out" "polyAppendVertex20.ip";
connectAttr "polyTweak7.out" "polyAppendVertex21.ip";
connectAttr "polyAppendVertex20.out" "polyTweak7.ip";
connectAttr "polyAppendVertex21.out" "polySplit3.ip";
connectAttr "polyTweak8.out" "polyAppendVertex22.ip";
connectAttr "polySplit3.out" "polyTweak8.ip";
connectAttr "polyAppendVertex22.out" "polyAppendVertex23.ip";
connectAttr "polyTweak9.out" "polyAppendVertex24.ip";
connectAttr "polyAppendVertex23.out" "polyTweak9.ip";
connectAttr "polyTweak10.out" "polyAppendVertex25.ip";
connectAttr "polyAppendVertex24.out" "polyTweak10.ip";
connectAttr "polyTweak11.out" "polyAppendVertex26.ip";
connectAttr "polyAppendVertex25.out" "polyTweak11.ip";
connectAttr "polyAppendVertex26.out" "polyAppendVertex27.ip";
connectAttr "polyAppendVertex27.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "polySplit4.ip";
connectAttr "polySplit4.out" "polyAppendVertex28.ip";
connectAttr "polyTweak12.out" "polyAppendVertex29.ip";
connectAttr "polyAppendVertex28.out" "polyTweak12.ip";
connectAttr "polyTweak13.out" "polyAppendVertex30.ip";
connectAttr "polyAppendVertex29.out" "polyTweak13.ip";
connectAttr "polyTweak14.out" "polyAppendVertex31.ip";
connectAttr "polyAppendVertex30.out" "polyTweak14.ip";
connectAttr "polyAppendVertex31.out" "polyAppendVertex32.ip";
connectAttr "polyTweak15.out" "polyAppendVertex33.ip";
connectAttr "polyAppendVertex32.out" "polyTweak15.ip";
connectAttr "polyAppendVertex33.out" "polyAppendVertex34.ip";
connectAttr "polyAppendVertex34.out" "polyAppendVertex35.ip";
connectAttr "polyAppendVertex35.out" "polyAppendVertex36.ip";
connectAttr "polyAppendVertex36.out" "polyAppendVertex37.ip";
connectAttr "polyAppendVertex37.out" "polyAppendVertex38.ip";
connectAttr "polyAppendVertex38.out" "polyAppendVertex39.ip";
connectAttr "polyAppendVertex39.out" "polySplit5.ip";
connectAttr "polySplit5.out" "polyAppendVertex40.ip";
connectAttr "polyAppendVertex40.out" "polyAppendVertex41.ip";
connectAttr "polyAppendVertex41.out" "polyAppendVertex42.ip";
connectAttr "polyAppendVertex42.out" "polyAppendVertex43.ip";
connectAttr "polyAppendVertex43.out" "polyAppendVertex44.ip";
connectAttr "polyTweak16.out" "polyAppendVertex45.ip";
connectAttr "polyAppendVertex44.out" "polyTweak16.ip";
connectAttr "polyAppendVertex45.out" "polyAppendVertex46.ip";
connectAttr "polyAppendVertex46.out" "polyAppendVertex47.ip";
connectAttr "polyTweak17.out" "polyAppendVertex48.ip";
connectAttr "polyAppendVertex47.out" "polyTweak17.ip";
connectAttr "polyTweak18.out" "polyMergeVert1.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyMergeVert1.mp";
connectAttr "polyAppendVertex48.out" "polyTweak18.ip";
connectAttr "polyTweak19.out" "polyAppendVertex49.ip";
connectAttr "polyMergeVert1.out" "polyTweak19.ip";
connectAttr "polyAppendVertex49.out" "polyAppendVertex50.ip";
connectAttr "polyTweak20.out" "polyAppendVertex51.ip";
connectAttr "polyAppendVertex50.out" "polyTweak20.ip";
connectAttr "polyAppendVertex51.out" "polyAppendVertex52.ip";
connectAttr "polyAppendVertex52.out" "polyAppendVertex53.ip";
connectAttr "polyAppendVertex53.out" "polyAppendVertex54.ip";
connectAttr "polyTweak21.out" "polyAverageVertex1.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex1.mp"
		;
connectAttr "polyAppendVertex54.out" "polyTweak21.ip";
connectAttr "polyTweak22.out" "polyAverageVertex2.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex2.mp"
		;
connectAttr "polyAverageVertex1.out" "polyTweak22.ip";
connectAttr "polyAverageVertex2.out" "polyAverageVertex3.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex3.mp"
		;
connectAttr "polyAverageVertex3.out" "polyAverageVertex4.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex4.mp"
		;
connectAttr "polyAverageVertex4.out" "polyAverageVertex5.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex5.mp"
		;
connectAttr "polyAverageVertex5.out" "polyAverageVertex6.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex6.mp"
		;
connectAttr "polyAverageVertex6.out" "polyAverageVertex7.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex7.mp"
		;
connectAttr "polyAverageVertex7.out" "polyAverageVertex8.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex8.mp"
		;
connectAttr "polyAverageVertex8.out" "polyAverageVertex9.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex9.mp"
		;
connectAttr "polyTweak23.out" "polyAverageVertex10.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex10.mp"
		;
connectAttr "polyAverageVertex9.out" "polyTweak23.ip";
connectAttr "polyAverageVertex10.out" "polyAverageVertex11.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex11.mp"
		;
connectAttr "polyAverageVertex11.out" "polyAverageVertex12.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex12.mp"
		;
connectAttr "polyAverageVertex12.out" "polyAverageVertex13.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex13.mp"
		;
connectAttr "polyAverageVertex13.out" "polyAverageVertex14.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex14.mp"
		;
connectAttr "polyAverageVertex14.out" "polyAverageVertex15.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex15.mp"
		;
connectAttr "polyAverageVertex15.out" "polyAverageVertex16.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex16.mp"
		;
connectAttr "polyAverageVertex16.out" "polyAverageVertex17.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex17.mp"
		;
connectAttr "polyAverageVertex17.out" "polyAverageVertex18.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex18.mp"
		;
connectAttr "polyAverageVertex18.out" "polyAverageVertex19.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex19.mp"
		;
connectAttr "polyAverageVertex19.out" "polyAverageVertex20.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex20.mp"
		;
connectAttr "polyAverageVertex20.out" "polyAverageVertex21.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex21.mp"
		;
connectAttr "polyAverageVertex21.out" "polyAverageVertex22.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex22.mp"
		;
connectAttr "polyAverageVertex22.out" "polyAverageVertex23.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex23.mp"
		;
connectAttr "polyAverageVertex23.out" "polyAverageVertex24.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex24.mp"
		;
connectAttr "polyAverageVertex24.out" "polyAverageVertex25.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex25.mp"
		;
connectAttr "polyAverageVertex25.out" "polyAverageVertex26.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex26.mp"
		;
connectAttr "polyAverageVertex26.out" "polyAverageVertex27.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex27.mp"
		;
connectAttr "polyAverageVertex27.out" "polyAverageVertex28.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex28.mp"
		;
connectAttr "polyAverageVertex28.out" "polyAverageVertex29.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex29.mp"
		;
connectAttr "polyAverageVertex29.out" "polyAverageVertex30.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex30.mp"
		;
connectAttr "polyAverageVertex30.out" "polyAverageVertex31.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex31.mp"
		;
connectAttr "polyAverageVertex31.out" "polyAverageVertex32.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex32.mp"
		;
connectAttr "polyAverageVertex32.out" "polyAverageVertex33.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex33.mp"
		;
connectAttr "polyAverageVertex33.out" "polyAverageVertex34.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex34.mp"
		;
connectAttr "polyAverageVertex34.out" "polyAverageVertex35.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex35.mp"
		;
connectAttr "polyAverageVertex35.out" "polyAverageVertex36.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex36.mp"
		;
connectAttr "polyAverageVertex36.out" "polyAverageVertex37.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex37.mp"
		;
connectAttr "polyAverageVertex37.out" "polyAverageVertex38.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex38.mp"
		;
connectAttr "polyAverageVertex38.out" "polyExtrudeEdge1.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyExtrudeEdge1.mp"
		;
connectAttr "polyTweak24.out" "polyAppend1.ip";
connectAttr "polyExtrudeEdge1.out" "polyTweak24.ip";
connectAttr "polyAppend1.out" "polyAverageVertex39.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex39.mp"
		;
connectAttr "polyAverageVertex39.out" "polyAverageVertex40.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex40.mp"
		;
connectAttr "polyAverageVertex40.out" "polyAverageVertex41.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex41.mp"
		;
connectAttr "polyAverageVertex41.out" "polyAverageVertex42.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex42.mp"
		;
connectAttr "polyTweak25.out" "polyAverageVertex43.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex43.mp"
		;
connectAttr "polyAverageVertex42.out" "polyTweak25.ip";
connectAttr "polyAverageVertex43.out" "polyAverageVertex44.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex44.mp"
		;
connectAttr "polyAverageVertex44.out" "polyAverageVertex45.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex45.mp"
		;
connectAttr "polyAverageVertex45.out" "polyAverageVertex46.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex46.mp"
		;
connectAttr "polyAverageVertex46.out" "polyAverageVertex47.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex47.mp"
		;
connectAttr "polyTweak26.out" "polyAverageVertex48.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex48.mp"
		;
connectAttr "polyAverageVertex47.out" "polyTweak26.ip";
connectAttr "polyAverageVertex48.out" "polyAverageVertex49.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex49.mp"
		;
connectAttr "polyAverageVertex49.out" "polyAverageVertex50.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex50.mp"
		;
connectAttr "polyAverageVertex50.out" "polyAverageVertex51.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex51.mp"
		;
connectAttr "polyAverageVertex51.out" "polyAverageVertex52.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex52.mp"
		;
connectAttr "polyAverageVertex52.out" "polyAverageVertex53.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex53.mp"
		;
connectAttr "polyAverageVertex53.out" "polyAverageVertex54.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex54.mp"
		;
connectAttr "polyAverageVertex54.out" "polyAverageVertex55.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex55.mp"
		;
connectAttr "polyAverageVertex55.out" "polyAverageVertex56.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex56.mp"
		;
connectAttr "polyAverageVertex56.out" "polyAverageVertex57.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex57.mp"
		;
connectAttr "polyTweak27.out" "polyAverageVertex58.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex58.mp"
		;
connectAttr "polyAverageVertex57.out" "polyTweak27.ip";
connectAttr "polyAverageVertex58.out" "polyAverageVertex59.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex59.mp"
		;
connectAttr "polyAverageVertex59.out" "polyAverageVertex60.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex60.mp"
		;
connectAttr "polyAverageVertex60.out" "polyAverageVertex61.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex61.mp"
		;
connectAttr "polyAverageVertex61.out" "polyAverageVertex62.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex62.mp"
		;
connectAttr "polyAverageVertex62.out" "polyAverageVertex63.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex63.mp"
		;
connectAttr "polyAverageVertex63.out" "polyAverageVertex64.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex64.mp"
		;
connectAttr "polyAverageVertex64.out" "polyAverageVertex65.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex65.mp"
		;
connectAttr "polyAverageVertex65.out" "polyAverageVertex66.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex66.mp"
		;
connectAttr "polyAverageVertex66.out" "polyAverageVertex67.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex67.mp"
		;
connectAttr "polyAverageVertex67.out" "polyAverageVertex68.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex68.mp"
		;
connectAttr "polyAverageVertex68.out" "polyAverageVertex69.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex69.mp"
		;
connectAttr "polyAverageVertex69.out" "polyTweak28.ip";
connectAttr "polyTweak28.out" "polySplit6.ip";
connectAttr "polyTweak29.out" "polyAppend2.ip";
connectAttr "polySplit6.out" "polyTweak29.ip";
connectAttr "polyAppend2.out" "polyAppend3.ip";
connectAttr "polyTweak30.out" "polyAverageVertex70.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex70.mp"
		;
connectAttr "polyAppend3.out" "polyTweak30.ip";
connectAttr "polyAverageVertex70.out" "polyAverageVertex71.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex71.mp"
		;
connectAttr "polyAverageVertex71.out" "polyAverageVertex72.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex72.mp"
		;
connectAttr "polyAverageVertex72.out" "polyAverageVertex73.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex73.mp"
		;
connectAttr "polyAverageVertex73.out" "polyAverageVertex74.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex74.mp"
		;
connectAttr "polyTweak31.out" "polyAverageVertex75.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex75.mp"
		;
connectAttr "polyAverageVertex74.out" "polyTweak31.ip";
connectAttr "polyTweak32.out" "polyAverageVertex76.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex76.mp"
		;
connectAttr "polyAverageVertex75.out" "polyTweak32.ip";
connectAttr "polyAverageVertex76.out" "polyAverageVertex77.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex77.mp"
		;
connectAttr "polyAverageVertex77.out" "polyAverageVertex78.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex78.mp"
		;
connectAttr "polyAverageVertex78.out" "polyAverageVertex79.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex79.mp"
		;
connectAttr "polyAverageVertex79.out" "polyAverageVertex80.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex80.mp"
		;
connectAttr "polyAverageVertex80.out" "polyAverageVertex81.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex81.mp"
		;
connectAttr "polyAverageVertex81.out" "polyAverageVertex82.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex82.mp"
		;
connectAttr "polyAverageVertex82.out" "polyAverageVertex83.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex83.mp"
		;
connectAttr "polyAverageVertex83.out" "polyAverageVertex84.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex84.mp"
		;
connectAttr "polyAverageVertex84.out" "polyAverageVertex85.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex85.mp"
		;
connectAttr "polyAverageVertex85.out" "polyAverageVertex86.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex86.mp"
		;
connectAttr "polyAverageVertex86.out" "polyAverageVertex87.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex87.mp"
		;
connectAttr "polyAverageVertex87.out" "polyAverageVertex88.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex88.mp"
		;
connectAttr "polyTweak33.out" "polyAverageVertex89.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex89.mp"
		;
connectAttr "polyAverageVertex88.out" "polyTweak33.ip";
connectAttr "polyAverageVertex89.out" "polyAverageVertex90.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex90.mp"
		;
connectAttr "polyAverageVertex90.out" "polyAverageVertex91.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex91.mp"
		;
connectAttr "polyAverageVertex91.out" "polyAverageVertex92.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex92.mp"
		;
connectAttr "polyAverageVertex92.out" "polyAverageVertex93.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex93.mp"
		;
connectAttr "polyAverageVertex93.out" "polyAverageVertex94.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex94.mp"
		;
connectAttr "polyAverageVertex94.out" "polyAverageVertex95.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex95.mp"
		;
connectAttr "polyAverageVertex95.out" "polyAverageVertex96.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex96.mp"
		;
connectAttr "polyAverageVertex96.out" "polyAverageVertex97.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex97.mp"
		;
connectAttr "polyAverageVertex97.out" "polyAverageVertex98.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex98.mp"
		;
connectAttr "polyAverageVertex98.out" "polyAverageVertex99.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex99.mp"
		;
connectAttr "polyAverageVertex99.out" "polyAverageVertex100.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex100.mp"
		;
connectAttr "polyAverageVertex100.out" "polyAverageVertex101.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex101.mp"
		;
connectAttr "polyAverageVertex101.out" "polyAverageVertex102.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex102.mp"
		;
connectAttr "polyTweak34.out" "polyAverageVertex103.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex103.mp"
		;
connectAttr "polyAverageVertex102.out" "polyTweak34.ip";
connectAttr "polyAverageVertex103.out" "polyAverageVertex104.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex104.mp"
		;
connectAttr "polyAverageVertex104.out" "polyAverageVertex105.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex105.mp"
		;
connectAttr "polyAverageVertex105.out" "polyAverageVertex106.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex106.mp"
		;
connectAttr "polyAverageVertex106.out" "polyAverageVertex107.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex107.mp"
		;
connectAttr "polyAverageVertex107.out" "polyAverageVertex108.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex108.mp"
		;
connectAttr "polyAverageVertex108.out" "polyAverageVertex109.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex109.mp"
		;
connectAttr "polyAverageVertex109.out" "polyAverageVertex110.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex110.mp"
		;
connectAttr "polyAverageVertex110.out" "polyAverageVertex111.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex111.mp"
		;
connectAttr "polyTweak35.out" "polyAverageVertex112.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex112.mp"
		;
connectAttr "polyAverageVertex111.out" "polyTweak35.ip";
connectAttr "polyAverageVertex112.out" "polyAverageVertex113.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex113.mp"
		;
connectAttr "polyAverageVertex113.out" "polyAverageVertex114.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex114.mp"
		;
connectAttr "polyAverageVertex114.out" "polyAverageVertex115.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex115.mp"
		;
connectAttr "polyAverageVertex115.out" "polyAverageVertex116.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex116.mp"
		;
connectAttr "polyAverageVertex116.out" "polyAverageVertex117.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex117.mp"
		;
connectAttr "polyAverageVertex117.out" "polyAverageVertex118.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex118.mp"
		;
connectAttr "polyAverageVertex118.out" "polyExtrudeEdge2.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyExtrudeEdge2.mp"
		;
connectAttr "polyTweak36.out" "polyAppend4.ip";
connectAttr "polyExtrudeEdge2.out" "polyTweak36.ip";
connectAttr "polyTweak37.out" "polyExtrudeEdge3.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyExtrudeEdge3.mp"
		;
connectAttr "polyAppend4.out" "polyTweak37.ip";
connectAttr "polyTweak38.out" "polyAppend5.ip";
connectAttr "polyExtrudeEdge3.out" "polyTweak38.ip";
connectAttr "polyTweak39.out" "polyAverageVertex119.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex119.mp"
		;
connectAttr "polyAppend5.out" "polyTweak39.ip";
connectAttr "polyAverageVertex119.out" "polyAverageVertex120.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex120.mp"
		;
connectAttr "polyAverageVertex120.out" "polyAverageVertex121.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex121.mp"
		;
connectAttr "polyAverageVertex121.out" "polyAverageVertex122.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex122.mp"
		;
connectAttr "polyAverageVertex122.out" "polyAverageVertex123.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex123.mp"
		;
connectAttr "polyAverageVertex123.out" "polyAverageVertex124.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex124.mp"
		;
connectAttr "polyAverageVertex124.out" "polyAverageVertex125.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex125.mp"
		;
connectAttr "polyAverageVertex125.out" "polyAverageVertex126.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex126.mp"
		;
connectAttr "polyAverageVertex126.out" "polyAverageVertex127.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex127.mp"
		;
connectAttr "polyAverageVertex127.out" "polyAverageVertex128.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex128.mp"
		;
connectAttr "polyAverageVertex128.out" "polyAverageVertex129.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex129.mp"
		;
connectAttr "polyAverageVertex129.out" "polyAverageVertex130.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex130.mp"
		;
connectAttr "polyAverageVertex130.out" "polyAverageVertex131.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex131.mp"
		;
connectAttr "polyAverageVertex131.out" "polyAverageVertex132.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex132.mp"
		;
connectAttr "polyAverageVertex132.out" "polyAverageVertex133.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex133.mp"
		;
connectAttr "polyAverageVertex133.out" "polyAverageVertex134.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex134.mp"
		;
connectAttr "polyAverageVertex134.out" "polyAverageVertex135.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex135.mp"
		;
connectAttr "polyAverageVertex135.out" "polyAverageVertex136.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex136.mp"
		;
connectAttr "polyAverageVertex136.out" "polyAverageVertex137.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex137.mp"
		;
connectAttr "polyAverageVertex137.out" "polyAverageVertex138.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex138.mp"
		;
connectAttr "polyAverageVertex138.out" "polyAverageVertex139.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex139.mp"
		;
connectAttr "polyAverageVertex139.out" "polyAverageVertex140.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex140.mp"
		;
connectAttr "polyAverageVertex140.out" "polyAverageVertex141.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex141.mp"
		;
connectAttr "polyAverageVertex141.out" "polyAverageVertex142.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex142.mp"
		;
connectAttr "polyAverageVertex142.out" "polyAverageVertex143.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex143.mp"
		;
connectAttr "polyAverageVertex143.out" "polyAverageVertex144.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex144.mp"
		;
connectAttr "polyAverageVertex144.out" "polyAverageVertex145.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex145.mp"
		;
connectAttr "polyAverageVertex145.out" "polyAverageVertex146.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex146.mp"
		;
connectAttr "polyAverageVertex146.out" "polyAverageVertex147.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex147.mp"
		;
connectAttr "polyAverageVertex147.out" "polyAverageVertex148.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex148.mp"
		;
connectAttr "polyAverageVertex148.out" "polyAverageVertex149.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex149.mp"
		;
connectAttr "polyAverageVertex149.out" "polyAverageVertex150.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex150.mp"
		;
connectAttr "polyAverageVertex150.out" "polyAverageVertex151.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex151.mp"
		;
connectAttr "polyAverageVertex151.out" "polyAverageVertex152.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex152.mp"
		;
connectAttr "polyAverageVertex152.out" "polyAverageVertex153.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex153.mp"
		;
connectAttr "polyAverageVertex153.out" "polyAverageVertex154.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex154.mp"
		;
connectAttr "polyTweak40.out" "polyAverageVertex155.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex155.mp"
		;
connectAttr "polyAverageVertex154.out" "polyTweak40.ip";
connectAttr "polyAverageVertex155.out" "polyAverageVertex156.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex156.mp"
		;
connectAttr "polyTweak41.out" "polyAverageVertex157.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex157.mp"
		;
connectAttr "polyAverageVertex156.out" "polyTweak41.ip";
connectAttr "polyAverageVertex157.out" "polyAverageVertex158.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex158.mp"
		;
connectAttr "polyAverageVertex158.out" "polyAverageVertex159.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex159.mp"
		;
connectAttr "polyAverageVertex159.out" "polyAverageVertex160.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex160.mp"
		;
connectAttr "polyAverageVertex160.out" "polyAverageVertex161.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex161.mp"
		;
connectAttr "polyAverageVertex161.out" "polyAverageVertex162.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex162.mp"
		;
connectAttr "polyAverageVertex162.out" "polyAverageVertex163.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex163.mp"
		;
connectAttr "polyAverageVertex163.out" "polyAverageVertex164.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex164.mp"
		;
connectAttr "polyAverageVertex164.out" "polyAverageVertex165.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex165.mp"
		;
connectAttr "polyTweak42.out" "polyAverageVertex166.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex166.mp"
		;
connectAttr "polyAverageVertex165.out" "polyTweak42.ip";
connectAttr "polyAverageVertex166.out" "polyAverageVertex167.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex167.mp"
		;
connectAttr "polyTweak43.out" "polyAverageVertex168.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex168.mp"
		;
connectAttr "polyAverageVertex167.out" "polyTweak43.ip";
connectAttr "polyAverageVertex168.out" "polyAverageVertex169.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex169.mp"
		;
connectAttr "polyAverageVertex169.out" "polyAverageVertex170.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex170.mp"
		;
connectAttr "polyAverageVertex170.out" "polyAverageVertex171.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex171.mp"
		;
connectAttr "polyAverageVertex171.out" "polyAverageVertex172.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex172.mp"
		;
connectAttr "polyAverageVertex172.out" "polyAverageVertex173.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex173.mp"
		;
connectAttr "polyAverageVertex173.out" "polyAverageVertex174.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex174.mp"
		;
connectAttr "polyAverageVertex174.out" "polyAverageVertex175.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex175.mp"
		;
connectAttr "polyAverageVertex175.out" "polyAverageVertex176.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex176.mp"
		;
connectAttr "polyAverageVertex176.out" "polyAverageVertex177.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex177.mp"
		;
connectAttr "polyAverageVertex177.out" "polyAverageVertex178.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex178.mp"
		;
connectAttr "polyAverageVertex178.out" "polyAverageVertex179.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex179.mp"
		;
connectAttr "polyTweak44.out" "polyAverageVertex180.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex180.mp"
		;
connectAttr "polyAverageVertex179.out" "polyTweak44.ip";
connectAttr "polyAverageVertex180.out" "polyAverageVertex181.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex181.mp"
		;
connectAttr "polyAverageVertex181.out" "polyAverageVertex182.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex182.mp"
		;
connectAttr "polyAverageVertex182.out" "polyAverageVertex183.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex183.mp"
		;
connectAttr "polyAverageVertex183.out" "polyAverageVertex184.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex184.mp"
		;
connectAttr "polyAverageVertex184.out" "polyAverageVertex185.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex185.mp"
		;
connectAttr "polyAverageVertex185.out" "polyAverageVertex186.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex186.mp"
		;
connectAttr "polyAverageVertex186.out" "polyAverageVertex187.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex187.mp"
		;
connectAttr "polyAverageVertex187.out" "polyAverageVertex188.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex188.mp"
		;
connectAttr "polyAverageVertex188.out" "polyAverageVertex189.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex189.mp"
		;
connectAttr "polyAverageVertex189.out" "polyAverageVertex190.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex190.mp"
		;
connectAttr "polyTweak45.out" "polyAverageVertex191.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex191.mp"
		;
connectAttr "polyAverageVertex190.out" "polyTweak45.ip";
connectAttr "polyAverageVertex191.out" "polyAverageVertex192.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex192.mp"
		;
connectAttr "polyAverageVertex192.out" "polyAverageVertex193.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex193.mp"
		;
connectAttr "polyAverageVertex193.out" "polyAverageVertex194.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex194.mp"
		;
connectAttr "polyAverageVertex194.out" "polyAverageVertex195.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex195.mp"
		;
connectAttr "polyAverageVertex195.out" "polyAverageVertex196.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex196.mp"
		;
connectAttr "polyAverageVertex196.out" "polyAverageVertex197.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex197.mp"
		;
connectAttr "polyAverageVertex197.out" "polyAverageVertex198.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex198.mp"
		;
connectAttr "polyTweak46.out" "polyAverageVertex199.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex199.mp"
		;
connectAttr "polyAverageVertex198.out" "polyTweak46.ip";
connectAttr "polyAverageVertex199.out" "polyAverageVertex200.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex200.mp"
		;
connectAttr "polyAverageVertex200.out" "polyAverageVertex201.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex201.mp"
		;
connectAttr "polyAverageVertex201.out" "polyAverageVertex202.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex202.mp"
		;
connectAttr "polyAverageVertex202.out" "polyAverageVertex203.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex203.mp"
		;
connectAttr "polyAverageVertex203.out" "polyAverageVertex204.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex204.mp"
		;
connectAttr "polyAverageVertex204.out" "polyAverageVertex205.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex205.mp"
		;
connectAttr "polyAverageVertex205.out" "polyAverageVertex206.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex206.mp"
		;
connectAttr "polyAverageVertex206.out" "polyAverageVertex207.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex207.mp"
		;
connectAttr "polyAverageVertex207.out" "polyExtrudeEdge4.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyExtrudeEdge4.mp"
		;
connectAttr "polyTweak47.out" "polyExtrudeEdge5.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyExtrudeEdge5.mp"
		;
connectAttr "polyExtrudeEdge4.out" "polyTweak47.ip";
connectAttr "polyExtrudeEdge5.out" "polyTweakUV1.ip";
connectAttr "polyTweak48.out" "polyMergeVert2.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyMergeVert2.mp";
connectAttr "polyTweakUV1.out" "polyTweak48.ip";
connectAttr "polyMergeVert2.out" "polyTweakUV2.ip";
connectAttr "polyTweak49.out" "polyMergeVert3.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyMergeVert3.mp";
connectAttr "polyTweakUV2.out" "polyTweak49.ip";
connectAttr "polyMergeVert3.out" "polySplit7.ip";
connectAttr "polyCylinder1.out" "polyDelEdge1.ip";
connectAttr "polyDelEdge1.out" "polyDelEdge2.ip";
connectAttr "polyDelEdge2.out" "polyExtrudeFace1.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polyTweak50.out" "polyExtrudeFace2.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak50.ip";
connectAttr "polyTweak51.out" "polyExtrudeFace3.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak51.ip";
connectAttr "polyTweak52.out" "polyExtrudeFace4.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak52.ip";
connectAttr "polyTweak53.out" "polyExtrudeFace5.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak53.ip";
connectAttr "polyExtrudeFace5.out" "polyTweak54.ip";
connectAttr "polyTweak54.out" "deleteComponent2.ig";
connectAttr "polyTweak55.out" "polyExtrudeFace6.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace6.mp";
connectAttr "deleteComponent2.og" "polyTweak55.ip";
connectAttr "polyTweak56.out" "polyExtrudeFace7.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace6.out" "polyTweak56.ip";
connectAttr "polySplit7.out" "polySoftEdge1.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polySoftEdge1.mp";
connectAttr "polyTweak58.out" "polyAverageVertex208.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex208.mp"
		;
connectAttr "polySoftEdge1.out" "polyTweak58.ip";
connectAttr "polyAverageVertex208.out" "polyAverageVertex209.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex209.mp"
		;
connectAttr "polyAverageVertex209.out" "polyAverageVertex210.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex210.mp"
		;
connectAttr "polyAverageVertex210.out" "polyAverageVertex211.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex211.mp"
		;
connectAttr "polyAverageVertex211.out" "polyAverageVertex212.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex212.mp"
		;
connectAttr "polyAverageVertex212.out" "polyAverageVertex213.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex213.mp"
		;
connectAttr "polyAverageVertex213.out" "polyAverageVertex214.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex214.mp"
		;
connectAttr "polyAverageVertex214.out" "polyAverageVertex215.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex215.mp"
		;
connectAttr "polyAverageVertex215.out" "polyAverageVertex216.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex216.mp"
		;
connectAttr "polyAverageVertex216.out" "polyAverageVertex217.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex217.mp"
		;
connectAttr "polyAverageVertex217.out" "polyAverageVertex218.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex218.mp"
		;
connectAttr "polyAverageVertex218.out" "polyAverageVertex219.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex219.mp"
		;
connectAttr "polyAverageVertex219.out" "polyAverageVertex220.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex220.mp"
		;
connectAttr "polyAverageVertex220.out" "polyAverageVertex221.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex221.mp"
		;
connectAttr "polyAverageVertex221.out" "polyAverageVertex222.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex222.mp"
		;
connectAttr "polyAverageVertex222.out" "polyAverageVertex223.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex223.mp"
		;
connectAttr "polyAverageVertex223.out" "polyAverageVertex224.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex224.mp"
		;
connectAttr "polyAverageVertex224.out" "polyAverageVertex225.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex225.mp"
		;
connectAttr "polyAverageVertex225.out" "polyAverageVertex226.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex226.mp"
		;
connectAttr "polyAverageVertex226.out" "createColorSet1.ig";
connectAttr "polyTweak59.out" "polyAverageVertex227.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex227.mp"
		;
connectAttr "createColorSet1.og" "polyTweak59.ip";
connectAttr "polyAverageVertex227.out" "polyAverageVertex228.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex228.mp"
		;
connectAttr "polyAverageVertex228.out" "polyAverageVertex229.ip";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyAverageVertex229.mp"
		;
connectAttr "|polySurface1|transform2|polySurfaceShape1.o" "polyUnite1.ip[0]";
connectAttr "|polySurface1|transform2|polySurfaceShape1.o" "polyUnite1.ip[1]";
connectAttr "|polySurface1|transform2|polySurfaceShape1.wm" "polyUnite1.im[0]";
connectAttr "|polySurface5|transform1|polySurfaceShape1.wm" "polyUnite1.im[1]";
connectAttr "polyAverageVertex229.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "groupParts1.og" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "polyUnite1.out" "groupParts3.ig";
connectAttr "groupId5.id" "groupParts3.gi";
connectAttr "groupParts3.og" "polyMergeVert4.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyMergeVert4.mp";
connectAttr "polyMergeVert4.out" "polyExtrudeFace8.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyExtrudeFace8.mp"
		;
connectAttr "polyExtrudeFace8.out" "polyNormal1.ip";
connectAttr "polyCube1.out" "polySmoothFace1.ip";
connectAttr "polyNormal1.out" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "deleteComponent6.ig";
connectAttr "deleteComponent6.og" "deleteComponent7.ig";
connectAttr "polyTweak60.out" "polyAverageVertex230.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex230.mp"
		;
connectAttr "deleteComponent7.og" "polyTweak60.ip";
connectAttr "polyAverageVertex230.out" "polyAverageVertex231.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex231.mp"
		;
connectAttr "polyAverageVertex231.out" "polyAverageVertex232.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex232.mp"
		;
connectAttr "polyAverageVertex232.out" "polyAverageVertex233.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex233.mp"
		;
connectAttr "polyAverageVertex233.out" "polyAverageVertex234.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex234.mp"
		;
connectAttr "polyAverageVertex234.out" "polyAverageVertex235.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex235.mp"
		;
connectAttr "polyAverageVertex235.out" "polyAverageVertex236.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex236.mp"
		;
connectAttr "polyAverageVertex236.out" "polyAverageVertex237.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex237.mp"
		;
connectAttr "polyAverageVertex237.out" "polyAverageVertex238.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex238.mp"
		;
connectAttr "polyTweak61.out" "polyAverageVertex239.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex239.mp"
		;
connectAttr "polyAverageVertex238.out" "polyTweak61.ip";
connectAttr "polyAverageVertex239.out" "polyAverageVertex240.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex240.mp"
		;
connectAttr "polyTweak62.out" "polyAverageVertex241.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex241.mp"
		;
connectAttr "polyAverageVertex240.out" "polyTweak62.ip";
connectAttr "polyAverageVertex241.out" "polyAverageVertex242.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex242.mp"
		;
connectAttr "polyAverageVertex242.out" "polyAverageVertex243.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex243.mp"
		;
connectAttr "polyAverageVertex243.out" "polyAverageVertex244.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex244.mp"
		;
connectAttr "polyAverageVertex244.out" "polyAverageVertex245.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex245.mp"
		;
connectAttr "polyAverageVertex245.out" "polyAverageVertex246.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex246.mp"
		;
connectAttr "polyAverageVertex246.out" "polyAverageVertex247.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex247.mp"
		;
connectAttr "polyAverageVertex247.out" "polyAverageVertex248.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex248.mp"
		;
connectAttr "polyAverageVertex248.out" "polyAverageVertex249.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex249.mp"
		;
connectAttr "polyAverageVertex249.out" "polyAverageVertex250.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex250.mp"
		;
connectAttr "polyAverageVertex250.out" "polyAverageVertex251.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex251.mp"
		;
connectAttr "polyAverageVertex251.out" "polyAverageVertex252.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex252.mp"
		;
connectAttr "polyAverageVertex252.out" "polyAverageVertex253.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex253.mp"
		;
connectAttr "polyAverageVertex253.out" "polyAverageVertex254.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex254.mp"
		;
connectAttr "polyAverageVertex254.out" "polyAverageVertex255.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex255.mp"
		;
connectAttr "polyAverageVertex255.out" "polyAverageVertex256.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex256.mp"
		;
connectAttr "polyAverageVertex256.out" "polyAverageVertex257.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex257.mp"
		;
connectAttr "polyAverageVertex257.out" "polyAverageVertex258.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex258.mp"
		;
connectAttr "polyAverageVertex258.out" "polyAverageVertex259.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex259.mp"
		;
connectAttr "polyAverageVertex259.out" "polyAverageVertex260.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex260.mp"
		;
connectAttr "polyAverageVertex260.out" "polyAverageVertex261.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex261.mp"
		;
connectAttr "polyAverageVertex261.out" "polyAverageVertex262.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex262.mp"
		;
connectAttr "polyAverageVertex262.out" "polyAverageVertex263.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex263.mp"
		;
connectAttr "polyAverageVertex263.out" "polyAverageVertex264.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex264.mp"
		;
connectAttr "polyAverageVertex264.out" "polyAverageVertex265.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex265.mp"
		;
connectAttr "polyAverageVertex265.out" "polyAverageVertex266.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex266.mp"
		;
connectAttr "polyAverageVertex266.out" "polyAverageVertex267.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex267.mp"
		;
connectAttr "polyAverageVertex267.out" "polyAverageVertex268.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex268.mp"
		;
connectAttr "polyAverageVertex268.out" "polyAverageVertex269.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex269.mp"
		;
connectAttr "polyAverageVertex269.out" "polyAverageVertex270.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex270.mp"
		;
connectAttr "polyAverageVertex270.out" "polyAverageVertex271.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex271.mp"
		;
connectAttr "polyAverageVertex271.out" "polyAverageVertex272.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex272.mp"
		;
connectAttr "polyAverageVertex272.out" "polyAverageVertex273.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex273.mp"
		;
connectAttr "polyAverageVertex273.out" "polyAverageVertex274.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex274.mp"
		;
connectAttr "polyAverageVertex274.out" "polyAverageVertex275.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex275.mp"
		;
connectAttr "polyAverageVertex275.out" "polyAverageVertex276.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex276.mp"
		;
connectAttr "polyAverageVertex276.out" "polyAverageVertex277.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex277.mp"
		;
connectAttr "polyAverageVertex277.out" "polyAverageVertex278.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex278.mp"
		;
connectAttr "polyAverageVertex278.out" "polyAverageVertex279.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex279.mp"
		;
connectAttr "polyAverageVertex279.out" "polyAverageVertex280.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex280.mp"
		;
connectAttr "polyAverageVertex280.out" "polyAverageVertex281.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex281.mp"
		;
connectAttr "polyAverageVertex281.out" "polyAverageVertex282.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex282.mp"
		;
connectAttr "polyAverageVertex282.out" "polyAverageVertex283.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex283.mp"
		;
connectAttr "polyAverageVertex283.out" "polyAverageVertex284.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex284.mp"
		;
connectAttr "polyAverageVertex284.out" "polyAverageVertex285.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex285.mp"
		;
connectAttr "polyAverageVertex285.out" "polyAverageVertex286.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex286.mp"
		;
connectAttr "polyAverageVertex286.out" "polyAverageVertex287.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex287.mp"
		;
connectAttr "polyAverageVertex287.out" "polyAverageVertex288.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex288.mp"
		;
connectAttr "polyAverageVertex288.out" "polyAverageVertex289.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex289.mp"
		;
connectAttr "polyAverageVertex289.out" "polyAverageVertex290.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex290.mp"
		;
connectAttr "polyAverageVertex290.out" "polyAverageVertex291.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex291.mp"
		;
connectAttr "polyAverageVertex291.out" "polyAverageVertex292.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex292.mp"
		;
connectAttr "polyAverageVertex292.out" "polyAverageVertex293.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex293.mp"
		;
connectAttr "polyAverageVertex293.out" "polyAverageVertex294.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex294.mp"
		;
connectAttr "polyAverageVertex294.out" "polyAverageVertex295.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex295.mp"
		;
connectAttr "polyAverageVertex295.out" "polyAverageVertex296.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex296.mp"
		;
connectAttr "polyAverageVertex296.out" "polyAverageVertex297.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex297.mp"
		;
connectAttr "polyAverageVertex297.out" "polyAverageVertex298.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex298.mp"
		;
connectAttr "polyAverageVertex298.out" "polyAverageVertex299.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex299.mp"
		;
connectAttr "polyAverageVertex299.out" "polyAverageVertex300.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex300.mp"
		;
connectAttr "polyTweak63.out" "polyAverageVertex301.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex301.mp"
		;
connectAttr "polyAverageVertex300.out" "polyTweak63.ip";
connectAttr "polyAverageVertex301.out" "polyAverageVertex302.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex302.mp"
		;
connectAttr "polyAverageVertex302.out" "polyAverageVertex303.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex303.mp"
		;
connectAttr "polyAverageVertex303.out" "polyAverageVertex304.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex304.mp"
		;
connectAttr "polyAverageVertex304.out" "polyAverageVertex305.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex305.mp"
		;
connectAttr "polyAverageVertex305.out" "polyAverageVertex306.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex306.mp"
		;
connectAttr "polyAverageVertex306.out" "polyAverageVertex307.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex307.mp"
		;
connectAttr "polyAverageVertex307.out" "polyAverageVertex308.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex308.mp"
		;
connectAttr "polyAverageVertex308.out" "polyAverageVertex309.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex309.mp"
		;
connectAttr "polyAverageVertex309.out" "polyAverageVertex310.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex310.mp"
		;
connectAttr "polyAverageVertex310.out" "polyAverageVertex311.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex311.mp"
		;
connectAttr "polyAverageVertex311.out" "polyAverageVertex312.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex312.mp"
		;
connectAttr "polyAverageVertex312.out" "polyAverageVertex313.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex313.mp"
		;
connectAttr "polyAverageVertex313.out" "polyAverageVertex314.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex314.mp"
		;
connectAttr "polyAverageVertex314.out" "polyAverageVertex315.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex315.mp"
		;
connectAttr "polyAverageVertex315.out" "polyAverageVertex316.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex316.mp"
		;
connectAttr "polyAverageVertex316.out" "polyAverageVertex317.ip";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyAverageVertex317.mp"
		;
connectAttr "polyAverageVertex317.out" "deleteComponent8.ig";
connectAttr "deleteComponent8.og" "deleteComponent9.ig";
connectAttr "deleteComponent9.og" "deleteComponent10.ig";
connectAttr "deleteComponent10.og" "groupParts4.ig";
connectAttr "groupId6.id" "groupParts4.gi";
connectAttr "|polySurface6|transform3|polySurface6Shape.o" "polyUnite2.ip[0]";
connectAttr "|polySurface6|transform3|polySurface6Shape.o" "polyUnite2.ip[1]";
connectAttr "|polySurface7|transform4|polySurface6Shape.wm" "polyUnite2.im[0]";
connectAttr "|polySurface6|transform3|polySurface6Shape.wm" "polyUnite2.im[1]";
connectAttr "polyUnite2.out" "groupParts5.ig";
connectAttr "groupId7.id" "groupParts5.gi";
connectAttr "groupParts5.og" "polyMergeVert5.ip";
connectAttr "polySurface8Shape.wm" "polyMergeVert5.mp";
connectAttr "polyMergeVert5.out" "polyExtrudeFace9.ip";
connectAttr "polySurface8Shape.wm" "polyExtrudeFace9.mp";
connectAttr "polyExtrudeFace9.out" "polySoftEdge2.ip";
connectAttr "polySurface8Shape.wm" "polySoftEdge2.mp";
connectAttr "polySoftEdge2.out" "deleteComponent11.ig";
connectAttr "polyTweak57.out" "polySplit8.ip";
connectAttr "polyAppendVertex56.out" "polyTweak57.ip";
connectAttr "polyAppendVertex55.out" "polyAppendVertex56.ip";
connectAttr "polyCreateFace2.out" "polyAppendVertex55.ip";
connectAttr "file1.oc" "lambert2.c";
connectAttr "lambert2.oc" "pCube2SG.ss";
connectAttr "pCube2SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "file1.msg" "materialInfo1.t" -na;
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofu" "file1.ofu";
connectAttr "place2dTexture1.ofv" "file1.ofv";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.reu" "file1.reu";
connectAttr "place2dTexture1.rev" "file1.rev";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file1.ws";
connectAttr "pCylinderShape1.o" "polyUnite3.ip[0]";
connectAttr "polySurface8Shape.o" "polyUnite3.ip[1]";
connectAttr "|polySurface3|transform5|polySurfaceShape2.o" "polyUnite3.ip[2]";
connectAttr "|polySurface3|transform5|polySurfaceShape2.o" "polyUnite3.ip[3]";
connectAttr "pCylinderShape1.wm" "polyUnite3.im[0]";
connectAttr "polySurface8Shape.wm" "polyUnite3.im[1]";
connectAttr "|polySurface4|transform6|polySurfaceShape2.wm" "polyUnite3.im[2]";
connectAttr "|polySurface3|transform5|polySurfaceShape2.wm" "polyUnite3.im[3]";
connectAttr "polyExtrudeFace7.out" "groupParts6.ig";
connectAttr "groupId8.id" "groupParts6.gi";
connectAttr "polySplit8.out" "groupParts7.ig";
connectAttr "groupId10.id" "groupParts7.gi";
connectAttr "groupParts7.og" "groupParts8.ig";
connectAttr "groupId12.id" "groupParts8.gi";
connectAttr "polyUnite3.out" "groupParts9.ig";
connectAttr "groupId14.id" "groupParts9.gi";
connectAttr "pCube2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "|polySurface1|transform2|polySurfaceShape1.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|polySurface1|transform2|polySurfaceShape1.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|polySurface5|transform1|polySurfaceShape1.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|polySurface5|transform1|polySurfaceShape1.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|polySurface6|transform3|polySurface6Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|group1|pCube1|pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|polySurface7|transform4|polySurface6Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "polySurface8Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "|group2|pCube1|pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "|polySurface4|transform6|polySurfaceShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|polySurface4|transform6|polySurfaceShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|polySurface3|transform5|polySurfaceShape2.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|polySurface3|transform5|polySurfaceShape2.ciog.cog[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "pCylinder2Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId7.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId9.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId10.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId11.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId12.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId13.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId14.msg" ":initialShadingGroup.gn" -na;
// End of clown.ma
