import InitE.BackendStages.BytePiecesData623
import InitE.BackendStages.BytePiecesData624
import InitECandidate.Bytes109
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate109_eq : InitECandidate.bytes109 = [piece623_2, piece624_0].flatten := by
  rw [piece623_2_eq, piece624_0_eq]
  rfl
#print axioms candidate109_eq
end InitE.BackendStages.BytePieces
