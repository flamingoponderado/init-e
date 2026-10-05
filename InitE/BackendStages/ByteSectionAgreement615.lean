import InitE.BackendStages.BytesData615
import InitE.BackendStages.BytePiecesData615
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section615_eq : ByteData.bytes615 = [piece615_0].flatten := by
  rw [piece615_0_eq]
  rfl
#print axioms section615_eq
end InitE.BackendStages.BytePieces
