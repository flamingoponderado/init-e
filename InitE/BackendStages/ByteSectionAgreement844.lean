import InitE.BackendStages.BytesData844
import InitE.BackendStages.BytePiecesData844
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section844_eq : ByteData.bytes844 = [piece844_0].flatten := by
  rw [piece844_0_eq]
  rfl
#print axioms section844_eq
end InitE.BackendStages.BytePieces
