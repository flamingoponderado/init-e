import InitE.BackendStages.BytesData206
import InitE.BackendStages.BytePiecesData206
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section206_eq : ByteData.bytes206 = [piece206_0].flatten := by
  rw [piece206_0_eq]
  rfl
#print axioms section206_eq
end InitE.BackendStages.BytePieces
