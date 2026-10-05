import InitE.BackendStages.BytesData381
import InitE.BackendStages.BytePiecesData381
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section381_eq : ByteData.bytes381 = [piece381_0].flatten := by
  rw [piece381_0_eq]
  rfl
#print axioms section381_eq
end InitE.BackendStages.BytePieces
