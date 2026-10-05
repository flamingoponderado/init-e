import InitE.BackendStages.BytesData420
import InitE.BackendStages.BytePiecesData420
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section420_eq : ByteData.bytes420 = [piece420_0].flatten := by
  rw [piece420_0_eq]
  rfl
#print axioms section420_eq
end InitE.BackendStages.BytePieces
