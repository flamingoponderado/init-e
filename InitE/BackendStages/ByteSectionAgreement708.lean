import InitE.BackendStages.BytesData708
import InitE.BackendStages.BytePiecesData708
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section708_eq : ByteData.bytes708 = [piece708_0].flatten := by
  rw [piece708_0_eq]
  rfl
#print axioms section708_eq
end InitE.BackendStages.BytePieces
