import InitE.BackendStages.BytesData160
import InitE.BackendStages.BytePiecesData160
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section160_eq : ByteData.bytes160 = [piece160_0].flatten := by
  rw [piece160_0_eq]
  rfl
#print axioms section160_eq
end InitE.BackendStages.BytePieces
