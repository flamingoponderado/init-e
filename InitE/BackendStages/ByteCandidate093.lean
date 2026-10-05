import InitE.BackendStages.BytePiecesData586
import InitE.BackendStages.BytePiecesData587
import InitE.BackendStages.BytePiecesData588
import InitECandidate.Bytes093
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate093_eq : InitECandidate.bytes093 = [piece586_1, piece587_0, piece588_0].flatten := by
  rw [piece586_1_eq, piece587_0_eq, piece588_0_eq]
  rfl
#print axioms candidate093_eq
end InitE.BackendStages.BytePieces
