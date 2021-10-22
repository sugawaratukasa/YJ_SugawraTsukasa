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
 50;
 -0.73442;-0.66588;-0.83515;,
 -4.21652;-0.66588;-0.83515;,
 -4.21652;0.37281;-1.32445;,
 -0.23232;0.37281;-1.32445;,
 -7.10072;0.37281;-1.05555;,
 -7.08461;-0.43389;-0.83515;,
 -7.85532;-0.37159;-0.83515;,
 -8.63731;0.37281;-0.98325;,
 -4.21652;1.41162;-0.83515;,
 -0.73442;1.41162;-0.83515;,
 -7.08461;1.17961;-0.83515;,
 -7.85532;1.11731;-0.83515;,
 -0.23232;1.55911;-0.00224;,
 -3.78402;1.71672;-0.00224;,
 -4.21652;1.40761;0.83126;,
 -0.76372;1.40761;0.83126;,
 -7.19281;1.15801;0.83126;,
 -7.09312;1.44551;-0.00224;,
 -8.45541;1.37271;-0.00224;,
 -7.99252;1.09091;0.83126;,
 -4.21652;0.37281;1.22675;,
 -0.23232;0.37281;1.22675;,
 -7.21112;0.37281;1.05626;,
 -8.51432;0.37281;1.01046;,
 -4.21652;-0.66189;0.83126;,
 -0.76372;-0.66189;0.83126;,
 -7.19281;-0.41229;0.83126;,
 -7.99252;-0.34529;0.83126;,
 -3.78402;-0.97098;-0.00224;,
 -0.23232;-0.81338;-0.00224;,
 -7.22871;-0.69979;-0.00224;,
 -8.45541;-0.62699;-0.00224;,
 -9.35032;0.37281;-0.00224;,
 1.19218;0.37281;-0.00224;,
 -7.11211;-0.99759;-1.32125;,
 -7.19751;-1.44298;-0.00084;,
 -7.22871;-0.69979;-0.00224;,
 -7.08461;-0.43389;-0.83515;,
 -7.20922;-0.96489;1.32065;,
 -7.19281;-0.41229;0.83126;,
 -7.22572;0.37281;1.70485;,
 -7.21112;0.37281;1.05626;,
 -7.20922;1.71061;1.32065;,
 -7.19281;1.15801;0.83126;,
 -7.07562;2.18872;-0.00084;,
 -7.09312;1.44551;-0.00224;,
 -7.11211;1.74331;-1.32125;,
 -7.08461;1.17961;-0.83515;,
 -7.12651;0.37281;-1.71415;,
 -7.10072;0.37281;-1.05555;;
 
 40;
 4;0,1,2,3;,
 4;4,5,6,7;,
 4;3,2,8,9;,
 4;10,4,7,11;,
 4;12,13,14,15;,
 4;16,17,18,19;,
 4;15,14,20,21;,
 4;22,16,19,23;,
 4;21,20,24,25;,
 4;26,22,23,27;,
 4;25,24,28,29;,
 4;30,26,27,31;,
 4;32,31,27,23;,
 4;18,32,23,19;,
 4;25,29,33,21;,
 4;21,33,12,15;,
 4;9,8,13,12;,
 4;17,10,11,18;,
 4;7,32,18,11;,
 4;6,31,32,7;,
 4;5,30,31,6;,
 4;29,28,1,0;,
 4;33,29,0,3;,
 4;12,33,3,9;,
 4;34,35,36,37;,
 4;35,38,39,36;,
 4;38,40,41,39;,
 4;40,42,43,41;,
 4;42,44,45,43;,
 4;44,46,47,45;,
 4;46,48,49,47;,
 4;48,34,37,49;,
 4;28,35,34,1;,
 4;24,38,35,28;,
 4;20,40,38,24;,
 4;14,42,40,20;,
 4;13,44,42,14;,
 4;8,46,44,13;,
 4;2,48,46,8;,
 4;1,34,48,2;;
 
 MeshMaterialList {
  13;
  40;
  6,
  0,
  6,
  0,
  6,
  0,
  6,
  0,
  6,
  0,
  6,
  0,
  0,
  0,
  6,
  6,
  6,
  0,
  0,
  0,
  0,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6,
  6;;
  Material {
   0.793600;0.787200;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "data/TEXTURE/zombieskin.png";
   }
  }
  Material {
   0.523922;0.473726;0.257255;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.577255;0.577255;0.087843;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.169412;0.169412;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "data/TEXTURE/zombieskin.png";
   }
  }
  Material {
   0.545882;0.389020;0.235294;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "data/TEXTURE/eye.jpg";
   }
  }
  Material {
   0.000000;0.000000;0.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.771765;0.759216;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "data/TEXTURE/met.png";
   }
  }
  Material {
   0.800000;0.800000;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "data/TEXTURE/beruto.png";
   }
  }
  Material {
   0.072000;0.024000;0.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.064000;0.072000;0.040000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.545600;0.388800;0.235200;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "data/TEXTURE/eye.jpg";
   }
  }
  Material {
   0.800000;0.771765;0.759216;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "data/TEXTURE/hukufrontenemy.png";
   }
  }
  Material {
   0.800000;0.771765;0.759216;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
   TextureFilename {
    "data/TEXTURE/hukubackenemy.png";
   }
  }
 }
 MeshNormals {
  56;
  0.230033;-0.736810;-0.635764;,
  0.090021;-0.731940;-0.675396;,
  -0.257748;-0.683954;-0.682476;,
  0.239893;-0.239440;-0.940808;,
  0.088717;-0.000017;-0.996057;,
  -0.249104;0.236830;-0.939073;,
  0.230044;0.736791;-0.635782;,
  0.090782;0.730446;-0.676910;,
  -0.257160;0.685932;-0.680710;,
  0.229568;0.711473;0.664157;,
  0.091908;0.707023;0.701193;,
  -0.270565;0.673631;0.687762;,
  0.367574;-0.000020;0.929994;,
  0.089779;-0.000014;0.995962;,
  -0.400594;-0.000012;0.916256;,
  0.229559;-0.711493;0.664139;,
  0.091158;-0.708496;0.699803;,
  -0.271126;-0.671704;0.689423;,
  0.369375;0.929237;0.008951;,
  0.087297;0.996166;0.005701;,
  -0.398028;0.917348;0.006797;,
  -0.624073;-0.573883;0.530275;,
  -0.288194;-0.934796;0.207608;,
  0.085576;-0.996315;0.005807;,
  0.369356;-0.929245;0.008948;,
  0.590672;-0.580594;0.560373;,
  -0.056578;-0.679195;-0.731774;,
  -0.070673;-0.997466;0.008162;,
  -0.053828;-0.680132;0.731111;,
  -0.029604;-0.000008;0.999562;,
  -0.052530;0.682936;0.728587;,
  -0.067796;0.997664;0.008336;,
  -0.055223;0.682129;-0.729144;,
  -0.034599;-0.000016;-0.999401;,
  -0.999425;0.008604;-0.032788;,
  -0.998989;0.003513;-0.044815;,
  -0.999931;-0.011043;-0.003933;,
  -0.999575;-0.000001;-0.029153;,
  -0.997749;0.021923;-0.063378;,
  -0.998832;0.018278;-0.044725;,
  -0.999639;0.002308;0.026778;,
  -0.998972;-0.000000;0.045339;,
  -0.624068;0.573858;0.530307;,
  0.590691;0.580559;0.560389;,
  -0.584894;0.619763;-0.523251;,
  -0.584864;-0.619805;-0.523236;,
  0.597847;-0.596681;-0.535305;,
  0.597870;0.596644;-0.535320;,
  0.150108;-0.988627;0.009208;,
  0.167072;-0.695694;-0.698639;,
  0.168213;-0.676158;0.717297;,
  0.177320;-0.000013;0.984153;,
  0.169534;0.673140;0.719820;,
  0.153774;0.988065;0.008998;,
  0.168415;0.692593;-0.701393;,
  0.173605;-0.000014;-0.984815;;
  40;
  4;0,1,4,3;,
  4;33,26,2,5;,
  4;3,4,7,6;,
  4;32,33,5,8;,
  4;18,19,10,9;,
  4;30,31,20,11;,
  4;9,10,13,12;,
  4;29,30,11,14;,
  4;12,13,16,15;,
  4;28,29,14,17;,
  4;15,16,23,24;,
  4;27,28,17,22;,
  4;21,22,17,14;,
  4;20,42,14,11;,
  4;15,24,25,12;,
  4;12,43,18,9;,
  4;6,7,19,18;,
  4;31,32,8,20;,
  4;5,44,20,8;,
  4;2,45,45,45;,
  4;26,27,22,2;,
  4;24,23,1,0;,
  4;46,24,0,3;,
  4;18,47,47,6;,
  4;34,35,35,34;,
  4;35,36,36,35;,
  4;36,37,37,36;,
  4;37,38,38,37;,
  4;38,39,39,38;,
  4;39,40,40,39;,
  4;40,41,41,40;,
  4;41,34,34,41;,
  4;23,48,49,1;,
  4;16,50,48,23;,
  4;13,51,50,16;,
  4;10,52,51,13;,
  4;19,53,52,10;,
  4;7,54,53,19;,
  4;4,55,54,7;,
  4;1,49,55,4;;
 }
 MeshTextureCoords {
  50;
  0.433077;1.044914;,
  0.115772;1.044914;,
  0.115772;0.950263;,
  0.478830;0.950263;,
  -0.647017;0.806621;,
  -0.644625;0.921765;,
  -0.759108;0.912873;,
  -0.875269;0.806621;,
  0.115772;0.855603;,
  0.433077;0.855603;,
  -0.644625;0.691463;,
  -0.759108;0.700355;,
  0.478830;0.842162;,
  0.155183;0.827801;,
  0.115772;0.855968;,
  0.430407;0.855968;,
  -0.660697;0.694545;,
  -0.645888;0.653509;,
  -0.848249;0.663900;,
  -0.779488;0.704123;,
  0.115772;0.950263;,
  0.478830;0.950263;,
  -0.663416;0.806621;,
  -0.856999;0.806621;,
  0.115772;1.044549;,
  0.430407;1.044549;,
  -0.660697;0.918683;,
  -0.779488;0.909119;,
  0.155183;1.072716;,
  0.478830;1.058355;,
  -0.666030;0.959719;,
  -0.848249;0.949328;,
  -0.981182;0.806621;,
  0.608637;0.950263;,
  -0.148088;1.075140;,
  -0.155870;1.115727;,
  -0.158713;1.048003;,
  -0.145582;1.023773;,
  -0.156936;1.072160;,
  -0.155441;1.021805;,
  -0.158440;0.950263;,
  -0.157109;0.950263;,
  -0.156936;0.828357;,
  -0.155441;0.878712;,
  -0.144762;0.784790;,
  -0.146357;0.852514;,
  -0.148088;0.825377;,
  -0.145582;0.876744;,
  -0.149400;0.950263;,
  -0.147049;0.950263;;
 }
}
