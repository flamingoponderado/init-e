import InitE.BackendStages.BytesData680
import InitE.BackendStages.BytePiecesData680
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section680_eq : ByteData.bytes680 = [piece680_0].flatten := by
  rw [piece680_0_eq]
  rfl
#print axioms section680_eq
end InitE.BackendStages.BytePieces
