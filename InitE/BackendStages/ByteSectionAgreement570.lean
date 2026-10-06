import InitE.BackendStages.BytesData570
import InitE.BackendStages.BytePiecesData570
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section570_eq : ByteData.bytes570 = [piece570_0].flatten := by
  rw [piece570_0_eq]
  rfl
#print axioms section570_eq
end InitE.BackendStages.BytePieces
