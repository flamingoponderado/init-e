import InitE.BackendStages.BytePiecesData536
import InitE.BackendStages.BytePiecesData537
import InitE.BackendStages.BytePiecesData538
import InitE.BackendStages.BytePiecesData539
import InitECandidate.Bytes083
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate083_eq : InitECandidate.bytes083 = [piece536_1, piece537_0, piece538_0, piece539_0].flatten := by
  rw [piece536_1_eq, piece537_0_eq, piece538_0_eq, piece539_0_eq]
  rfl
#print axioms candidate083_eq
end InitE.BackendStages.BytePieces
