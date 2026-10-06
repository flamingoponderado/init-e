import InitE.BackendStages.BytesData234
import InitE.BackendStages.BytePiecesData234
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section234_eq : ByteData.bytes234 = [piece234_0].flatten := by
  rw [piece234_0_eq]
  rfl
#print axioms section234_eq
end InitE.BackendStages.BytePieces
