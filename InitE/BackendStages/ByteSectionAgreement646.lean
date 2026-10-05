import InitE.BackendStages.BytesData646
import InitE.BackendStages.BytePiecesData646
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section646_eq : ByteData.bytes646 = [piece646_0, piece646_1, piece646_2].flatten := by
  rw [piece646_0_eq, piece646_1_eq, piece646_2_eq]
  rfl
#print axioms section646_eq
end InitE.BackendStages.BytePieces
