import InitE.BackendStages.BytesData754
import InitE.BackendStages.BytePiecesData754
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section754_eq : ByteData.bytes754 = [piece754_0].flatten := by
  rw [piece754_0_eq]
  rfl
#print axioms section754_eq
end InitE.BackendStages.BytePieces
