import InitE.BackendStages.BytePiecesData597
import InitE.BackendStages.BytePiecesData598
import InitECandidate.Bytes100
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate100_eq : InitECandidate.bytes100 = [piece597_3, piece598_0].flatten := by
  rw [piece597_3_eq, piece598_0_eq]
  rfl
#print axioms candidate100_eq
end InitE.BackendStages.BytePieces
