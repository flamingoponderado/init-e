import InitE.BackendStages.BytePiecesData776
import InitE.BackendStages.BytePiecesData777
import InitE.BackendStages.BytePiecesData778
import InitE.BackendStages.BytePiecesData779
import InitE.BackendStages.BytePiecesData780
import InitE.BackendStages.BytePiecesData781
import InitE.BackendStages.BytePiecesData782
import InitECandidate.Bytes168
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate168_eq : InitECandidate.bytes168 = [piece776_1, piece777_0, piece778_0, piece779_0, piece780_0, piece781_0, piece782_0].flatten := by
  rw [piece776_1_eq, piece777_0_eq, piece778_0_eq, piece779_0_eq, piece780_0_eq, piece781_0_eq, piece782_0_eq]
  rfl
#print axioms candidate168_eq
end InitE.BackendStages.BytePieces
