import InitE.BackendStages.BytesData432
import InitE.BackendStages.BytePiecesData432
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section432_eq : ByteData.bytes432 = [piece432_0].flatten := by
  rw [piece432_0_eq]
  rfl
#print axioms section432_eq
end InitE.BackendStages.BytePieces
