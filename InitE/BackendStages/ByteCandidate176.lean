import InitE.BackendStages.BytePiecesData794
import InitE.BackendStages.BytePiecesData795
import InitECandidate.Bytes176
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate176_eq : InitECandidate.bytes176 = [piece794_1, piece795_0].flatten := by
  rw [piece794_1_eq, piece795_0_eq]
  rfl
#print axioms candidate176_eq
end InitE.BackendStages.BytePieces
