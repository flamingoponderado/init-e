import InitE.BackendStages.BytesData551
import InitE.BackendStages.BytePiecesData551
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section551_eq : ByteData.bytes551 = [piece551_0].flatten := by
  rw [piece551_0_eq]
  rfl
#print axioms section551_eq
end InitE.BackendStages.BytePieces
