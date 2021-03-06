//=============================================================================
//
// オーバーロゴ [logo_over.h]
// Author : 二階堂汰一
//
//=============================================================================
#ifndef _LOGO_OVER_H_
#define _LOGO_OVER_H_

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
class COverLogo :public CScene2d
{
public:
	COverLogo();
	~COverLogo();
	static HRESULT TextureLoad(void);
	static void TextureUnload(void);
	static COverLogo * Create(void);
	HRESULT Init(void);
	void Uninit(void);
	void Update(void);
	void Draw(void);
private:
	static LPDIRECT3DTEXTURE9 m_pTexture;	//テクスチャのポインタ
	int m_nTime;	//時間
};
#endif