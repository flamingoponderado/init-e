import InitE.BackendStages.BytesData480
import InitE.BackendStages.BytePiecesData480
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section480_eq : ByteData.bytes480 = [piece480_0].flatten := by
  rw [piece480_0_eq]
  rfl
#print axioms section480_eq
end InitE.BackendStages.BytePieces
