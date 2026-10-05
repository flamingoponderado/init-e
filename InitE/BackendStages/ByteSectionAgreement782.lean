import InitE.BackendStages.BytesData782
import InitE.BackendStages.BytePiecesData782
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section782_eq : ByteData.bytes782 = [piece782_0, piece782_1, piece782_2].flatten := by
  rw [piece782_0_eq, piece782_1_eq, piece782_2_eq]
  rfl
#print axioms section782_eq
end InitE.BackendStages.BytePieces
