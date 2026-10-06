import InitE.BackendStages.BytesData315
import InitE.BackendStages.BytePiecesData315
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section315_eq : ByteData.bytes315 = [piece315_0].flatten := by
  rw [piece315_0_eq]
  rfl
#print axioms section315_eq
end InitE.BackendStages.BytePieces
