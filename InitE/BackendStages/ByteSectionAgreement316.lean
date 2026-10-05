import InitE.BackendStages.BytesData316
import InitE.BackendStages.BytePiecesData316
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section316_eq : ByteData.bytes316 = [piece316_0].flatten := by
  rw [piece316_0_eq]
  rfl
#print axioms section316_eq
end InitE.BackendStages.BytePieces
