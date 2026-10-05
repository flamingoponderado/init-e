import InitE.BackendStages.BytePiecesData590
import InitE.BackendStages.BytePiecesData591
import InitE.BackendStages.BytePiecesData592
import InitE.BackendStages.BytePiecesData593
import InitECandidate.Bytes095
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate095_eq : InitECandidate.bytes095 = [piece590_1, piece591_0, piece592_0, piece593_0].flatten := by
  rw [piece590_1_eq, piece591_0_eq, piece592_0_eq, piece593_0_eq]
  rfl
#print axioms candidate095_eq
end InitE.BackendStages.BytePieces
