import InitE.BackendStages.BytePiecesData774
import InitE.BackendStages.BytePiecesData775
import InitE.BackendStages.BytePiecesData776
import InitECandidate.Bytes167
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate167_eq : InitECandidate.bytes167 = [piece774_1, piece775_0, piece776_0].flatten := by
  rw [piece774_1_eq, piece775_0_eq, piece776_0_eq]
  rfl
#print axioms candidate167_eq
end InitE.BackendStages.BytePieces
