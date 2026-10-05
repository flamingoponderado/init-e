import InitE.BackendStages.BytesData636
import InitE.BackendStages.BytePiecesData636
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section636_eq : ByteData.bytes636 = [piece636_0].flatten := by
  rw [piece636_0_eq]
  rfl
#print axioms section636_eq
end InitE.BackendStages.BytePieces
