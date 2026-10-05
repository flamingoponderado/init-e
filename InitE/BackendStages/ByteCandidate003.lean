import InitE.BackendStages.BytePiecesData115
import InitE.BackendStages.BytePiecesData116
import InitE.BackendStages.BytePiecesData117
import InitE.BackendStages.BytePiecesData118
import InitE.BackendStages.BytePiecesData119
import InitE.BackendStages.BytePiecesData120
import InitE.BackendStages.BytePiecesData121
import InitECandidate.Bytes003
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate003_eq : InitECandidate.bytes003 = [piece115_1, piece116_0, piece117_0, piece118_0, piece119_0, piece120_0, piece121_0].flatten := by
  rw [piece115_1_eq, piece116_0_eq, piece117_0_eq, piece118_0_eq, piece119_0_eq, piece120_0_eq, piece121_0_eq]
  rfl
#print axioms candidate003_eq
end InitE.BackendStages.BytePieces
