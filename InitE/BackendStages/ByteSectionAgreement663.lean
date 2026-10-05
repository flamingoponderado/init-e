import InitE.BackendStages.BytesData663
import InitE.BackendStages.BytePiecesData663
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section663_eq : ByteData.bytes663 = [piece663_0].flatten := by
  rw [piece663_0_eq]
  rfl
#print axioms section663_eq
end InitE.BackendStages.BytePieces
