import InitE.BackendStages.BytesData306
import InitE.BackendStages.BytePiecesData306
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section306_eq : ByteData.bytes306 = [piece306_0, piece306_1].flatten := by
  rw [piece306_0_eq, piece306_1_eq]
  rfl
#print axioms section306_eq
end InitE.BackendStages.BytePieces
