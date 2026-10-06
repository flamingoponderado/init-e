import InitE.BackendStages.BytePiecesData826
import InitE.BackendStages.BytePiecesData827
import InitE.BackendStages.BytePiecesData828
import InitE.BackendStages.BytePiecesData829
import InitECandidate.Bytes197
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate197_eq : InitECandidate.bytes197 = [piece826_1, piece827_0, piece828_0, piece829_0].flatten := by
  rw [piece826_1_eq, piece827_0_eq, piece828_0_eq, piece829_0_eq]
  rfl
#print axioms candidate197_eq
end InitE.BackendStages.BytePieces
