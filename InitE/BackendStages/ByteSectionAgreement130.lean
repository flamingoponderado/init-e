import InitE.BackendStages.BytesData130
import InitE.BackendStages.BytePiecesData130
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section130_eq : ByteData.bytes130 = [piece130_0].flatten := by
  rw [piece130_0_eq]
  rfl
#print axioms section130_eq
end InitE.BackendStages.BytePieces
