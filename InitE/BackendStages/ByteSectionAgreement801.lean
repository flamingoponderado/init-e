import InitE.BackendStages.BytesData801
import InitE.BackendStages.BytePiecesData801
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section801_eq : ByteData.bytes801 = [piece801_0].flatten := by
  rw [piece801_0_eq]
  rfl
#print axioms section801_eq
end InitE.BackendStages.BytePieces
