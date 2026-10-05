import InitE.BackendStages.BytesData835
import InitE.BackendStages.BytePiecesData835
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section835_eq : ByteData.bytes835 = [piece835_0].flatten := by
  rw [piece835_0_eq]
  rfl
#print axioms section835_eq
end InitE.BackendStages.BytePieces
