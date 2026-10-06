import InitE.BackendStages.BytePiecesData461
import InitE.BackendStages.BytePiecesData462
import InitECandidate.Bytes072
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate072_eq : InitECandidate.bytes072 = [piece461_3, piece462_0].flatten := by
  rw [piece461_3_eq, piece462_0_eq]
  rfl
#print axioms candidate072_eq
end InitE.BackendStages.BytePieces
