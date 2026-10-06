import InitE.BackendStages.BytePiecesData860
import InitECandidate.Bytes206
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate206_eq : InitECandidate.bytes206 = [piece860_1].flatten := by
  rw [piece860_1_eq]
  rfl
#print axioms candidate206_eq
end InitE.BackendStages.BytePieces
