import InitE.BackendStages.BytesData346
import InitE.BackendStages.BytePiecesData346
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section346_eq : ByteData.bytes346 = [piece346_0].flatten := by
  rw [piece346_0_eq]
  rfl
#print axioms section346_eq
end InitE.BackendStages.BytePieces
