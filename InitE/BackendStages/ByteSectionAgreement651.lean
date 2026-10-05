import InitE.BackendStages.BytesData651
import InitE.BackendStages.BytePiecesData651
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section651_eq : ByteData.bytes651 = [piece651_0, piece651_1].flatten := by
  rw [piece651_0_eq, piece651_1_eq]
  rfl
#print axioms section651_eq
end InitE.BackendStages.BytePieces
