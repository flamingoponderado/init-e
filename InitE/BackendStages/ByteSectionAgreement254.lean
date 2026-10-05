import InitE.BackendStages.BytesData254
import InitE.BackendStages.BytePiecesData254
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section254_eq : ByteData.bytes254 = [piece254_0].flatten := by
  rw [piece254_0_eq]
  rfl
#print axioms section254_eq
end InitE.BackendStages.BytePieces
