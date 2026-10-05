import InitE.BackendStages.BytesData741
import InitE.BackendStages.BytePiecesData741
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section741_eq : ByteData.bytes741 = [piece741_0].flatten := by
  rw [piece741_0_eq]
  rfl
#print axioms section741_eq
end InitE.BackendStages.BytePieces
