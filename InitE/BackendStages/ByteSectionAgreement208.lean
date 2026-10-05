import InitE.BackendStages.BytesData208
import InitE.BackendStages.BytePiecesData208
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section208_eq : ByteData.bytes208 = [piece208_0].flatten := by
  rw [piece208_0_eq]
  rfl
#print axioms section208_eq
end InitE.BackendStages.BytePieces
