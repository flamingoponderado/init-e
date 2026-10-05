import InitE.BackendStages.BytesData545
import InitE.BackendStages.BytePiecesData545
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section545_eq : ByteData.bytes545 = [piece545_0].flatten := by
  rw [piece545_0_eq]
  rfl
#print axioms section545_eq
end InitE.BackendStages.BytePieces
