import InitE.BackendStages.BytesData485
import InitE.BackendStages.BytePiecesData485
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section485_eq : ByteData.bytes485 = [piece485_0].flatten := by
  rw [piece485_0_eq]
  rfl
#print axioms section485_eq
end InitE.BackendStages.BytePieces
