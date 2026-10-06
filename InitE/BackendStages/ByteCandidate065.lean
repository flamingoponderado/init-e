import InitE.BackendStages.BytePiecesData435
import InitE.BackendStages.BytePiecesData436
import InitE.BackendStages.BytePiecesData437
import InitE.BackendStages.BytePiecesData438
import InitE.BackendStages.BytePiecesData439
import InitE.BackendStages.BytePiecesData440
import InitE.BackendStages.BytePiecesData441
import InitECandidate.Bytes065
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate065_eq : InitECandidate.bytes065 = [piece435_1, piece436_0, piece437_0, piece438_0, piece439_0, piece440_0, piece441_0].flatten := by
  rw [piece435_1_eq, piece436_0_eq, piece437_0_eq, piece438_0_eq, piece439_0_eq, piece440_0_eq, piece441_0_eq]
  rfl
#print axioms candidate065_eq
end InitE.BackendStages.BytePieces
