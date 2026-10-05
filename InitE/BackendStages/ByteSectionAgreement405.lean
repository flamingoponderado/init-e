import InitE.BackendStages.BytesData405
import InitE.BackendStages.BytePiecesData405
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section405_eq : ByteData.bytes405 = [piece405_0].flatten := by
  rw [piece405_0_eq]
  rfl
#print axioms section405_eq
end InitE.BackendStages.BytePieces
