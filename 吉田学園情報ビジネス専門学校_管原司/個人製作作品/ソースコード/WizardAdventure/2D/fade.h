//******************************************************************************
// フェード [fade.h]
// Author : 管原　司
//******************************************************************************
#ifndef _FADE_H_
#define _FADE_H_
//******************************************************************************
// インクルードファイル
//******************************************************************************
#include "scene2d.h"
//******************************************************************************
// マクロ定義
//******************************************************************************
//******************************************************************************
// 前方宣言
//******************************************************************************
class CManager;
//******************************************************************************
// クラス
//******************************************************************************
class CFade : public CScene2D
{
public:
	// フェード列挙型
	typedef enum
	{
		FADE_NONE = -1,
		FADE_IN,
		FADE_OUT,
		FADE_MAX
	}FADE;

	CFade(int nPriority = CScene::OBJTYPE_FADE);
	~CFade();
	static CFade * Create(CManager::MODE mode);
	HRESULT Init(void);
	void Uninit(void);
	void Update(void);
	void Draw(void);
private:
	FADE m_fade;						// フェード
	CManager::MODE m_ModeNext;			// モード
};
#endif