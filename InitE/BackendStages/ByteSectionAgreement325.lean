import InitE.BackendStages.BytesData325
import InitE.BackendStages.BytePiecesData325
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section325_eq : ByteData.bytes325 = [piece325_0].flatten := by
  rw [piece325_0_eq]
  rfl
#print axioms section325_eq
end InitE.BackendStages.BytePieces
