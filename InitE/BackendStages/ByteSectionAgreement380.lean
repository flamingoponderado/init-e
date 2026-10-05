import InitE.BackendStages.BytesData380
import InitE.BackendStages.BytePiecesData380
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section380_eq : ByteData.bytes380 = [piece380_0, piece380_1].flatten := by
  rw [piece380_0_eq, piece380_1_eq]
  rfl
#print axioms section380_eq
end InitE.BackendStages.BytePieces
