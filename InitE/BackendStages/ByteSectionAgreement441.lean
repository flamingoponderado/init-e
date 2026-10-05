import InitE.BackendStages.BytesData441
import InitE.BackendStages.BytePiecesData441
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section441_eq : ByteData.bytes441 = [piece441_0, piece441_1].flatten := by
  rw [piece441_0_eq, piece441_1_eq]
  rfl
#print axioms section441_eq
end InitE.BackendStages.BytePieces
