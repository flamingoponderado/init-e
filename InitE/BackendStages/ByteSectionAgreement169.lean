import InitE.BackendStages.BytesData169
import InitE.BackendStages.BytePiecesData169
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section169_eq : ByteData.bytes169 = [piece169_0].flatten := by
  rw [piece169_0_eq]
  rfl
#print axioms section169_eq
end InitE.BackendStages.BytePieces
