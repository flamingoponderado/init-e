import InitE.BackendStages.BytesData786
import InitE.BackendStages.BytePiecesData786
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section786_eq : ByteData.bytes786 = [piece786_0].flatten := by
  rw [piece786_0_eq]
  rfl
#print axioms section786_eq
end InitE.BackendStages.BytePieces
