import InitE.BackendStages.BytesData770
import InitE.BackendStages.BytePiecesData770
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section770_eq : ByteData.bytes770 = [piece770_0].flatten := by
  rw [piece770_0_eq]
  rfl
#print axioms section770_eq
end InitE.BackendStages.BytePieces
