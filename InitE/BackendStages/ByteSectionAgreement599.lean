import InitE.BackendStages.BytesData599
import InitE.BackendStages.BytePiecesData599
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section599_eq : ByteData.bytes599 = [piece599_0].flatten := by
  rw [piece599_0_eq]
  rfl
#print axioms section599_eq
end InitE.BackendStages.BytePieces
