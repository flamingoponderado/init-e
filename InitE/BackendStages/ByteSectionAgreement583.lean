import InitE.BackendStages.BytesData583
import InitE.BackendStages.BytePiecesData583
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section583_eq : ByteData.bytes583 = [piece583_0].flatten := by
  rw [piece583_0_eq]
  rfl
#print axioms section583_eq
end InitE.BackendStages.BytePieces
