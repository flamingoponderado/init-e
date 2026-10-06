import InitE.BackendStages.BytePiecesData652
import InitE.BackendStages.BytePiecesData653
import InitECandidate.Bytes124
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate124_eq : InitECandidate.bytes124 = [piece652_2, piece653_0].flatten := by
  rw [piece652_2_eq, piece653_0_eq]
  rfl
#print axioms candidate124_eq
end InitE.BackendStages.BytePieces
