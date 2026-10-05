import InitE.BackendStages.BytePiecesData691
import InitE.BackendStages.BytePiecesData692
import InitECandidate.Bytes134
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate134_eq : InitECandidate.bytes134 = [piece691_2, piece692_0].flatten := by
  rw [piece691_2_eq, piece692_0_eq]
  rfl
#print axioms candidate134_eq
end InitE.BackendStages.BytePieces
