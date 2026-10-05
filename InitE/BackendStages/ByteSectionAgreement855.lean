import InitE.BackendStages.BytesData855
import InitE.BackendStages.BytePiecesData855
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section855_eq : ByteData.bytes855 = [piece855_0].flatten := by
  rw [piece855_0_eq]
  rfl
#print axioms section855_eq
end InitE.BackendStages.BytePieces
