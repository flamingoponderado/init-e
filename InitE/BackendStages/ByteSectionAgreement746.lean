import InitE.BackendStages.BytesData746
import InitE.BackendStages.BytePiecesData746
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section746_eq : ByteData.bytes746 = [piece746_0, piece746_1].flatten := by
  rw [piece746_0_eq, piece746_1_eq]
  rfl
#print axioms section746_eq
end InitE.BackendStages.BytePieces
