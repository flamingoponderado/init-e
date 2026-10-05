import InitE.BackendStages.BytesData387
import InitE.BackendStages.BytePiecesData387
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section387_eq : ByteData.bytes387 = [piece387_0].flatten := by
  rw [piece387_0_eq]
  rfl
#print axioms section387_eq
end InitE.BackendStages.BytePieces
