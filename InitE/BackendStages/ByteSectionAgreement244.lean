import InitE.BackendStages.BytesData244
import InitE.BackendStages.BytePiecesData244
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section244_eq : ByteData.bytes244 = [piece244_0].flatten := by
  rw [piece244_0_eq]
  rfl
#print axioms section244_eq
end InitE.BackendStages.BytePieces
