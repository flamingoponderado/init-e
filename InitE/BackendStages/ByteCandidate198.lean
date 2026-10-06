import InitE.BackendStages.BytePiecesData829
import InitE.BackendStages.BytePiecesData830
import InitECandidate.Bytes198
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate198_eq : InitECandidate.bytes198 = [piece829_1, piece830_0].flatten := by
  rw [piece829_1_eq, piece830_0_eq]
  rfl
#print axioms candidate198_eq
end InitE.BackendStages.BytePieces
