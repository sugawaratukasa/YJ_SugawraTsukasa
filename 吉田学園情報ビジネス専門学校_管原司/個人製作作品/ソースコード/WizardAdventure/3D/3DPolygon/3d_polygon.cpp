//******************************************************************************
// 3Dポリゴン[3d_polygon.cpp]
// Author : 管原司
//******************************************************************************
//******************************************************************************
// インクルードファイル
//******************************************************************************
#include "main.h"
#include "renderer.h"
#include "manager.h"
#include "game.h"
#include "camera.h"
#include "3d_polygon.h"
//******************************************************************************
// マクロ定義
//******************************************************************************
#define SKY_TEX		("data/Texture/bg001.png")			// テクスチャパス
#define CLOUD_TEX	("data/Texture/bg002.png")			// テクスチャパス
#define ROT			(D3DXVECTOR3(0.0f,0.0f,0.0f))		// 向き
#define COL			(D3DXCOLOR(1.0f,1.0f,1.0f,1.0f))	// 色
//******************************************************************************
// 静的メンバ変数初期化
//******************************************************************************
LPDIRECT3DTEXTURE9 C3D_Polygon::m_pTexture[TEX_TYPE_MAX] = {};
//******************************************************************************
// コンストラクタ
//******************************************************************************
C3D_Polygon::C3D_Polygon(int nPriority) : CScene3d(nPriority)
{
	m_Textype	= TEX_TYPE_NONE;
	m_bDraw		= true;
}
//******************************************************************************
// デストラクタ
//******************************************************************************
C3D_Polygon::~C3D_Polygon()
{
}
//******************************************************************************
// テクスチャ読み込み
//******************************************************************************
HRESULT C3D_Polygon::Load(void)
{
	// レンダラー取得
	LPDIRECT3DDEVICE9 pDevice = CManager::GetRenderer()->GetDevice();

	// テクスチャ読み込み
	D3DXCreateTextureFromFile(pDevice, SKY_TEX, &m_pTexture[TEX_TYPE_SKY]);
	D3DXCreateTextureFromFile(pDevice, CLOUD_TEX, &m_pTexture[TEX_TYPE_CLOUD]);

	return S_OK;
}
//******************************************************************************
// テクスチャ破棄
//******************************************************************************
void C3D_Polygon::Unload(void)
{
	// 最大数分回す
	for (int nCnt = INIT_INT; nCnt < TEX_TYPE_MAX; nCnt++)
	{
		// NULLチェック
		if (m_pTexture != NULL)
		{
			// 破棄
			m_pTexture[nCnt]->Release();

			// NULL
			m_pTexture[nCnt] = NULL;
		}
	}
}
//******************************************************************************
// 初期化関数
//******************************************************************************
HRESULT C3D_Polygon::Init(void)
{
	// 初期化
	CScene3d::Init();

	return S_OK;
}
//******************************************************************************
// 終了関数
//******************************************************************************
void C3D_Polygon::Uninit(void)
{
	// 終了
	CScene3d::Uninit();
}
//******************************************************************************
// 更新関数
//******************************************************************************
void C3D_Polygon::Update(void)
{
	// 更新
	CScene3d::Update();
}
//******************************************************************************
// 描画関数
//******************************************************************************
void C3D_Polygon::Draw(void)
{
	// trueの場合
	if (m_bDraw == true)
	{
		// 描画
		CScene3d::Draw();
	}
}
//******************************************************************************
// 情報設定
//******************************************************************************
void C3D_Polygon::SetPolygon(D3DXVECTOR3 pos, D3DXVECTOR3 size, TEX_TYPE textype)
{
	// 位置設定
	SetPosition(pos);

	// 向き設定
	SetRotation(ROT);

	// サイズ設定
	SetSize(size);

	// 色
	SetColor(COL);

	// 代入
	m_Textype = textype;

	// テクスチャ受け渡し
	BindTexture(m_pTexture[m_Textype]);
}