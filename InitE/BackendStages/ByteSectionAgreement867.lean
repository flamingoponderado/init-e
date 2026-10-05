import InitE.BackendStages.BytesData867
import InitE.BackendStages.BytePiecesData867
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section867_eq : ByteData.bytes867 = [piece867_0].flatten := by
  rw [piece867_0_eq]
  rfl
#print axioms section867_eq
end InitE.BackendStages.BytePieces
