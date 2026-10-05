import InitE.BackendStages.BytesData5
import InitE.BackendStages.BytePiecesData5
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section5_eq : ByteData.bytes5 = [piece5_0].flatten := by
  rw [piece5_0_eq]
  rfl
#print axioms section5_eq
end InitE.BackendStages.BytePieces
