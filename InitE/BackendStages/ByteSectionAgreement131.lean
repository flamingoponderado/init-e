import InitE.BackendStages.BytesData131
import InitE.BackendStages.BytePiecesData131
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section131_eq : ByteData.bytes131 = [piece131_0].flatten := by
  rw [piece131_0_eq]
  rfl
#print axioms section131_eq
end InitE.BackendStages.BytePieces
