import InitE.BackendStages.BytesData195
import InitE.BackendStages.BytePiecesData195
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section195_eq : ByteData.bytes195 = [piece195_0].flatten := by
  rw [piece195_0_eq]
  rfl
#print axioms section195_eq
end InitE.BackendStages.BytePieces
