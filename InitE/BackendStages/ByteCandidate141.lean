import InitE.BackendStages.BytePiecesData700
import InitE.BackendStages.BytePiecesData701
import InitECandidate.Bytes141
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate141_eq : InitECandidate.bytes141 = [piece700_1, piece701_0].flatten := by
  rw [piece700_1_eq, piece701_0_eq]
  rfl
#print axioms candidate141_eq
end InitE.BackendStages.BytePieces
