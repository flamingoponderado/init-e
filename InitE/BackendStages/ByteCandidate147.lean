import InitE.BackendStages.BytePiecesData709
import InitECandidate.Bytes147
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate147_eq : InitECandidate.bytes147 = [piece709_1].flatten := by
  rw [piece709_1_eq]
  rfl
#print axioms candidate147_eq
end InitE.BackendStages.BytePieces
