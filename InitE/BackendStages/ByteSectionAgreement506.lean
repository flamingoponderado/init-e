import InitE.BackendStages.BytesData506
import InitE.BackendStages.BytePiecesData506
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section506_eq : ByteData.bytes506 = [piece506_0].flatten := by
  rw [piece506_0_eq]
  rfl
#print axioms section506_eq
end InitE.BackendStages.BytePieces
