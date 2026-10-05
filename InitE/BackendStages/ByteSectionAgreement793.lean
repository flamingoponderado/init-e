import InitE.BackendStages.BytesData793
import InitE.BackendStages.BytePiecesData793
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section793_eq : ByteData.bytes793 = [piece793_0].flatten := by
  rw [piece793_0_eq]
  rfl
#print axioms section793_eq
end InitE.BackendStages.BytePieces
