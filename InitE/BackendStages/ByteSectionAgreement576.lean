import InitE.BackendStages.BytesData576
import InitE.BackendStages.BytePiecesData576
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section576_eq : ByteData.bytes576 = [piece576_0].flatten := by
  rw [piece576_0_eq]
  rfl
#print axioms section576_eq
end InitE.BackendStages.BytePieces
