import InitE.BackendStages.BytePiecesData229
import InitE.BackendStages.BytePiecesData230
import InitE.BackendStages.BytePiecesData231
import InitECandidate.Bytes019
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate019_eq : InitECandidate.bytes019 = [piece229_1, piece230_0, piece231_0].flatten := by
  rw [piece229_1_eq, piece230_0_eq, piece231_0_eq]
  rfl
#print axioms candidate019_eq
end InitE.BackendStages.BytePieces
