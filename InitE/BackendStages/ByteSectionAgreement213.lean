import InitE.BackendStages.BytesData213
import InitE.BackendStages.BytePiecesData213
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section213_eq : ByteData.bytes213 = [piece213_0].flatten := by
  rw [piece213_0_eq]
  rfl
#print axioms section213_eq
end InitE.BackendStages.BytePieces
