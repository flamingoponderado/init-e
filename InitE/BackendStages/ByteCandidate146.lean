import InitE.BackendStages.BytePiecesData706
import InitE.BackendStages.BytePiecesData707
import InitE.BackendStages.BytePiecesData708
import InitE.BackendStages.BytePiecesData709
import InitECandidate.Bytes146
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate146_eq : InitECandidate.bytes146 = [piece706_1, piece707_0, piece708_0, piece709_0].flatten := by
  rw [piece706_1_eq, piece707_0_eq, piece708_0_eq, piece709_0_eq]
  rfl
#print axioms candidate146_eq
end InitE.BackendStages.BytePieces
