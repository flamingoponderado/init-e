import InitE.BackendStages.BytesData356
import InitE.BackendStages.BytePiecesData356
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section356_eq : ByteData.bytes356 = [piece356_0].flatten := by
  rw [piece356_0_eq]
  rfl
#print axioms section356_eq
end InitE.BackendStages.BytePieces
