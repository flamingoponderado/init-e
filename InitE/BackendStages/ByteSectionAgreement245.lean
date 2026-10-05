import InitE.BackendStages.BytesData245
import InitE.BackendStages.BytePiecesData245
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section245_eq : ByteData.bytes245 = [piece245_0].flatten := by
  rw [piece245_0_eq]
  rfl
#print axioms section245_eq
end InitE.BackendStages.BytePieces
