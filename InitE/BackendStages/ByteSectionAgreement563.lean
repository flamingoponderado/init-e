import InitE.BackendStages.BytesData563
import InitE.BackendStages.BytePiecesData563
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section563_eq : ByteData.bytes563 = [piece563_0, piece563_1].flatten := by
  rw [piece563_0_eq, piece563_1_eq]
  rfl
#print axioms section563_eq
end InitE.BackendStages.BytePieces
