import InitE.BackendStages.BytesData617
import InitE.BackendStages.BytePiecesData617
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section617_eq : ByteData.bytes617 = [piece617_0].flatten := by
  rw [piece617_0_eq]
  rfl
#print axioms section617_eq
end InitE.BackendStages.BytePieces
