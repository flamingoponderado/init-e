import InitE.BackendStages.BytesData775
import InitE.BackendStages.BytePiecesData775
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section775_eq : ByteData.bytes775 = [piece775_0].flatten := by
  rw [piece775_0_eq]
  rfl
#print axioms section775_eq
end InitE.BackendStages.BytePieces
