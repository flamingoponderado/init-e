import InitE.BackendStages.BytesData335
import InitE.BackendStages.BytePiecesData335
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section335_eq : ByteData.bytes335 = [piece335_0, piece335_1].flatten := by
  rw [piece335_0_eq, piece335_1_eq]
  rfl
#print axioms section335_eq
end InitE.BackendStages.BytePieces
