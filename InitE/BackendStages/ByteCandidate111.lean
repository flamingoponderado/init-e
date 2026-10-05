import InitE.BackendStages.BytePiecesData624
import InitE.BackendStages.BytePiecesData625
import InitECandidate.Bytes111
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate111_eq : InitECandidate.bytes111 = [piece624_2, piece625_0].flatten := by
  rw [piece624_2_eq, piece625_0_eq]
  rfl
#print axioms candidate111_eq
end InitE.BackendStages.BytePieces
