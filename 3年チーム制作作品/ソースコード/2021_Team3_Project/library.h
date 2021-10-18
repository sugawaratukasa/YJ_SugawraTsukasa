#ifndef _LIBRARY_H_
#define _LIBRARY_H_
//=============================================================================
//
// ライブラリ処理 [library.h]
// Author : Konishi Yuuto
//
//=============================================================================

//=============================================================================
// インクルードファイル
//=============================================================================
#include "main.h"

//=============================================================================
// 当たり判定クラス
//=============================================================================
class CLibrary
{
public:
	static string split(string str, char del, int nNum);		// 文字列を分割し、取り出す関数

private:
};

#endif