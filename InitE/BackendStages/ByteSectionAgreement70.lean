import InitE.BackendStages.BytesData70
import InitE.BackendStages.BytePiecesData70
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section70_eq : ByteData.bytes70 = [piece70_0].flatten := by
  rw [piece70_0_eq]
  rfl
#print axioms section70_eq
end InitE.BackendStages.BytePieces
