import InitE.BackendStages.BytePiecesData860
import InitE.BackendStages.BytePiecesData861
import InitE.BackendStages.BytePiecesData862
import InitECandidate.Bytes207
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate207_eq : InitECandidate.bytes207 = [piece860_2, piece861_0, piece862_0].flatten := by
  rw [piece860_2_eq, piece861_0_eq, piece862_0_eq]
  rfl
#print axioms candidate207_eq
end InitE.BackendStages.BytePieces
