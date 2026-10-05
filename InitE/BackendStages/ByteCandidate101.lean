import InitE.BackendStages.BytePiecesData598
import InitE.BackendStages.BytePiecesData599
import InitE.BackendStages.BytePiecesData600
import InitE.BackendStages.BytePiecesData601
import InitE.BackendStages.BytePiecesData602
import InitE.BackendStages.BytePiecesData603
import InitECandidate.Bytes101
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem candidate101_eq : InitECandidate.bytes101 = [piece598_1, piece599_0, piece600_0, piece601_0, piece602_0, piece603_0].flatten := by
  rw [piece598_1_eq, piece599_0_eq, piece600_0_eq, piece601_0_eq, piece602_0_eq, piece603_0_eq]
  rfl
#print axioms candidate101_eq
end InitE.BackendStages.BytePieces
