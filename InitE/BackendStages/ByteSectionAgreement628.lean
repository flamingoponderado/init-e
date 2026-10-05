import InitE.BackendStages.BytesData628
import InitE.BackendStages.BytePiecesData628
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section628_eq : ByteData.bytes628 = [piece628_0].flatten := by
  rw [piece628_0_eq]
  rfl
#print axioms section628_eq
end InitE.BackendStages.BytePieces
