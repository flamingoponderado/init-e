import InitE.BackendStages.BytesData73
import InitE.BackendStages.BytePiecesData73
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section73_eq : ByteData.bytes73 = [piece73_0].flatten := by
  rw [piece73_0_eq]
  rfl
#print axioms section73_eq
end InitE.BackendStages.BytePieces
