import InitE.BackendStages.BytesData824
import InitE.BackendStages.BytePiecesData824
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section824_eq : ByteData.bytes824 = [piece824_0].flatten := by
  rw [piece824_0_eq]
  rfl
#print axioms section824_eq
end InitE.BackendStages.BytePieces
