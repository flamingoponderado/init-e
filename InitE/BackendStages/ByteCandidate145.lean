import InitE.BackendStages.BytePiecesData705
import InitE.BackendStages.BytePiecesData706
import InitECandidate.Bytes145
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate145_eq : InitECandidate.bytes145 = [piece705_1, piece706_0].flatten := by
  rw [piece705_1_eq, piece706_0_eq]
  rfl
#print axioms candidate145_eq
end InitE.BackendStages.BytePieces
