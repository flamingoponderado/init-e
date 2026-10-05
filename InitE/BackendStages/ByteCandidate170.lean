import InitE.BackendStages.BytePiecesData782
import InitE.BackendStages.BytePiecesData783
import InitECandidate.Bytes170
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate170_eq : InitECandidate.bytes170 = [piece782_2, piece783_0].flatten := by
  rw [piece782_2_eq, piece783_0_eq]
  rfl
#print axioms candidate170_eq
end InitE.BackendStages.BytePieces
