import InitE.BackendStages.BytesData544
import InitE.BackendStages.BytePiecesData544
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section544_eq : ByteData.bytes544 = [piece544_0].flatten := by
  rw [piece544_0_eq]
  rfl
#print axioms section544_eq
end InitE.BackendStages.BytePieces
