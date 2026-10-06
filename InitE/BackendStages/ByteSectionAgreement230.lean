import InitE.BackendStages.BytesData230
import InitE.BackendStages.BytePiecesData230
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section230_eq : ByteData.bytes230 = [piece230_0].flatten := by
  rw [piece230_0_eq]
  rfl
#print axioms section230_eq
end InitE.BackendStages.BytePieces
