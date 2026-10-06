import InitE.BackendStages.BytesData755
import InitE.BackendStages.BytePiecesData755
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section755_eq : ByteData.bytes755 = [piece755_0].flatten := by
  rw [piece755_0_eq]
  rfl
#print axioms section755_eq
end InitE.BackendStages.BytePieces
