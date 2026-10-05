import InitE.BackendStages.BytesData296
import InitE.BackendStages.BytePiecesData296
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section296_eq : ByteData.bytes296 = [piece296_0].flatten := by
  rw [piece296_0_eq]
  rfl
#print axioms section296_eq
end InitE.BackendStages.BytePieces
