import InitE.BackendStages.BytePiecesData380
import InitE.BackendStages.BytePiecesData381
import InitE.BackendStages.BytePiecesData382
import InitE.BackendStages.BytePiecesData383
import InitECandidate.Bytes057
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate057_eq : InitECandidate.bytes057 = [piece380_1, piece381_0, piece382_0, piece383_0].flatten := by
  rw [piece380_1_eq, piece381_0_eq, piece382_0_eq, piece383_0_eq]
  rfl
#print axioms candidate057_eq
end InitE.BackendStages.BytePieces
