import InitE.BackendStages.BytesData423
import InitE.BackendStages.BytePiecesData423
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section423_eq : ByteData.bytes423 = [piece423_0].flatten := by
  rw [piece423_0_eq]
  rfl
#print axioms section423_eq
end InitE.BackendStages.BytePieces
