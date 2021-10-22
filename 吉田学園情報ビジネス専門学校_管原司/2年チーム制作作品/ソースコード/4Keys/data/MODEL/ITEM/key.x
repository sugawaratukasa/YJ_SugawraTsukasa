xof 0302txt 0064
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Boolean {
 <4885AE61-78E8-11cf-8F52-0040333594A3>
 WORD truefalse;
}

template Boolean2d {
 <4885AE63-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template MaterialWrap {
 <4885AE60-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshFaceWraps {
 <4885AE62-78E8-11cf-8F52-0040333594A3>
 DWORD nFaceWrapValues;
 Boolean2d faceWrapValues;
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

Header{
1;
0;
1;
}

Mesh {
 117;
 -0.47734;0.14618;0.82678;,
 0.47734;0.14618;0.82678;,
 0.47734;6.51512;0.82678;,
 -0.47734;6.51512;0.82678;,
 0.95468;0.14618;0.00000;,
 0.95468;6.51512;0.00000;,
 0.47734;0.14618;-0.82678;,
 0.47734;6.51512;-0.82678;,
 -0.47734;0.14618;-0.82678;,
 -0.47734;6.51512;-0.82678;,
 -0.95468;0.14618;0.00000;,
 -0.95468;6.51512;0.00000;,
 -0.47734;0.14618;0.82678;,
 -0.47734;6.51512;0.82678;,
 0.47734;-6.51512;0.82678;,
 -0.47734;-6.51512;0.82678;,
 0.00000;-6.51512;-0.00000;,
 0.95468;-6.51512;0.00000;,
 0.47734;-6.51512;-0.82678;,
 -0.47734;-6.51512;-0.82678;,
 -0.95468;-6.51512;0.00000;,
 -0.47734;6.51512;0.82678;,
 0.47734;6.51512;0.82678;,
 0.00000;6.51512;0.00000;,
 0.95468;6.51512;0.00000;,
 0.47734;6.51512;-0.82678;,
 -0.47734;6.51512;-0.82678;,
 -0.95468;6.51512;0.00000;,
 -0.47734;-0.91362;0.82678;,
 0.47734;-0.91362;0.82678;,
 2.50248;-0.91362;0.82678;,
 2.97982;-0.91362;0.00000;,
 2.97982;0.14618;0.00000;,
 2.50248;0.14618;0.82678;,
 2.50248;-0.91362;-0.82678;,
 2.50248;0.14618;-0.82678;,
 0.47734;-0.91362;-0.82678;,
 -0.47734;-0.91362;-0.82678;,
 -0.95468;-0.91362;0.00000;,
 -0.47734;-0.91362;0.82678;,
 -0.47734;-2.65058;0.82678;,
 0.47734;-2.65058;0.82678;,
 0.95468;-2.65058;0.00000;,
 0.95468;-0.91362;0.00000;,
 0.47734;-2.65058;-0.82678;,
 -0.47734;-2.65058;-0.82678;,
 -0.95468;-2.65058;0.00000;,
 -0.47734;-2.65058;0.82678;,
 -0.47734;-3.75472;0.82678;,
 0.47734;-3.75472;0.82678;,
 2.50248;-3.75472;0.82678;,
 2.97982;-3.75472;0.00000;,
 2.97982;-2.65058;0.00000;,
 2.50248;-2.65058;0.82678;,
 2.50248;-3.75472;-0.82678;,
 2.50248;-2.65058;-0.82678;,
 0.47734;-3.75472;-0.82678;,
 -0.47734;-3.75472;-0.82678;,
 -0.95468;-3.75472;0.00000;,
 -0.47734;-3.75472;0.82678;,
 -0.47734;-6.51512;0.82678;,
 0.47734;-6.51512;0.82678;,
 0.95468;-6.51512;0.00000;,
 0.95468;-3.75472;0.00000;,
 0.47734;-6.51512;-0.82678;,
 -0.47734;-6.51512;-0.82678;,
 -0.95468;-6.51512;0.00000;,
 -0.47734;-6.51512;0.82678;,
 1.31038;12.29936;0.00000;,
 -1.31038;12.29936;0.00000;,
 -1.44142;12.52632;-0.54646;,
 1.44142;12.52632;-0.54646;,
 2.62076;10.02972;0.00000;,
 2.88284;10.02972;-0.54646;,
 1.31038;7.76006;0.00000;,
 1.44142;7.53310;-0.54646;,
 -1.31038;7.76006;0.00000;,
 -1.44142;7.53310;-0.54646;,
 -2.62076;10.02972;0.00000;,
 -2.88284;10.02972;-0.54646;,
 -1.31038;12.29936;0.00000;,
 -1.44142;12.52632;-0.54646;,
 -2.31210;14.03440;-0.74170;,
 2.31210;14.03440;-0.74170;,
 4.62420;10.02972;-0.74170;,
 2.31210;6.02504;-0.74170;,
 -2.31210;6.02502;-0.74170;,
 -4.62420;10.02972;-0.74170;,
 -2.31210;14.03440;-0.74170;,
 -2.48996;14.34244;0.00000;,
 2.48996;14.34244;0.00000;,
 4.97992;10.02972;0.00000;,
 2.48996;5.71698;0.00000;,
 -2.48996;5.71698;0.00000;,
 -4.97992;10.02972;0.00000;,
 -2.48996;14.34244;0.00000;,
 -2.31210;14.03440;0.74170;,
 2.31210;14.03440;0.74170;,
 4.62420;10.02972;0.74170;,
 2.31210;6.02504;0.74170;,
 -2.31210;6.02502;0.74170;,
 -4.62420;10.02972;0.74170;,
 -2.31210;14.03440;0.74170;,
 -1.44142;12.52632;0.54646;,
 1.44142;12.52632;0.54646;,
 2.88284;10.02972;0.54646;,
 1.44142;7.53310;0.54646;,
 -1.44142;7.53310;0.54646;,
 -2.88284;10.02972;0.54646;,
 -1.44142;12.52632;0.54646;,
 -1.31038;12.29936;0.00000;,
 1.31038;12.29936;0.00000;,
 2.62076;10.02972;0.00000;,
 1.31038;7.76006;0.00000;,
 -1.31038;7.76006;0.00000;,
 -2.62076;10.02972;0.00000;,
 -1.31038;12.29936;0.00000;;
 
 90;
 4;0,1,2,3;,
 4;1,4,5,2;,
 4;4,6,7,5;,
 4;6,8,9,7;,
 4;8,10,11,9;,
 4;10,12,13,11;,
 3;14,15,16;,
 3;17,14,16;,
 3;18,17,16;,
 3;19,18,16;,
 3;20,19,16;,
 3;15,20,16;,
 3;21,22,23;,
 3;22,24,23;,
 3;24,25,23;,
 3;25,26,23;,
 3;26,27,23;,
 3;27,21,23;,
 4;28,29,1,0;,
 4;30,31,32,33;,
 4;31,34,35,32;,
 4;36,37,8,6;,
 4;37,38,10,8;,
 4;38,39,12,10;,
 4;40,41,29,28;,
 4;41,42,43,29;,
 4;42,44,36,43;,
 4;44,45,37,36;,
 4;45,46,38,37;,
 4;46,47,39,38;,
 4;48,49,41,40;,
 4;50,51,52,53;,
 4;51,54,55,52;,
 4;56,57,45,44;,
 4;57,58,46,45;,
 4;58,59,47,46;,
 4;60,61,49,48;,
 4;61,62,63,49;,
 4;62,64,56,63;,
 4;64,65,57,56;,
 4;65,66,58,57;,
 4;66,67,59,58;,
 4;29,43,31,30;,
 4;4,1,33,32;,
 4;1,29,30,33;,
 4;43,36,34,31;,
 4;36,6,35,34;,
 4;6,4,32,35;,
 4;49,63,51,50;,
 4;42,41,53,52;,
 4;41,49,50,53;,
 4;63,56,54,51;,
 4;56,44,55,54;,
 4;44,42,52,55;,
 4;68,69,70,71;,
 4;72,68,71,73;,
 4;74,72,73,75;,
 4;76,74,75,77;,
 4;78,76,77,79;,
 4;80,78,79,81;,
 4;71,70,82,83;,
 4;73,71,83,84;,
 4;75,73,84,85;,
 4;77,75,85,86;,
 4;79,77,86,87;,
 4;81,79,87,88;,
 4;83,82,89,90;,
 4;84,83,90,91;,
 4;85,84,91,92;,
 4;86,85,92,93;,
 4;87,86,93,94;,
 4;88,87,94,95;,
 4;90,89,96,97;,
 4;91,90,97,98;,
 4;92,91,98,99;,
 4;93,92,99,100;,
 4;94,93,100,101;,
 4;95,94,101,102;,
 4;97,96,103,104;,
 4;98,97,104,105;,
 4;99,98,105,106;,
 4;100,99,106,107;,
 4;101,100,107,108;,
 4;102,101,108,109;,
 4;104,103,110,111;,
 4;105,104,111,112;,
 4;106,105,112,113;,
 4;107,106,113,114;,
 4;108,107,114,115;,
 4;109,108,115,116;;
 
 MeshMaterialList {
  1;
  90;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0;;
  Material {
   0.800000;0.592000;0.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  66;
  0.000000;-1.000000;0.000000;,
  0.000000;0.000000;1.000000;,
  0.866026;0.000000;0.499999;,
  0.866026;0.000000;-0.499999;,
  0.000000;0.000000;-1.000000;,
  -0.866026;0.000000;-0.499999;,
  0.000000;1.000000;0.000000;,
  -0.866026;0.000000;-0.499999;,
  0.866026;0.000000;0.499999;,
  -0.866026;0.000000;-0.499999;,
  0.866026;0.000000;-0.499999;,
  0.866026;0.000000;0.499999;,
  0.866026;0.000000;-0.499999;,
  0.866026;0.000000;0.499999;,
  0.866026;0.000000;-0.499999;,
  0.499998;-0.866026;-0.000000;,
  -0.499998;-0.866026;0.000000;,
  -1.000000;-0.000002;0.000000;,
  -0.500000;0.866025;0.000000;,
  0.500000;0.866026;0.000000;,
  1.000000;-0.000002;-0.000000;,
  0.276114;-0.478245;-0.833693;,
  -0.276114;-0.478245;-0.833693;,
  -0.552227;-0.000001;-0.833694;,
  -0.276115;0.478244;-0.833692;,
  0.276114;0.478244;-0.833692;,
  0.552227;-0.000001;-0.833694;,
  0.055710;-0.096493;-0.993773;,
  -0.055710;-0.096493;-0.993773;,
  -0.111421;0.000000;-0.993773;,
  -0.055711;0.096493;-0.993773;,
  0.055710;0.096493;-0.993773;,
  0.111421;-0.000000;-0.993773;,
  -0.499998;0.866027;0.000000;,
  0.499998;0.866027;0.000000;,
  1.000000;0.000001;0.000000;,
  0.500000;-0.866026;-0.000000;,
  -0.499999;-0.866026;0.000000;,
  -1.000000;0.000001;0.000000;,
  -0.450834;0.780871;0.432423;,
  0.450834;0.780871;0.432423;,
  0.901665;0.000001;0.432435;,
  0.450833;-0.780867;0.432431;,
  -0.450833;-0.780868;0.432428;,
  -0.901667;0.000001;0.432432;,
  0.055710;-0.096493;0.993773;,
  -0.055710;-0.096493;0.993773;,
  -0.111421;0.000000;0.993773;,
  -0.055711;0.096493;0.993773;,
  0.055710;0.096493;0.993773;,
  0.111421;-0.000000;0.993773;,
  -0.866026;0.000000;0.499999;,
  -0.866026;0.000000;0.499999;,
  -0.866026;0.000000;0.499999;,
  0.450834;0.780871;-0.432423;,
  -0.450834;0.780871;-0.432423;,
  0.901665;0.000001;-0.432435;,
  0.450833;-0.780867;-0.432431;,
  -0.450833;-0.780868;-0.432428;,
  -0.901667;0.000001;-0.432432;,
  -0.450833;-0.780869;0.432427;,
  0.450833;-0.780869;0.432427;,
  -0.901667;-0.000002;0.432432;,
  -0.450834;0.780868;0.432427;,
  0.450834;0.780868;0.432427;,
  0.901667;-0.000002;0.432432;;
  90;
  4;1,1,1,1;,
  4;2,2,2,2;,
  4;3,3,3,3;,
  4;4,4,4,4;,
  4;7,7,5,5;,
  4;51,51,52,52;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;0,0,0;,
  3;6,6,6;,
  3;6,6,6;,
  3;6,6,6;,
  3;6,6,6;,
  3;6,6,6;,
  3;6,6,6;,
  4;1,1,1,1;,
  4;11,11,11,11;,
  4;12,12,12,12;,
  4;4,4,4,4;,
  4;9,9,7,7;,
  4;53,53,51,51;,
  4;1,1,1,1;,
  4;8,8,8,8;,
  4;10,10,10,10;,
  4;4,4,4,4;,
  4;7,7,9,9;,
  4;51,51,53,53;,
  4;1,1,1,1;,
  4;13,13,13,13;,
  4;14,14,14,14;,
  4;4,4,4,4;,
  4;7,7,7,7;,
  4;51,51,51,51;,
  4;1,1,1,1;,
  4;8,8,8,8;,
  4;10,10,10,10;,
  4;4,4,4,4;,
  4;7,7,7,7;,
  4;51,51,51,51;,
  4;0,0,0,0;,
  4;6,6,6,6;,
  4;1,1,1,1;,
  4;0,0,0,0;,
  4;4,4,4,4;,
  4;6,6,6,6;,
  4;0,0,0,0;,
  4;6,6,6,6;,
  4;1,1,1,1;,
  4;0,0,0,0;,
  4;4,4,4,4;,
  4;6,6,6,6;,
  4;16,15,21,22;,
  4;17,16,22,23;,
  4;18,17,23,24;,
  4;19,18,24,25;,
  4;20,19,25,26;,
  4;15,20,26,21;,
  4;22,21,27,28;,
  4;23,22,28,29;,
  4;24,23,29,30;,
  4;25,24,30,31;,
  4;26,25,31,32;,
  4;21,26,32,27;,
  4;54,55,33,34;,
  4;56,54,34,35;,
  4;57,56,35,36;,
  4;58,57,36,37;,
  4;59,58,37,38;,
  4;55,59,38,33;,
  4;34,33,39,40;,
  4;35,34,40,41;,
  4;36,35,41,42;,
  4;37,36,42,43;,
  4;38,37,43,44;,
  4;33,38,44,39;,
  4;46,45,45,46;,
  4;47,46,46,47;,
  4;48,47,47,48;,
  4;49,48,48,49;,
  4;50,49,49,50;,
  4;45,50,50,45;,
  4;60,61,15,16;,
  4;62,60,16,17;,
  4;63,62,17,18;,
  4;64,63,18,19;,
  4;65,64,19,20;,
  4;61,65,20,15;;
 }
 MeshTextureCoords {
  117;
  0.375000;0.504687;,
  0.416667;0.504687;,
  0.416667;0.688440;,
  0.375000;0.688440;,
  0.458333;0.504687;,
  0.458333;0.688440;,
  0.500000;0.504687;,
  0.500000;0.688440;,
  0.541667;0.504687;,
  0.541667;0.688440;,
  0.583333;0.504687;,
  0.583333;0.688440;,
  0.625000;0.504687;,
  0.625000;0.688440;,
  0.421875;0.020934;,
  0.578125;0.020934;,
  0.500000;0.150000;,
  0.343750;0.156250;,
  0.421875;0.291566;,
  0.578125;0.291566;,
  0.656250;0.156250;,
  0.578125;0.979066;,
  0.421875;0.979066;,
  0.500000;0.837500;,
  0.343750;0.843750;,
  0.421875;0.708434;,
  0.578125;0.708434;,
  0.656250;0.843750;,
  0.375000;0.474111;,
  0.416667;0.474111;,
  0.416667;0.474111;,
  0.458333;0.474111;,
  0.458333;0.504687;,
  0.416667;0.504687;,
  0.500000;0.474111;,
  0.500000;0.504687;,
  0.500000;0.474111;,
  0.541667;0.474111;,
  0.583333;0.474111;,
  0.625000;0.474111;,
  0.375000;0.423997;,
  0.416667;0.423997;,
  0.458333;0.423997;,
  0.458333;0.474111;,
  0.500000;0.423997;,
  0.541667;0.423997;,
  0.583333;0.423997;,
  0.625000;0.423997;,
  0.375000;0.392141;,
  0.416667;0.392141;,
  0.416667;0.392141;,
  0.458333;0.392141;,
  0.458333;0.423997;,
  0.416667;0.423997;,
  0.500000;0.392141;,
  0.500000;0.423997;,
  0.500000;0.392141;,
  0.541667;0.392141;,
  0.583333;0.392141;,
  0.625000;0.392141;,
  0.375000;0.312500;,
  0.416667;0.312500;,
  0.458333;0.312500;,
  0.458333;0.392141;,
  0.500000;0.312500;,
  0.541667;0.312500;,
  0.583333;0.312500;,
  0.625000;0.312500;,
  0.166667;1.000000;,
  0.000000;1.000000;,
  0.000000;0.833333;,
  0.166667;0.833333;,
  0.333333;1.000000;,
  0.333333;0.833333;,
  0.500000;1.000000;,
  0.500000;0.833333;,
  0.666667;1.000000;,
  0.666667;0.833333;,
  0.833333;1.000000;,
  0.833333;0.833333;,
  1.000000;1.000000;,
  1.000000;0.833333;,
  0.000000;0.666667;,
  0.166667;0.666667;,
  0.333333;0.666667;,
  0.500000;0.666667;,
  0.666667;0.666667;,
  0.833333;0.666667;,
  1.000000;0.666667;,
  0.000000;0.500000;,
  0.166667;0.500000;,
  0.333333;0.500000;,
  0.500000;0.500000;,
  0.666667;0.500000;,
  0.833333;0.500000;,
  1.000000;0.500000;,
  0.000000;0.333333;,
  0.166667;0.333333;,
  0.333333;0.333333;,
  0.500000;0.333333;,
  0.666667;0.333333;,
  0.833333;0.333333;,
  1.000000;0.333333;,
  0.000000;0.166667;,
  0.166667;0.166667;,
  0.333333;0.166667;,
  0.500000;0.166667;,
  0.666667;0.166667;,
  0.833333;0.166667;,
  1.000000;0.166667;,
  0.000000;-0.000000;,
  0.166667;-0.000000;,
  0.333333;-0.000000;,
  0.500000;-0.000000;,
  0.666667;-0.000000;,
  0.833333;-0.000000;,
  1.000000;-0.000000;;
 }
}
