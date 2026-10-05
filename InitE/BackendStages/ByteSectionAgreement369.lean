import InitE.BackendStages.BytesData369
import InitE.BackendStages.BytePiecesData369
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section369_eq : ByteData.bytes369 = [piece369_0, piece369_1].flatten := by
  rw [piece369_0_eq, piece369_1_eq]
  rfl
#print axioms section369_eq
end InitE.BackendStages.BytePieces
