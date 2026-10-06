import InitE.BackendStages.BytesData107
import InitE.BackendStages.BytePiecesData107
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section107_eq : ByteData.bytes107 = [piece107_0].flatten := by
  rw [piece107_0_eq]
  rfl
#print axioms section107_eq
end InitE.BackendStages.BytePieces
