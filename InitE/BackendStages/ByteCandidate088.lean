import InitE.BackendStages.BytePiecesData559
import InitE.BackendStages.BytePiecesData560
import InitE.BackendStages.BytePiecesData561
import InitE.BackendStages.BytePiecesData562
import InitE.BackendStages.BytePiecesData563
import InitECandidate.Bytes088
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate088_eq : InitECandidate.bytes088 = [piece559_1, piece560_0, piece561_0, piece562_0, piece563_0].flatten := by
  rw [piece559_1_eq, piece560_0_eq, piece561_0_eq, piece562_0_eq, piece563_0_eq]
  rfl
#print axioms candidate088_eq
end InitE.BackendStages.BytePieces
