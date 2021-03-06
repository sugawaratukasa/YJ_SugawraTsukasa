//******************************************************************************
// 魔法のUI [magic_ui.h]
// Author : 管原司
//******************************************************************************
#ifndef _MAGIC_UI_H_
#define _MAGIC_UI_H_
//******************************************************************************
// インクルードファイル
//******************************************************************************
#include "scene.h"
//******************************************************************************
// 前方宣言
//******************************************************************************
class C2D_Particle_Emitter;
//******************************************************************************
// クラス
//******************************************************************************
class CMagic_UI :public CScene
{
public:
	CMagic_UI(int nPriority = OBJTYPE_UI);
	~CMagic_UI();
	static CMagic_UI *Create(void);
	HRESULT Init(void);
	void Uninit(void);
	void Update(void);
	void Draw(void);
private:
	C2D_Particle_Emitter *m_p2D_Particle_Emitter;	// C2D_Particle_Emitterのポインタ
	int m_nMagicType;								// 魔法の種類
};

#endif
