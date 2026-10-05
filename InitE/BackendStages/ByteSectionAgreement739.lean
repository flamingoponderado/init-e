import InitE.BackendStages.BytesData739
import InitE.BackendStages.BytePiecesData739
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section739_eq : ByteData.bytes739 = [piece739_0].flatten := by
  rw [piece739_0_eq]
  rfl
#print axioms section739_eq
end InitE.BackendStages.BytePieces
