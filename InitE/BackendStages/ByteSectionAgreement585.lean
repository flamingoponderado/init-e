import InitE.BackendStages.BytesData585
import InitE.BackendStages.BytePiecesData585
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section585_eq : ByteData.bytes585 = [piece585_0].flatten := by
  rw [piece585_0_eq]
  rfl
#print axioms section585_eq
end InitE.BackendStages.BytePieces
