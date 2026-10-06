import InitE.BackendStages.BytePiecesData763
import InitE.BackendStages.BytePiecesData764
import InitE.BackendStages.BytePiecesData765
import InitECandidate.Bytes164
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate164_eq : InitECandidate.bytes164 = [piece763_1, piece764_0, piece765_0].flatten := by
  rw [piece763_1_eq, piece764_0_eq, piece765_0_eq]
  rfl
#print axioms candidate164_eq
end InitE.BackendStages.BytePieces
