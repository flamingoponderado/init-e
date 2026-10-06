import InitE.BackendStages.BytesData613
import InitE.BackendStages.BytePiecesData613
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section613_eq : ByteData.bytes613 = [piece613_0].flatten := by
  rw [piece613_0_eq]
  rfl
#print axioms section613_eq
end InitE.BackendStages.BytePieces
