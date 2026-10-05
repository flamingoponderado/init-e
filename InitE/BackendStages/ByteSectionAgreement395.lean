import InitE.BackendStages.BytesData395
import InitE.BackendStages.BytePiecesData395
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section395_eq : ByteData.bytes395 = [piece395_0].flatten := by
  rw [piece395_0_eq]
  rfl
#print axioms section395_eq
end InitE.BackendStages.BytePieces
