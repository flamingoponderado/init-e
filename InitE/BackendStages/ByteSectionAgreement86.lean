import InitE.BackendStages.BytesData86
import InitE.BackendStages.BytePiecesData86
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section86_eq : ByteData.bytes86 = [piece86_0].flatten := by
  rw [piece86_0_eq]
  rfl
#print axioms section86_eq
end InitE.BackendStages.BytePieces
