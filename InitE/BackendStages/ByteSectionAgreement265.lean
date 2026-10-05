import InitE.BackendStages.BytesData265
import InitE.BackendStages.BytePiecesData265
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section265_eq : ByteData.bytes265 = [piece265_0].flatten := by
  rw [piece265_0_eq]
  rfl
#print axioms section265_eq
end InitE.BackendStages.BytePieces
