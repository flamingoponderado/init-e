import InitE.BackendStages.BytesData399
import InitE.BackendStages.BytePiecesData399
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section399_eq : ByteData.bytes399 = [piece399_0].flatten := by
  rw [piece399_0_eq]
  rfl
#print axioms section399_eq
end InitE.BackendStages.BytePieces
