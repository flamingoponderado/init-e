import InitE.BackendStages.BytePiecesData862
import InitE.BackendStages.BytePiecesData863
import InitE.BackendStages.BytePiecesData864
import InitECandidate.Bytes209
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate209_eq : InitECandidate.bytes209 = [piece862_2, piece863_0, piece864_0].flatten := by
  rw [piece862_2_eq, piece863_0_eq, piece864_0_eq]
  rfl
#print axioms candidate209_eq
end InitE.BackendStages.BytePieces
