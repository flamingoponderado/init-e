import InitE.BackendStages.BytesData406
import InitE.BackendStages.BytePiecesData406
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section406_eq : ByteData.bytes406 = [piece406_0].flatten := by
  rw [piece406_0_eq]
  rfl
#print axioms section406_eq
end InitE.BackendStages.BytePieces
