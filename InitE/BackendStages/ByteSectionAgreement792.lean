import InitE.BackendStages.BytesData792
import InitE.BackendStages.BytePiecesData792
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section792_eq : ByteData.bytes792 = [piece792_0].flatten := by
  rw [piece792_0_eq]
  rfl
#print axioms section792_eq
end InitE.BackendStages.BytePieces
