import InitE.BackendStages.BytesData525
import InitE.BackendStages.BytePiecesData525
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section525_eq : ByteData.bytes525 = [piece525_0].flatten := by
  rw [piece525_0_eq]
  rfl
#print axioms section525_eq
end InitE.BackendStages.BytePieces
