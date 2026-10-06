import InitE.BackendStages.BytesData872
import InitE.BackendStages.BytePiecesData872
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section872_eq : ByteData.bytes872 = [piece872_0, piece872_1].flatten := by
  rw [piece872_0_eq, piece872_1_eq]
  rfl
#print axioms section872_eq
end InitE.BackendStages.BytePieces
