import InitE.BackendStages.BytePiecesData795
import InitE.BackendStages.BytePiecesData796
import InitECandidate.Bytes177
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate177_eq : InitECandidate.bytes177 = [piece795_1, piece796_0].flatten := by
  rw [piece795_1_eq, piece796_0_eq]
  rfl
#print axioms candidate177_eq
end InitE.BackendStages.BytePieces
