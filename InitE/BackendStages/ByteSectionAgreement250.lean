import InitE.BackendStages.BytesData250
import InitE.BackendStages.BytePiecesData250
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section250_eq : ByteData.bytes250 = [piece250_0, piece250_1].flatten := by
  rw [piece250_0_eq, piece250_1_eq]
  rfl
#print axioms section250_eq
end InitE.BackendStages.BytePieces
