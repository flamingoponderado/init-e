import InitE.BackendStages.BytesData302
import InitE.BackendStages.BytePiecesData302
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section302_eq : ByteData.bytes302 = [piece302_0].flatten := by
  rw [piece302_0_eq]
  rfl
#print axioms section302_eq
end InitE.BackendStages.BytePieces
