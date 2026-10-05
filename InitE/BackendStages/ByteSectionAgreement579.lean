import InitE.BackendStages.BytesData579
import InitE.BackendStages.BytePiecesData579
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section579_eq : ByteData.bytes579 = [piece579_0].flatten := by
  rw [piece579_0_eq]
  rfl
#print axioms section579_eq
end InitE.BackendStages.BytePieces
