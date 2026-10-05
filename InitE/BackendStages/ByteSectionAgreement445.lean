import InitE.BackendStages.BytesData445
import InitE.BackendStages.BytePiecesData445
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section445_eq : ByteData.bytes445 = [piece445_0].flatten := by
  rw [piece445_0_eq]
  rfl
#print axioms section445_eq
end InitE.BackendStages.BytePieces
