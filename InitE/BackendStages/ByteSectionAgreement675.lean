import InitE.BackendStages.BytesData675
import InitE.BackendStages.BytePiecesData675
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section675_eq : ByteData.bytes675 = [piece675_0, piece675_1].flatten := by
  rw [piece675_0_eq, piece675_1_eq]
  rfl
#print axioms section675_eq
end InitE.BackendStages.BytePieces
