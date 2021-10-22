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
 26;
 -0.92747;-1.36147;-1.10851;,
 -4.40958;-1.36147;-1.10851;,
 -4.40958;-0.02117;-1.73331;,
 -0.42538;-0.02117;-1.73331;,
 -8.04837;-0.98177;-1.10851;,
 -8.83037;-0.02117;-1.29771;,
 -4.40958;1.31913;-1.10851;,
 -0.92747;1.31913;-1.10851;,
 -8.04837;0.93943;-1.10851;,
 -0.42538;1.50943;-0.04491;,
 -3.97708;1.71283;-0.04491;,
 -4.40958;1.31393;1.01949;,
 -0.95678;1.31393;1.01949;,
 -8.64848;1.26893;-0.04491;,
 -8.18557;0.90543;1.01949;,
 -4.40958;-0.02117;1.52449;,
 -0.42538;-0.02117;1.52449;,
 -8.70737;-0.02117;1.24829;,
 -4.40958;-1.35627;1.01949;,
 -0.95678;-1.35627;1.01949;,
 -8.18557;-0.94777;1.01949;,
 -3.97708;-1.75517;-0.04491;,
 -0.42538;-1.55177;-0.04491;,
 -8.64848;-1.31127;-0.04491;,
 -9.54338;-0.02117;-0.04491;,
 0.99912;-0.02117;-0.04491;;
 
 24;
 4;0,1,2,3;,
 4;1,4,5,2;,
 4;3,2,6,7;,
 4;2,5,8,6;,
 4;9,10,11,12;,
 4;10,13,14,11;,
 4;12,11,15,16;,
 4;11,14,17,15;,
 4;16,15,18,19;,
 4;15,17,20,18;,
 4;19,18,21,22;,
 4;18,20,23,21;,
 4;24,23,20,17;,
 4;13,24,17,14;,
 4;19,22,25,16;,
 4;16,25,9,12;,
 4;7,6,10,9;,
 4;6,8,13,10;,
 4;5,24,13,8;,
 4;4,23,24,5;,
 4;21,23,4,1;,
 4;22,21,1,0;,
 4;25,22,0,3;,
 4;9,25,3,7;;
 
 MeshMaterialList {
  13;
  24;
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
  30;
  0.260154;-0.732356;-0.629265;,
  -0.037360;-0.737297;-0.674535;,
  -0.315002;-0.690856;-0.650762;,
  0.000000;0.000001;-1.000000;,
  -0.037724;0.000001;-0.999288;,
  -0.467611;0.000001;-0.883934;,
  0.260154;0.732358;-0.629264;,
  -0.037360;0.737297;-0.674534;,
  -0.315001;0.690857;-0.650762;,
  0.271689;0.701373;0.658985;,
  -0.032653;0.715007;0.698354;,
  -0.327929;0.667417;0.668593;,
  0.427399;0.000001;0.904063;,
  -0.026550;0.000001;0.999648;,
  -0.475517;0.000001;0.879706;,
  0.271690;-0.701372;0.658986;,
  -0.032654;-0.715007;0.698354;,
  -0.327931;-0.667417;0.668593;,
  0.422792;0.906200;0.006941;,
  -0.034928;0.999378;0.004916;,
  -0.474054;0.880490;0.003086;,
  -0.794374;-0.607425;-0.002001;,
  -0.474055;-0.880490;0.003086;,
  -0.034929;-0.999378;0.004916;,
  0.422793;-0.906200;0.006941;,
  0.683209;-0.522767;0.509843;,
  -0.794373;0.607427;-0.002001;,
  0.683208;0.522769;0.509843;,
  0.663641;-0.563792;-0.491650;,
  0.663640;0.563794;-0.491649;;
  24;
  4;0,1,4,3;,
  4;1,2,5,4;,
  4;3,4,7,6;,
  4;4,5,8,7;,
  4;18,19,10,9;,
  4;19,20,11,10;,
  4;9,10,13,12;,
  4;10,11,14,13;,
  4;12,13,16,15;,
  4;13,14,17,16;,
  4;15,16,23,24;,
  4;16,17,22,23;,
  4;21,22,17,14;,
  4;20,26,14,11;,
  4;15,24,25,12;,
  4;12,27,18,9;,
  4;6,7,19,18;,
  4;7,8,20,19;,
  4;5,26,20,8;,
  4;2,22,21,5;,
  4;23,22,2,1;,
  4;24,23,1,0;,
  4;28,24,0,28;,
  4;18,29,29,6;;
 }
 MeshTextureCoords {
  26;
  0.415484;1.108298;,
  0.098180;1.108298;,
  0.098180;0.986164;,
  0.461238;0.986164;,
  -0.233404;1.073699;,
  -0.304663;0.986164;,
  0.098180;0.864031;,
  0.415484;0.864031;,
  -0.233404;0.898630;,
  0.461238;0.846690;,
  0.137591;0.828155;,
  0.098180;0.864504;,
  0.412814;0.864504;,
  -0.288088;0.868604;,
  -0.245906;0.901728;,
  0.098180;0.986164;,
  0.461238;0.986164;,
  -0.293455;0.986164;,
  0.098180;1.107825;,
  0.412814;1.107825;,
  -0.245906;1.070601;,
  0.137591;1.144174;,
  0.461238;1.125639;,
  -0.288088;1.103724;,
  -0.369635;0.986164;,
  0.591045;0.986164;;
 }
}
