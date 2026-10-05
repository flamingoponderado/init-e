import InitE.BackendStages.BytesData312
import InitE.BackendStages.BytePiecesData312
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section312_eq : ByteData.bytes312 = [piece312_0].flatten := by
  rw [piece312_0_eq]
  rfl
#print axioms section312_eq
end InitE.BackendStages.BytePieces
