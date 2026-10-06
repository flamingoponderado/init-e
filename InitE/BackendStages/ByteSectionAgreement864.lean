import InitE.BackendStages.BytesData864
import InitE.BackendStages.BytePiecesData864
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section864_eq : ByteData.bytes864 = [piece864_0].flatten := by
  rw [piece864_0_eq]
  rfl
#print axioms section864_eq
end InitE.BackendStages.BytePieces
