import InitE.BackendStages.BytesData494
import InitE.BackendStages.BytePiecesData494
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section494_eq : ByteData.bytes494 = [piece494_0, piece494_1].flatten := by
  rw [piece494_0_eq, piece494_1_eq]
  rfl
#print axioms section494_eq
end InitE.BackendStages.BytePieces
