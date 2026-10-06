import InitE.BackendStages.BytesData446
import InitE.BackendStages.BytePiecesData446
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section446_eq : ByteData.bytes446 = [piece446_0].flatten := by
  rw [piece446_0_eq]
  rfl
#print axioms section446_eq
end InitE.BackendStages.BytePieces
