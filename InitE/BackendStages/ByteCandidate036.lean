import InitE.BackendStages.BytePiecesData266
import InitE.BackendStages.BytePiecesData267
import InitE.BackendStages.BytePiecesData268
import InitE.BackendStages.BytePiecesData269
import InitECandidate.Bytes036
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate036_eq : InitECandidate.bytes036 = [piece266_1, piece267_0, piece268_0, piece269_0].flatten := by
  rw [piece266_1_eq, piece267_0_eq, piece268_0_eq, piece269_0_eq]
  rfl
#print axioms candidate036_eq
end InitE.BackendStages.BytePieces
