import InitE.BackendStages.BytesData721
import InitE.BackendStages.BytePiecesData721
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section721_eq : ByteData.bytes721 = [piece721_0].flatten := by
  rw [piece721_0_eq]
  rfl
#print axioms section721_eq
end InitE.BackendStages.BytePieces
