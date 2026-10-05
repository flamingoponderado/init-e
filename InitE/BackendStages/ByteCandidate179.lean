import InitE.BackendStages.BytePiecesData799
import InitE.BackendStages.BytePiecesData800
import InitE.BackendStages.BytePiecesData801
import InitE.BackendStages.BytePiecesData802
import InitECandidate.Bytes179
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate179_eq : InitECandidate.bytes179 = [piece799_1, piece800_0, piece801_0, piece802_0].flatten := by
  rw [piece799_1_eq, piece800_0_eq, piece801_0_eq, piece802_0_eq]
  rfl
#print axioms candidate179_eq
end InitE.BackendStages.BytePieces
