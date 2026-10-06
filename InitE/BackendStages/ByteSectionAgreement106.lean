import InitE.BackendStages.BytesData106
import InitE.BackendStages.BytePiecesData106
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section106_eq : ByteData.bytes106 = [piece106_0].flatten := by
  rw [piece106_0_eq]
  rfl
#print axioms section106_eq
end InitE.BackendStages.BytePieces
