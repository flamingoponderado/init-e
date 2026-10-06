import InitE.BackendStages.BytesData562
import InitE.BackendStages.BytePiecesData562
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section562_eq : ByteData.bytes562 = [piece562_0].flatten := by
  rw [piece562_0_eq]
  rfl
#print axioms section562_eq
end InitE.BackendStages.BytePieces
