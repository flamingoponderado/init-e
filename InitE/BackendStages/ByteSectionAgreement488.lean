import InitE.BackendStages.BytesData488
import InitE.BackendStages.BytePiecesData488
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section488_eq : ByteData.bytes488 = [piece488_0].flatten := by
  rw [piece488_0_eq]
  rfl
#print axioms section488_eq
end InitE.BackendStages.BytePieces
