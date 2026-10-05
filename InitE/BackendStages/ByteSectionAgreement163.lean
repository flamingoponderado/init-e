import InitE.BackendStages.BytesData163
import InitE.BackendStages.BytePiecesData163
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section163_eq : ByteData.bytes163 = [piece163_0].flatten := by
  rw [piece163_0_eq]
  rfl
#print axioms section163_eq
end InitE.BackendStages.BytePieces
