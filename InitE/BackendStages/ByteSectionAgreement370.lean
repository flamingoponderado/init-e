import InitE.BackendStages.BytesData370
import InitE.BackendStages.BytePiecesData370
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.BackendStages.BytePieces
theorem section370_eq : ByteData.bytes370 = [piece370_0].flatten := by
  rw [piece370_0_eq]
  rfl
#print axioms section370_eq
end InitE.BackendStages.BytePieces
