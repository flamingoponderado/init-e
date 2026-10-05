import InitE.BackendStages.BytesData183
import InitE.BackendStages.BytePiecesData183
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section183_eq : ByteData.bytes183 = [piece183_0].flatten := by
  rw [piece183_0_eq]
  rfl
#print axioms section183_eq
end InitE.BackendStages.BytePieces
