import InitE.BackendStages.BytePiecesData703
import InitE.BackendStages.BytePiecesData704
import InitE.BackendStages.BytePiecesData705
import InitECandidate.Bytes144
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate144_eq : InitECandidate.bytes144 = [piece703_1, piece704_0, piece705_0].flatten := by
  rw [piece703_1_eq, piece704_0_eq, piece705_0_eq]
  rfl
#print axioms candidate144_eq
end InitE.BackendStages.BytePieces
