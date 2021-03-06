//******************************************************************************
// モーションの処理 [motion.cpp]
// Author : 管原 司
//******************************************************************************

//******************************************************************************
// インクルードファイル
//******************************************************************************
#include "main.h"
#include "motion.h"
#include "scene.h"
//******************************************************************************
// コンストラクタ
//******************************************************************************
CMotion::CMotion()
{
	// モデルパーツの初期化
	for (int nCount = INIT_INT; nCount < MAX_PARTS; nCount++)
	{
		m_modelParent[nCount].m_nIndex = INIT_INT;
		m_modelParent[nCount].m_nParents = INIT_INT;
		m_modelParent[nCount].m_pos = INIT_D3DXVECTOR3;
		m_modelParent[nCount].m_posOrigin = INIT_D3DXVECTOR3;
		m_modelParent[nCount].m_rot = INIT_D3DXVECTOR3;
	}

	// モーションの初期化
	for (int nCountMotion = INIT_INT; nCountMotion < MOTION_MAX; nCountMotion++)
	{
		m_motion[nCountMotion].m_nLoop = false;
		m_motion[nCountMotion].m_nNumKey = INIT_INT;

		for (int nCountKey = INIT_INT; nCountKey < MOTION_KEYSET_MAX; nCountKey++)
		{
			m_motion[nCountMotion].m_KeyInfo[nCountKey].m_nFrame = INIT_INT;
			for (int nCountParts = INIT_INT; nCountParts < MAX_PARTS; nCountParts++)
			{
				m_motion[nCountMotion].m_KeyInfo[nCountKey].m_pos[nCountParts] = INIT_D3DXVECTOR3;
				m_motion[nCountMotion].m_KeyInfo[nCountKey].m_rot[nCountParts] = INIT_D3DXVECTOR3;
			}
		}
	}

	// モーションの状態をMOTION_IDLEに
	m_motionState = MOTION_IDLE;
	m_motionOldState = MOTION_IDLE;

	// フレーム数とキー数の初期化
	m_nFreme = INIT_INT;
	m_nCntKey = 1;

	// 
	for (int nCount = INIT_INT; nCount < MAX_PARTS; nCount++)
	{
		m_NumPos[nCount] = INIT_D3DXVECTOR3;
		m_NumRot[nCount] = INIT_D3DXVECTOR3;
		m_NumRotDest[nCount] = INIT_D3DXVECTOR3;
	}
}

//******************************************************************************
// デストラクタ
//******************************************************************************
CMotion::~CMotion()
{

}

//******************************************************************************
// モーションクラスのインスタンス生成
//******************************************************************************
CMotion * CMotion::Create()
{
	CMotion *pMotion;
	pMotion = new CMotion;

	return pMotion;
}

//******************************************************************************
// モーションクラスの終了処理
//******************************************************************************
void CMotion::Uninit(void)
{
	// モデルパーツの初期化
	for (int nCount = INIT_INT; nCount < MAX_PARTS; nCount++)
	{
		m_modelParent[nCount].m_nIndex = INIT_INT;
		m_modelParent[nCount].m_nParents = INIT_INT;
		m_modelParent[nCount].m_pos = INIT_D3DXVECTOR3;
		m_modelParent[nCount].m_posOrigin = INIT_D3DXVECTOR3;
		m_modelParent[nCount].m_rot = INIT_D3DXVECTOR3;
	}

	// モーションの初期化
	for (int nCountMotion = INIT_INT; nCountMotion < MOTION_MAX; nCountMotion++)
	{
		m_motion[nCountMotion].m_nLoop = false;
		m_motion[nCountMotion].m_nNumKey = INIT_INT;

		for (int nCountKey = INIT_INT; nCountKey < MOTION_KEYSET_MAX; nCountKey++)
		{
			m_motion[nCountMotion].m_KeyInfo[nCountKey].m_nFrame = INIT_INT;
			for (int nCountParts = INIT_INT; nCountParts < MAX_PARTS; nCountParts++)
			{
				m_motion[nCountMotion].m_KeyInfo[nCountKey].m_pos[nCountParts] = INIT_D3DXVECTOR3;
				m_motion[nCountMotion].m_KeyInfo[nCountKey].m_rot[nCountParts] = INIT_D3DXVECTOR3;
			}
		}
	}

	// モーションの状態をMOTION_IDLEに
	m_motionState = MOTION_IDLE;
	m_motionOldState = MOTION_IDLE;

	// フレーム数とキー数の初期化
	m_nFreme = INIT_INT;
	m_nCntKey = 1;

	// 
	for (int nCount = INIT_INT; nCount < MAX_PARTS; nCount++)
	{
		m_NumPos[nCount] = INIT_D3DXVECTOR3;
		m_NumRot[nCount] = INIT_D3DXVECTOR3;
		m_NumRotDest[nCount] = INIT_D3DXVECTOR3;
	}
}

//******************************************************************************
// モーションクラスのモーションの読み込み
//******************************************************************************
void CMotion::LoadMotion(const char *cText)
{
	// ファイルポイント
	FILE *pFile;

	// 変数宣言
	int  nCntLoad = INIT_INT;		// 読み込んだカウント
	int	 nCntKey = INIT_INT;		// キーの数のカウント
	int	 nCntMotion = INIT_INT;		// モーションの数のカウント
	char cReedText[NUM_TEXT];		// 文字として読み取り用
	char cHeadText[NUM_TEXT];		// 文字の判別用
	char cDie[NUM_TEXT];			// 使わない文字

								// ファイルを開く
	pFile = fopen(cText, "r");

	// 開けたたら
	if (pFile != NULL)
	{
		// SCRIPTの文字が見つかるまで
		while (strcmp(cHeadText, "SCRIPT") != INIT_INT)
		{
			// テキストからcReedText分文字を読み込む
			fgets(cReedText, sizeof(cReedText), pFile);
			// 読み込んだ文字ををcHeadTextに格納
			sscanf(cReedText, "%s", &cHeadText);
		}

		// cHeadTextがSCRIPTだったら
		if (strcmp(cHeadText, "SCRIPT") == INIT_INT)
		{
			// END_SCRIPTの文字が見つかるまで
			while (strcmp(cHeadText, "END_SCRIPT") != INIT_INT)
			{
				// テキストからcReedText分文字を読み込む
				fgets(cReedText, sizeof(cReedText), pFile);
				// 読み込んだ文字ををcHeadTextに格納
				sscanf(cReedText, "%s", &cHeadText);

				// cHeadTextがMOTIONSETだったら
				if (strcmp(cHeadText, "MOTIONSET") == INIT_INT)
				{
					// END_MOTIONSETの文字が見つかるまで
					while (strcmp(cHeadText, "END_MOTIONSET") != INIT_INT)
					{
						// テキストからcReedText分文字を読み込む
						fgets(cReedText, sizeof(cReedText), pFile);
						// 読み込んだ文字ををcHeadTextに格納
						sscanf(cReedText, "%s", &cHeadText);

						// cHeadTextがMOTIONSETだったら
						if (strcmp(cHeadText, "LOOP") == INIT_INT)
						{
							// m_nLoopにループをするか格納
							sscanf(cReedText, "%s %s %d", &cDie, &cDie, (int*)&m_motion[nCntMotion].m_nLoop);
						}

						// cHeadTextがNUM_KEYだったら
						if (strcmp(cHeadText, "NUM_KEY") == INIT_INT)
						{
							// m_nNumKeyにキーの数を格納
							sscanf(cReedText, "%s %s %d", &cDie, &cDie, &m_motion[nCntMotion].m_nNumKey);
						}

						// cHeadTextがKEYSETだったら
						if (strcmp(cHeadText, "KEYSET") == INIT_INT)
						{
							// END_KEYSETの文字が見つかるまで
							while (strcmp(cHeadText, "END_KEYSET") != INIT_INT)
							{
								// テキストからcReedText分文字を読み込む
								fgets(cReedText, sizeof(cReedText), pFile);
								// 読み込んだ文字ををcHeadTextに格納
								sscanf(cReedText, "%s", &cHeadText);

								// cHeadTextがFRAMEだったら
								if (strcmp(cHeadText, "FRAME") == INIT_INT)
								{
									// m_nFrameにフレーム数を格納
									sscanf(cReedText, "%s %s %d", &cDie, &cDie, &m_motion[nCntMotion].m_KeyInfo[nCntKey].m_nFrame);
								}
								// cHeadTextがKEYだったら
								if (strcmp(cHeadText, "KEY") == INIT_INT)
								{
									// END_KEYの文字が見つかるまで
									while (strcmp(cHeadText, "END_KEY") != INIT_INT)
									{
										// テキストからcReedText分文字を読み込む
										fgets(cReedText, sizeof(cReedText), pFile);
										// 読み込んだ文字ををcHeadTextに格納
										sscanf(cReedText, "%s", &cHeadText);

										// cHeadTextがPOSだったら
										if (strcmp(cHeadText, "POS") == INIT_INT)
										{
											// m_posに座標を格納
											sscanf(cReedText, "%s %s %f %f %f", &cDie, &cDie,
												&m_motion[nCntMotion].m_KeyInfo[nCntKey].m_pos[nCntLoad].x,
												&m_motion[nCntMotion].m_KeyInfo[nCntKey].m_pos[nCntLoad].y,
												&m_motion[nCntMotion].m_KeyInfo[nCntKey].m_pos[nCntLoad].z);
										}
										// cHeadTextがROTだったら
										if (strcmp(cHeadText, "ROT") == INIT_INT)
										{
											// m_rotに回転を格納
											sscanf(cReedText, "%s %s %f %f %f", &cDie, &cDie,
												&m_motion[nCntMotion].m_KeyInfo[nCntKey].m_rot[nCntLoad].x,
												&m_motion[nCntMotion].m_KeyInfo[nCntKey].m_rot[nCntLoad].y,
												&m_motion[nCntMotion].m_KeyInfo[nCntKey].m_rot[nCntLoad].z);
										}
									}
									// カウントの加算
									nCntLoad++;
								}
							}
							// 読み込んだカウントの初期化
							nCntLoad = INIT_INT;
							// カウントの加算
							nCntKey++;
						}
					}
					// キーの数の初期化
					nCntKey = INIT_INT;
					// カウントの加算
					nCntMotion++;
				}
			}
			// ファイルを閉じる
			fclose(pFile);
		}
		// 開けなかったら
		else
		{
			printf("開けれませんでした\n");
		}
	}
}

//******************************************************************************
// モーションクラスの初期値の読み込み
//******************************************************************************
void CMotion::Load(const char *cText)
{
	// ファイルポイント
	FILE *pFile;

	// 変数宣言
	int  nCntLoad = INIT_INT;	 // 読み込んだカウント
	char cReedText[NUM_TEXT]; // 文字として読み取り用
	char cHeadText[NUM_TEXT]; // 文字の判別用
	char cDie[NUM_TEXT];		 // 使わない文字

								 // ファイルを開く
	pFile = fopen(cText, "r");

	// 開けたら
	if (pFile != NULL)
	{
		// CHARACTERSETの文字が見つかるまで
		while (strcmp(cHeadText, "CHARACTERSET") != INIT_INT)
		{
			// テキストからcReedText分文字を受け取る
			fgets(cReedText, sizeof(cReedText), pFile);
			// cReedTextをcHeadTextに格納
			sscanf(cReedText, "%s", &cHeadText);
		}

		// cHeadTextがCHARACTERSETの時
		if (strcmp(cHeadText, "CHARACTERSET") == INIT_INT)
		{
			// cHeadTextがEND_CHARACTERSETになるまで
			while (strcmp(cHeadText, "END_CHARACTERSET") != INIT_INT)
			{
				// テキストからcReedText分文字を受け取る
				fgets(cReedText, sizeof(cReedText), pFile);
				// cReedTextをcHeadTextに格納
				sscanf(cReedText, "%s", &cHeadText);

				// cHeadTextが改行の時
				if (strcmp(cHeadText, "\n") == INIT_INT)
				{
				}
				// cHeadTextがPARTSSETの時
				else if (strcmp(cHeadText, "PARTSSET") == INIT_INT)
				{
					// cHeadTextがEND_PARTSSETになるまで
					while (strcmp(cHeadText, "END_PARTSSET") != INIT_INT)
					{
						// テキストからcReedText分文字を受け取る
						fgets(cReedText, sizeof(cReedText), pFile);
						// cReedTextをcHeadTextに格納
						sscanf(cReedText, "%s", &cHeadText);

						// cHeadTextがINDEXになるまで
						if (strcmp(cHeadText, "INDEX") == INIT_INT)
						{
							// テキストのINDEXの値をm_nIndexに格納
							sscanf(cReedText, "%s %s %d", &cDie, &cDie, &m_modelParent[nCntLoad].m_nIndex);
						}

						// cHeadTextがPARENTになるまで
						if (strcmp(cHeadText, "PARENT") == INIT_INT)
						{
							// テキストのPARENTの値をm_nParentsに格納
							sscanf(cReedText, "%s %s %d", &cDie, &cDie, &m_modelParent[nCntLoad].m_nParents);
						}

						// cHeadTextがPOSになるまで
						if (strcmp(cHeadText, "POS") == INIT_INT)
						{
							// テキストのPOSの値をm_posOriginに格納
							sscanf(cReedText, "%s %s %f %f %f", &cDie, &cDie,
								&m_modelParent[nCntLoad].m_posOrigin.x,
								&m_modelParent[nCntLoad].m_posOrigin.y,
								&m_modelParent[nCntLoad].m_posOrigin.z);

							// m_posOriginの値をm_posに代入
							m_modelParent[nCntLoad].m_pos = m_modelParent[nCntLoad].m_posOrigin;
						}

						// cHeadTextがROTになるまで
						if (strcmp(cHeadText, "ROT") == INIT_INT)
						{
							// テキストのROTの値をm_rotに格納
							sscanf(cReedText, "%s %s %f %f %f", &cDie, &cDie,
								&m_modelParent[nCntLoad].m_rot.x,
								&m_modelParent[nCntLoad].m_rot.y,
								&m_modelParent[nCntLoad].m_rot.z);
						}
					}
					// カウント加算
					nCntLoad++;
				}
			}
		}
		// ファイルを閉じる
		fclose(pFile);
	}

	// 開けなかったら
	else
	{
		printf("開けれませんでした\n");
	}
}

//******************************************************************************
// モーションクラスの更新処理
//******************************************************************************
void CMotion::UpdateMotion(void)
{
	// モーションが1F前のモーションと違ったら
	if (m_motionOldState != m_motionState) {
		m_nFreme = INIT_INT;
		m_nCntKey = INIT_INT;
	}
	for (int nCntMotion = INIT_INT; nCntMotion < MAX_PARTS; nCntMotion++)
	{
		//フレーム開始時に、変更後の回転の値や位置の値などを設定
		if (m_nFreme == INIT_INT)
		{
			m_NumPos[nCntMotion] = ((m_motion[m_motionState].m_KeyInfo[m_nCntKey].m_pos[nCntMotion] -
				(m_modelParent[nCntMotion].m_pos - m_modelParent[nCntMotion].m_posOrigin))
				/ float(m_motion[m_motionState].m_KeyInfo[m_nCntKey].m_nFrame));

			m_NumRotDest[nCntMotion] =
				m_motion[m_motionState].m_KeyInfo[m_nCntKey].m_rot[nCntMotion] - m_modelParent[nCntMotion].m_rot;

			m_NumRot[nCntMotion] = (m_NumRotDest[nCntMotion] / float(m_motion[m_motionState].m_KeyInfo[m_nCntKey].m_nFrame));
		}

		// 変更後の回転の値や位置の値を加算
		m_modelParent[nCntMotion].m_pos += m_NumPos[nCntMotion];
		m_modelParent[nCntMotion].m_rot += m_NumRot[nCntMotion];

		if (m_modelParent[nCntMotion].m_rot.x > D3DX_PI)
		{
			m_modelParent[nCntMotion].m_rot.x *= -1.0f;
		}
		if (m_modelParent[nCntMotion].m_rot.x < -D3DX_PI)
		{
			m_modelParent[nCntMotion].m_rot.x *= -1.0f;
		}

		if (m_modelParent[nCntMotion].m_rot.y > D3DX_PI)
		{
			m_modelParent[nCntMotion].m_rot.y *= -1.0f;
		}
		if (m_modelParent[nCntMotion].m_rot.y < -D3DX_PI)
		{
			m_modelParent[nCntMotion].m_rot.y *= -1.0f;
		}

		if (m_modelParent[nCntMotion].m_rot.x > D3DX_PI)
		{
			m_modelParent[nCntMotion].m_rot.x *= -1.0f;
		}
		if (m_modelParent[nCntMotion].m_rot.x < -D3DX_PI)
		{
			m_modelParent[nCntMotion].m_rot.x *= -1.0f;
		}
	}

	// 現在のモーションの記録
	m_motionOldState = m_motionState;

	// ループするとき
	if (m_nFreme >= m_motion[m_motionState].m_KeyInfo[m_nCntKey].m_nFrame && m_motion[m_motionState].m_nLoop == 1)
	{
		m_nFreme = INIT_INT;
		m_nCntKey++;

		// キーが記録されているキーより大きくなったら
		if (m_nCntKey >= m_motion[m_motionState].m_nNumKey)
		{
			m_nCntKey = INIT_INT;
		}

	}
	// ループしないとき
	else if (m_nFreme >= m_motion[m_motionState].m_KeyInfo[m_nCntKey].m_nFrame && m_motion[m_motionState].m_nLoop == 0)
	{
		m_nFreme = INIT_INT;
		m_nCntKey++;

		// キーが記録されているキーより大きくなったら
		if (m_nCntKey >= m_motion[m_motionState].m_nNumKey)
		{
			for (int nCntMotion = INIT_INT; nCntMotion < MAX_PARTS; nCntMotion++)
			{
				m_NumPos[nCntMotion] = INIT_D3DXVECTOR3;
				m_NumRot[nCntMotion] = INIT_D3DXVECTOR3;
			}
			m_nCntKey = m_motion[m_motionState].m_nNumKey;
			m_motionState = MOTION_IDLE;
		}
	}
	else
	{
		m_nFreme++;
	}
}

//******************************************************************************
// モーションクラスのどのモーションを再生するかのセット
//******************************************************************************
void CMotion::SetMotion(MOTIONSTATE motionstate)
{
	m_motionState = motionstate;
}

//******************************************************************************
// モーションクラスのどのモーションを再生しているかを取得
//******************************************************************************
CMotion::MOTIONSTATE CMotion::GetMotion(void)
{
	return m_motionState;
}