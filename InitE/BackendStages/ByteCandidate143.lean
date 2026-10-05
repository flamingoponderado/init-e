import InitE.BackendStages.BytePiecesData702
import InitE.BackendStages.BytePiecesData703
import InitECandidate.Bytes143
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate143_eq : InitECandidate.bytes143 = [piece702_1, piece703_0].flatten := by
  rw [piece702_1_eq, piece703_0_eq]
  rfl
#print axioms candidate143_eq
end InitE.BackendStages.BytePieces
