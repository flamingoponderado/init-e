import InitE.BackendStages.BytePiecesData276
import InitE.BackendStages.BytePiecesData277
import InitE.BackendStages.BytePiecesData278
import InitECandidate.Bytes038
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate038_eq : InitECandidate.bytes038 = [piece276_1, piece277_0, piece278_0].flatten := by
  rw [piece276_1_eq, piece277_0_eq, piece278_0_eq]
  rfl
#print axioms candidate038_eq
end InitE.BackendStages.BytePieces
