import InitE.BackendStages.BytesData125
import InitE.BackendStages.BytePiecesData125
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section125_eq : ByteData.bytes125 = [piece125_0].flatten := by
  rw [piece125_0_eq]
  rfl
#print axioms section125_eq
end InitE.BackendStages.BytePieces
