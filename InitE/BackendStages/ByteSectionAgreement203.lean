import InitE.BackendStages.BytesData203
import InitE.BackendStages.BytePiecesData203
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section203_eq : ByteData.bytes203 = [piece203_0].flatten := by
  rw [piece203_0_eq]
  rfl
#print axioms section203_eq
end InitE.BackendStages.BytePieces
