import InitE.BackendStages.BytesData179
import InitE.BackendStages.BytePiecesData179
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section179_eq : ByteData.bytes179 = [piece179_0].flatten := by
  rw [piece179_0_eq]
  rfl
#print axioms section179_eq
end InitE.BackendStages.BytePieces
