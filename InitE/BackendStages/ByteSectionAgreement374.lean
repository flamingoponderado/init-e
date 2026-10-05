import InitE.BackendStages.BytesData374
import InitE.BackendStages.BytePiecesData374
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section374_eq : ByteData.bytes374 = [piece374_0].flatten := by
  rw [piece374_0_eq]
  rfl
#print axioms section374_eq
end InitE.BackendStages.BytePieces
