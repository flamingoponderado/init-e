import InitE.BackendStages.BytesData886
import InitE.BackendStages.BytePiecesData886
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section886_eq : ByteData.bytes886 = [piece886_0].flatten := by
  rw [piece886_0_eq]
  rfl
#print axioms section886_eq
end InitE.BackendStages.BytePieces
