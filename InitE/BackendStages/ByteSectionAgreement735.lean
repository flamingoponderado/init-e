import InitE.BackendStages.BytesData735
import InitE.BackendStages.BytePiecesData735
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section735_eq : ByteData.bytes735 = [piece735_0].flatten := by
  rw [piece735_0_eq]
  rfl
#print axioms section735_eq
end InitE.BackendStages.BytePieces
