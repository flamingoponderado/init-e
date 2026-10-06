import InitE.BackendStages.BytePiecesData314
import InitE.BackendStages.BytePiecesData315
import InitE.BackendStages.BytePiecesData316
import InitE.BackendStages.BytePiecesData317
import InitECandidate.Bytes046
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate046_eq : InitECandidate.bytes046 = [piece314_1, piece315_0, piece316_0, piece317_0].flatten := by
  rw [piece314_1_eq, piece315_0_eq, piece316_0_eq, piece317_0_eq]
  rfl
#print axioms candidate046_eq
end InitE.BackendStages.BytePieces
