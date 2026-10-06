import InitE.BackendStages.BytesData695
import InitE.BackendStages.BytePiecesData695
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section695_eq : ByteData.bytes695 = [piece695_0].flatten := by
  rw [piece695_0_eq]
  rfl
#print axioms section695_eq
end InitE.BackendStages.BytePieces
