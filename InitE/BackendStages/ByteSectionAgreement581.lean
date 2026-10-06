import InitE.BackendStages.BytesData581
import InitE.BackendStages.BytePiecesData581
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section581_eq : ByteData.bytes581 = [piece581_0].flatten := by
  rw [piece581_0_eq]
  rfl
#print axioms section581_eq
end InitE.BackendStages.BytePieces
