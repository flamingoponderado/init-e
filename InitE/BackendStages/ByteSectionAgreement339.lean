import InitE.BackendStages.BytesData339
import InitE.BackendStages.BytePiecesData339
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section339_eq : ByteData.bytes339 = [piece339_0].flatten := by
  rw [piece339_0_eq]
  rfl
#print axioms section339_eq
end InitE.BackendStages.BytePieces
