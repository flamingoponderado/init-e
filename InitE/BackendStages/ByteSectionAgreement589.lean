import InitE.BackendStages.BytesData589
import InitE.BackendStages.BytePiecesData589
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section589_eq : ByteData.bytes589 = [piece589_0].flatten := by
  rw [piece589_0_eq]
  rfl
#print axioms section589_eq
end InitE.BackendStages.BytePieces
