import InitE.BackendStages.BytePiecesData269
import InitE.BackendStages.BytePiecesData270
import InitE.BackendStages.BytePiecesData271
import InitE.BackendStages.BytePiecesData272
import InitE.BackendStages.BytePiecesData273
import InitE.BackendStages.BytePiecesData274
import InitE.BackendStages.BytePiecesData275
import InitE.BackendStages.BytePiecesData276
import InitECandidate.Bytes037
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate037_eq : InitECandidate.bytes037 = [piece269_1, piece270_0, piece271_0, piece272_0, piece273_0, piece274_0, piece275_0, piece276_0].flatten := by
  rw [piece269_1_eq, piece270_0_eq, piece271_0_eq, piece272_0_eq, piece273_0_eq, piece274_0_eq, piece275_0_eq, piece276_0_eq]
  rfl
#print axioms candidate037_eq
end InitE.BackendStages.BytePieces
