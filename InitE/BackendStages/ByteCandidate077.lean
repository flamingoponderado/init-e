import InitE.BackendStages.BytePiecesData503
import InitE.BackendStages.BytePiecesData504
import InitE.BackendStages.BytePiecesData505
import InitE.BackendStages.BytePiecesData506
import InitE.BackendStages.BytePiecesData507
import InitE.BackendStages.BytePiecesData508
import InitECandidate.Bytes077
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate077_eq : InitECandidate.bytes077 = [piece503_1, piece504_0, piece505_0, piece506_0, piece507_0, piece508_0].flatten := by
  rw [piece503_1_eq, piece504_0_eq, piece505_0_eq, piece506_0_eq, piece507_0_eq, piece508_0_eq]
  rfl
#print axioms candidate077_eq
end InitE.BackendStages.BytePieces
