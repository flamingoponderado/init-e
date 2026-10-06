import InitE.BackendStages.BytesData448
import InitE.BackendStages.BytePiecesData448
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section448_eq : ByteData.bytes448 = [piece448_0].flatten := by
  rw [piece448_0_eq]
  rfl
#print axioms section448_eq
end InitE.BackendStages.BytePieces
