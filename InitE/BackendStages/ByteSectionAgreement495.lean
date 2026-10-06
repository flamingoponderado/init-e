import InitE.BackendStages.BytesData495
import InitE.BackendStages.BytePiecesData495
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section495_eq : ByteData.bytes495 = [piece495_0].flatten := by
  rw [piece495_0_eq]
  rfl
#print axioms section495_eq
end InitE.BackendStages.BytePieces
