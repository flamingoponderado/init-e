import InitE.BackendStages.BytePiecesData344
import InitE.BackendStages.BytePiecesData345
import InitE.BackendStages.BytePiecesData346
import InitE.BackendStages.BytePiecesData347
import InitECandidate.Bytes052
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate052_eq : InitECandidate.bytes052 = [piece344_1, piece345_0, piece346_0, piece347_0].flatten := by
  rw [piece344_1_eq, piece345_0_eq, piece346_0_eq, piece347_0_eq]
  rfl
#print axioms candidate052_eq
end InitE.BackendStages.BytePieces
