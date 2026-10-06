import InitE.BackendStages.BytesData389
import InitE.BackendStages.BytePiecesData389
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section389_eq : ByteData.bytes389 = [piece389_0].flatten := by
  rw [piece389_0_eq]
  rfl
#print axioms section389_eq
end InitE.BackendStages.BytePieces
