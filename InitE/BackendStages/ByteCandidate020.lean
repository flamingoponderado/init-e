import InitE.BackendStages.BytePiecesData231
import InitECandidate.Bytes020
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate020_eq : InitECandidate.bytes020 = [piece231_1].flatten := by
  rw [piece231_1_eq]
  rfl
#print axioms candidate020_eq
end InitE.BackendStages.BytePieces
