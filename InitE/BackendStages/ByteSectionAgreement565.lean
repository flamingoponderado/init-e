import InitE.BackendStages.BytesData565
import InitE.BackendStages.BytePiecesData565
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section565_eq : ByteData.bytes565 = [piece565_0].flatten := by
  rw [piece565_0_eq]
  rfl
#print axioms section565_eq
end InitE.BackendStages.BytePieces
