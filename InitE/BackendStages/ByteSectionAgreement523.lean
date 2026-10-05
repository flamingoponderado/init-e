import InitE.BackendStages.BytesData523
import InitE.BackendStages.BytePiecesData523
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section523_eq : ByteData.bytes523 = [piece523_0].flatten := by
  rw [piece523_0_eq]
  rfl
#print axioms section523_eq
end InitE.BackendStages.BytePieces
