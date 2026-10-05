import InitE.BackendStages.BytesData643
import InitE.BackendStages.BytePiecesData643
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section643_eq : ByteData.bytes643 = [piece643_0].flatten := by
  rw [piece643_0_eq]
  rfl
#print axioms section643_eq
end InitE.BackendStages.BytePieces
