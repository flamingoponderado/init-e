import InitE.BackendStages.BytesData190
import InitE.BackendStages.BytePiecesData190
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section190_eq : ByteData.bytes190 = [piece190_0].flatten := by
  rw [piece190_0_eq]
  rfl
#print axioms section190_eq
end InitE.BackendStages.BytePieces
