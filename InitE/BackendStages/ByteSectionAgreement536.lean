import InitE.BackendStages.BytesData536
import InitE.BackendStages.BytePiecesData536
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section536_eq : ByteData.bytes536 = [piece536_0, piece536_1].flatten := by
  rw [piece536_0_eq, piece536_1_eq]
  rfl
#print axioms section536_eq
end InitE.BackendStages.BytePieces
