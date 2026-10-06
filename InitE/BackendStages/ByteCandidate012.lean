import InitE.BackendStages.BytePiecesData182
import InitE.BackendStages.BytePiecesData183
import InitE.BackendStages.BytePiecesData184
import InitECandidate.Bytes012
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate012_eq : InitECandidate.bytes012 = [piece182_1, piece183_0, piece184_0].flatten := by
  rw [piece182_1_eq, piece183_0_eq, piece184_0_eq]
  rfl
#print axioms candidate012_eq
end InitE.BackendStages.BytePieces
