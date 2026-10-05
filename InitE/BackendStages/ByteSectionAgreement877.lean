import InitE.BackendStages.BytesData877
import InitE.BackendStages.BytePiecesData877
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section877_eq : ByteData.bytes877 = [piece877_0].flatten := by
  rw [piece877_0_eq]
  rfl
#print axioms section877_eq
end InitE.BackendStages.BytePieces
