import InitE.BackendStages.BytePiecesData638
import InitE.BackendStages.BytePiecesData639
import InitE.BackendStages.BytePiecesData640
import InitE.BackendStages.BytePiecesData641
import InitE.BackendStages.BytePiecesData642
import InitECandidate.Bytes116
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate116_eq : InitECandidate.bytes116 = [piece638_1, piece639_0, piece640_0, piece641_0, piece642_0].flatten := by
  rw [piece638_1_eq, piece639_0_eq, piece640_0_eq, piece641_0_eq, piece642_0_eq]
  rfl
#print axioms candidate116_eq
end InitE.BackendStages.BytePieces
