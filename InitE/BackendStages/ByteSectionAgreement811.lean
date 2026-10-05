import InitE.BackendStages.BytesData811
import InitE.BackendStages.BytePiecesData811
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section811_eq : ByteData.bytes811 = [piece811_0].flatten := by
  rw [piece811_0_eq]
  rfl
#print axioms section811_eq
end InitE.BackendStages.BytePieces
