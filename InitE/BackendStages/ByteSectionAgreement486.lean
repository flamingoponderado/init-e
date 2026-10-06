import InitE.BackendStages.BytesData486
import InitE.BackendStages.BytePiecesData486
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section486_eq : ByteData.bytes486 = [piece486_0].flatten := by
  rw [piece486_0_eq]
  rfl
#print axioms section486_eq
end InitE.BackendStages.BytePieces
