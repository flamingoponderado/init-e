import InitE.BackendStages.BytesData750
import InitE.BackendStages.BytePiecesData750
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section750_eq : ByteData.bytes750 = [piece750_0].flatten := by
  rw [piece750_0_eq]
  rfl
#print axioms section750_eq
end InitE.BackendStages.BytePieces
