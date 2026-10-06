import InitE.BackendStages.BytePiecesData771
import InitE.BackendStages.BytePiecesData772
import InitE.BackendStages.BytePiecesData773
import InitE.BackendStages.BytePiecesData774
import InitECandidate.Bytes166
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate166_eq : InitECandidate.bytes166 = [piece771_1, piece772_0, piece773_0, piece774_0].flatten := by
  rw [piece771_1_eq, piece772_0_eq, piece773_0_eq, piece774_0_eq]
  rfl
#print axioms candidate166_eq
end InitE.BackendStages.BytePieces
