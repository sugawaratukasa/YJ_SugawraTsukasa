//=============================================================================
//
// スタートロゴ [logo_start.h]
// Author : 二階堂汰一
//
//=============================================================================
#ifndef _LOGO_START_H_
#define _LOGO_START_H_

//*****************************************************************************
// ヘッダファイルのインクルード
//*****************************************************************************
#include "scene2d.h"

//*****************************************************************************
// マクロ定義
//*****************************************************************************

//*****************************************************************************
// 前方宣言
//*****************************************************************************

//*****************************************************************************
// クラス定義
//*****************************************************************************
class CStartLogo :public CScene2d
{
public:
	CStartLogo();
	~CStartLogo();
	static HRESULT TextureLoad(void);
	static void TextureUnload(void);
	static CStartLogo * Create(void);
	HRESULT Init(void);
	void Uninit(void);
	void Update(void);
	void Draw(void);
private:
	static LPDIRECT3DTEXTURE9 m_pTexture;	//テクスチャのポインタ
};
#endif