import InitE.BackendStages.BytesData205
import InitE.BackendStages.BytePiecesData205
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section205_eq : ByteData.bytes205 = [piece205_0].flatten := by
  rw [piece205_0_eq]
  rfl
#print axioms section205_eq
end InitE.BackendStages.BytePieces
