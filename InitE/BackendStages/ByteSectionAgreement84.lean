import InitE.BackendStages.BytesData84
import InitE.BackendStages.BytePiecesData84
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section84_eq : ByteData.bytes84 = [piece84_0].flatten := by
  rw [piece84_0_eq]
  rfl
#print axioms section84_eq
end InitE.BackendStages.BytePieces
