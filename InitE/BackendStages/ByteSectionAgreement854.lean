import InitE.BackendStages.BytesData854
import InitE.BackendStages.BytePiecesData854
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section854_eq : ByteData.bytes854 = [piece854_0].flatten := by
  rw [piece854_0_eq]
  rfl
#print axioms section854_eq
end InitE.BackendStages.BytePieces
