import InitE.BackendStages.BytesData723
import InitE.BackendStages.BytePiecesData723
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section723_eq : ByteData.bytes723 = [piece723_0].flatten := by
  rw [piece723_0_eq]
  rfl
#print axioms section723_eq
end InitE.BackendStages.BytePieces
