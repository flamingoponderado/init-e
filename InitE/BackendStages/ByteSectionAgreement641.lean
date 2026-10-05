import InitE.BackendStages.BytesData641
import InitE.BackendStages.BytePiecesData641
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section641_eq : ByteData.bytes641 = [piece641_0].flatten := by
  rw [piece641_0_eq]
  rfl
#print axioms section641_eq
end InitE.BackendStages.BytePieces
