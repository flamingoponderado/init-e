import InitE.BackendStages.BytesData502
import InitE.BackendStages.BytePiecesData502
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section502_eq : ByteData.bytes502 = [piece502_0].flatten := by
  rw [piece502_0_eq]
  rfl
#print axioms section502_eq
end InitE.BackendStages.BytePieces
