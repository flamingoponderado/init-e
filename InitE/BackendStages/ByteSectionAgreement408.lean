import InitE.BackendStages.BytesData408
import InitE.BackendStages.BytePiecesData408
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section408_eq : ByteData.bytes408 = [piece408_0].flatten := by
  rw [piece408_0_eq]
  rfl
#print axioms section408_eq
end InitE.BackendStages.BytePieces
