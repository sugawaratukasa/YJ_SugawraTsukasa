//******************************************************************************
// 石の箱 [stone_block.cpp]
// Author : 管原　司
//******************************************************************************
//******************************************************************************
// インクルードファイル
//******************************************************************************
#include "stone_block.h"
//******************************************************************************
// コンストラクタ
//******************************************************************************
CStone_Block::CStone_Block(int nPriority) :CBlock(nPriority)
{
}
//******************************************************************************
// デストラクタ
//******************************************************************************
CStone_Block::~CStone_Block()
{
}
//******************************************************************************
// 生成関数
//******************************************************************************
CStone_Block * CStone_Block::Create(D3DXVECTOR3 pos, D3DXVECTOR3 rot, D3DXVECTOR3 size)
{
	// ポインタ
	CStone_Block *pStone_Block;

	// メモリ確保
	pStone_Block = new CStone_Block;

	// 情報設定
	pStone_Block->SetBlock(pos, rot, size, C3D_Obj::TYPE_STONE_BLOCK, pStone_Block);

	// 初期化
	pStone_Block->Init();

	// ポインタを返す
	return pStone_Block;
}
//******************************************************************************
// 初期化関数
//******************************************************************************
HRESULT CStone_Block::Init(void)
{
	// 初期化
	CBlock::Init();
	return S_OK;
}
//******************************************************************************
// 終了関数
//******************************************************************************
void CStone_Block::Uninit(void)
{
	// 終了
	CBlock::Uninit();
}
//******************************************************************************
// 更新関数
//******************************************************************************
void CStone_Block::Update(void)
{
	// 更新
	CBlock::Update();
}
//******************************************************************************
// 描画関数
//******************************************************************************
void CStone_Block::Draw(void)
{
	// 描画
	CBlock::Draw();
}
