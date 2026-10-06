import InitE.BackendStages.BytesData360
import InitE.BackendStages.BytePiecesData360
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section360_eq : ByteData.bytes360 = [piece360_0].flatten := by
  rw [piece360_0_eq]
  rfl
#print axioms section360_eq
end InitE.BackendStages.BytePieces
